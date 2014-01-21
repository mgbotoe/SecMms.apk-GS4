.class public Lcom/android/mms/util/SecurityMailboxUtils;
.super Ljava/lang/Object;
.source "SecurityMailboxUtils.java"


# static fields
.field private static final LOG_HISTORY_URI:Landroid/net/Uri;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "Mms/SecurityMailboxUtils"

    sput-object v0, Lcom/android/mms/util/SecurityMailboxUtils;->TAG:Ljava/lang/String;

    .line 29
    const-string v0, "content://logs/historys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/SecurityMailboxUtils;->LOG_HISTORY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addValuesIfNotNull(Landroid/database/Cursor;Landroid/content/ContentValues;[Ljava/lang/String;)V
    .locals 5
    .parameter "cursor"
    .parameter "cv"
    .parameter "fieldNames"

    .prologue
    .line 470
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 471
    .local v1, field:Ljava/lang/String;
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 472
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    .end local v1           #field:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static getNewThreadIdForDb(J)J
    .locals 30
    .parameter "oldThreadId"

    .prologue
    .line 383
    const-wide/16 v23, 0x0

    .line 392
    .local v23, newThreadId:J
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    .line 394
    .local v2, context:Landroid/content/Context;
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "*"

    aput-object v9, v5, v8

    .line 398
    .local v5, QUERY_PROJECTION:[Ljava/lang/String;
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 402
    .local v7, query_selectionArgs:[Ljava/lang/String;
    const-string v8, "content://mms/threads-search"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 403
    .local v4, sourceDBTableUri:Landroid/net/Uri;
    const-string v6, "_id = ? "

    .line 405
    .local v6, query_selection:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 406
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 409
    .local v29, threadsCursor:Landroid/database/Cursor;
    const/16 v28, 0x0

    .line 411
    .local v28, recipients:Ljava/lang/String;
    if-eqz v29, :cond_2

    :try_start_0
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_2

    .line 412
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    .line 413
    const-string v8, "recipient_ids"

    move-object/from16 v0, v29

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v29

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v28

    .line 419
    if-eqz v29, :cond_0

    .line 421
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_0
    const-string v8, " "

    move-object/from16 v0, v28

    invoke-static {v0, v8}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 430
    .local v17, allRecipientIds:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v8, v0

    new-array v13, v8, [Ljava/lang/String;

    .line 431
    .local v13, selectionArgs:[Ljava/lang/String;
    const-string v12, "( _id = ? "

    .line 432
    .local v12, selectionCriteria:Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v17, v9

    aput-object v9, v13, v8

    .line 433
    const/4 v8, 0x0

    const-string v9, ""

    aput-object v9, v17, v8

    .line 435
    const/16 v19, 0x1

    .line 436
    .local v19, count:I
    move-object/from16 v18, v17

    .local v18, arr$:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    aget-object v27, v18, v21

    .line 437
    .local v27, recipientId:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 438
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "OR _id = ? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 439
    aput-object v27, v13, v19

    .line 440
    add-int/lit8 v19, v19, 0x1

    .line 436
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 419
    .end local v12           #selectionCriteria:Ljava/lang/String;
    .end local v13           #selectionArgs:[Ljava/lang/String;
    .end local v17           #allRecipientIds:[Ljava/lang/String;
    .end local v18           #arr$:[Ljava/lang/String;
    .end local v19           #count:I
    .end local v21           #i$:I
    .end local v22           #len$:I
    .end local v27           #recipientId:Ljava/lang/String;
    :cond_2
    if-eqz v29, :cond_3

    .line 421
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide/from16 v25, v23

    .line 465
    .end local v23           #newThreadId:J
    .local v25, newThreadId:J
    :goto_1
    return-wide v25

    .line 419
    .end local v25           #newThreadId:J
    .restart local v23       #newThreadId:J
    :catchall_0
    move-exception v8

    if-eqz v29, :cond_4

    .line 421
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 419
    :cond_4
    throw v8

    .line 443
    .restart local v12       #selectionCriteria:Ljava/lang/String;
    .restart local v13       #selectionArgs:[Ljava/lang/String;
    .restart local v17       #allRecipientIds:[Ljava/lang/String;
    .restart local v18       #arr$:[Ljava/lang/String;
    .restart local v19       #count:I
    .restart local v21       #i$:I
    .restart local v22       #len$:I
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 444
    const-string v8, "content://mms-sms/canonical-addresses"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 445
    const/4 v14, 0x0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-static/range {v8 .. v14}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 449
    .local v15, allAddressRowsCursor:Landroid/database/Cursor;
    if-eqz v15, :cond_7

    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_7

    .line 450
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 451
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 453
    .local v16, allAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .local v20, i:I
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v8

    move/from16 v0, v20

    if-ge v0, v8, :cond_6

    .line 454
    const-string v8, "address"

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 453
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 458
    :cond_6
    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/provider/Telephony$Threads;->getOrCreateSecurityThreadId(Landroid/content/Context;Ljava/util/Set;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v23

    .line 461
    .end local v16           #allAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20           #i:I
    :cond_7
    if-eqz v15, :cond_8

    .line 462
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_8
    move-wide/from16 v25, v23

    .line 465
    .end local v23           #newThreadId:J
    .restart local v25       #newThreadId:J
    goto :goto_1

    .line 461
    .end local v25           #newThreadId:J
    .restart local v23       #newThreadId:J
    :catchall_1
    move-exception v8

    if-eqz v15, :cond_9

    .line 462
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_9
    throw v8
.end method

.method public static isNumberInVIPList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "ctx"
    .parameter "incomingNumber"

    .prologue
    const/4 v3, 0x0

    .line 32
    const-string v0, "content://com.sec.security.mms.providers.viplistprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 33
    .local v2, uri:Landroid/net/Uri;
    move-object v8, p1

    .line 35
    .local v8, number:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 36
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v5, v0

    move-object v0, p0

    move-object v4, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 41
    .local v7, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 42
    .local v9, retVal:Z
    if-eqz v7, :cond_0

    .line 44
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    const/4 v9, 0x1

    .line 49
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_0
    sget-object v0, Lcom/android/mms/util/SecurityMailboxUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNumberInVIPList return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return v9

    .line 47
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static moveConversationFromMMSTable(JJ)Z
    .locals 61
    .parameter "thread_id"
    .parameter "msgId"

    .prologue
    .line 156
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    .line 157
    .local v3, context:Landroid/content/Context;
    const/16 v39, -0x270f

    .line 159
    .local v39, dummyDBValue:I
    move-wide/from16 v59, p0

    .line 161
    .local v59, threadId:J
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "*"

    aput-object v10, v6, v9

    .line 165
    .local v6, QUERY_PROJECTION:[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 168
    .local v8, selectionArgs:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://mms/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 169
    .local v5, sourceDBUri:Landroid/net/Uri;
    const-string v7, "_id = ? "

    .line 170
    .local v7, selection:Ljava/lang/String;
    const-string v9, "content://security_mms/inbox"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v58

    .line 173
    .local v58, targetDBTableUri:Landroid/net/Uri;
    invoke-virtual {v3}, Lcom/android/mms/MmsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 174
    .local v4, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v52

    .line 176
    .local v52, pduRowsCursor:Landroid/database/Cursor;
    if-nez v52, :cond_0

    const/4 v9, 0x0

    .line 379
    :goto_0
    return v9

    .line 177
    :cond_0
    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_12

    .line 178
    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    const-string v9, "_id"

    move-object/from16 v0, v52

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v52

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    .line 183
    .local v53, pdu_id:J
    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->close()V

    .line 185
    invoke-static/range {v59 .. v60}, Lcom/android/mms/util/SecurityMailboxUtils;->getNewThreadIdForDb(J)J

    move-result-wide v44

    .line 187
    .local v44, newThreadId:J
    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v52

    .line 190
    if-nez v52, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    .line 193
    :cond_1
    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v40, v0

    .line 194
    .local v40, fieldNames:[Ljava/lang/String;
    const/16 v37, 0x0

    .local v37, count:I
    const/16 v41, 0x0

    .local v41, index:I
    :goto_1
    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    move/from16 v0, v37

    if-ge v0, v9, :cond_3

    .line 197
    move-object/from16 v0, v52

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    move-object/from16 v0, v52

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "thread_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 199
    move-object/from16 v0, v52

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v40, v41

    .line 200
    add-int/lit8 v41, v41, 0x1

    .line 194
    :cond_2
    add-int/lit8 v37, v37, 0x1

    goto :goto_1

    .line 204
    :cond_3
    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->moveToFirst()Z

    .line 205
    new-instance v51, Landroid/content/ContentValues;

    invoke-direct/range {v51 .. v51}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v51, pduRowItem:Landroid/content/ContentValues;
    const-string v9, "thread_id"

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v51

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 208
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 209
    const-string v9, "reserved"

    const-string v10, "reserved"

    move-object/from16 v0, v52

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v52

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v51

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string v9, "date"

    const-string v10, "date"

    move-object/from16 v0, v52

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v52

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const-wide/16 v19, 0x3e8

    mul-long v15, v15, v19

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v51

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 212
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsPriority()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 213
    const-string v9, "pri"

    const-string v10, "pri"

    move-object/from16 v0, v52

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v52

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v51

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    :cond_5
    move-object/from16 v0, v52

    move-object/from16 v1, v51

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/SecurityMailboxUtils;->addValuesIfNotNull(Landroid/database/Cursor;Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 219
    const-string v9, "locked"

    move-object/from16 v0, v52

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v52

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 220
    .local v46, originalDBValue:I
    const-string v9, "locked"

    const/16 v10, -0x270f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v51

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->close()V

    .line 226
    move-object/from16 v0, v58

    move-object/from16 v1, v51

    invoke-static {v3, v4, v0, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 229
    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, -0x270f

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v14, v9

    .line 233
    .local v14, rowIdSelectionArgs:[Ljava/lang/String;
    const-string v13, "locked = ?"

    .line 235
    .local v13, rowIdSelection:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v12, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "*"

    aput-object v10, v12, v9

    .line 239
    .local v12, Q_PROJECTION:[Ljava/lang/String;
    const-string v9, "content://security_mms/"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 240
    .local v11, sourceTableName:Landroid/net/Uri;
    const/4 v15, 0x0

    move-object v9, v3

    move-object v10, v4

    invoke-static/range {v9 .. v15}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 243
    .local v42, insertedRowIdCursor:Landroid/database/Cursor;
    if-nez v42, :cond_6

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 244
    :cond_6
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->moveToFirst()Z

    .line 246
    const-string v9, "_id"

    move-object/from16 v0, v42

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v42

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 247
    .local v47, partId:I
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    .line 249
    new-instance v18, Landroid/content/ContentValues;

    const/4 v9, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 250
    .local v18, updatedRowValues:Landroid/content/ContentValues;
    const-string v9, "locked"

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v11

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    .line 251
    invoke-static/range {v15 .. v20}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 257
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v9, 0x0

    const-string v10, "*"

    aput-object v10, v22, v9

    .line 261
    .local v22, PART_QUERY_PROJECTION:[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v9, 0x0

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v24, v9

    .line 264
    .local v24, part_selectionArgs:[Ljava/lang/String;
    const-string v9, "content://mms/part"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 265
    .local v21, sourceDBPartTableUri:Landroid/net/Uri;
    const-string v23, "mid = ? "

    .line 266
    .local v23, part_selection:Ljava/lang/String;
    const-string v9, "content://security_mms/part-copy"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v57

    .line 268
    .local v57, targetDBPartTableUri:Landroid/net/Uri;
    const/16 v25, 0x0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-static/range {v19 .. v25}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v48

    .line 271
    .local v48, partRowCursor:Landroid/database/Cursor;
    if-nez v48, :cond_7

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 272
    :cond_7
    invoke-interface/range {v48 .. v48}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_b

    .line 275
    invoke-interface/range {v48 .. v48}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v50, v0

    .line 276
    .local v50, partTableFieldNames:[Ljava/lang/String;
    const/16 v37, 0x0

    const/16 v41, 0x0

    :goto_2
    invoke-interface/range {v48 .. v48}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    move/from16 v0, v37

    if-ge v0, v9, :cond_9

    .line 279
    move-object/from16 v0, v48

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    move-object/from16 v0, v48

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 282
    move-object/from16 v0, v48

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v50, v41

    .line 283
    add-int/lit8 v41, v41, 0x1

    .line 276
    :cond_8
    add-int/lit8 v37, v37, 0x1

    goto :goto_2

    .line 287
    :cond_9
    invoke-interface/range {v48 .. v48}, Landroid/database/Cursor;->moveToFirst()Z

    .line 289
    const/16 v43, 0x0

    .local v43, j:I
    :goto_3
    invoke-interface/range {v48 .. v48}, Landroid/database/Cursor;->getCount()I

    move-result v9

    move/from16 v0, v43

    if-ge v0, v9, :cond_a

    .line 290
    new-instance v49, Landroid/content/ContentValues;

    invoke-direct/range {v49 .. v49}, Landroid/content/ContentValues;-><init>()V

    .line 292
    .local v49, partRowItem:Landroid/content/ContentValues;
    const-string v9, "mid"

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v49

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    invoke-static/range {v48 .. v50}, Lcom/android/mms/util/SecurityMailboxUtils;->addValuesIfNotNull(Landroid/database/Cursor;Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, v57

    move-object/from16 v1, v49

    invoke-static {v3, v4, v0, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 297
    invoke-interface/range {v48 .. v48}, Landroid/database/Cursor;->moveToNext()Z

    .line 289
    add-int/lit8 v43, v43, 0x1

    goto :goto_3

    .line 300
    .end local v49           #partRowItem:Landroid/content/ContentValues;
    :cond_a
    invoke-interface/range {v48 .. v48}, Landroid/database/Cursor;->close()V

    .line 303
    const-string v9, "content://mms/part-copy"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v55

    .line 304
    .local v55, sourceDBPartTableUriNotDelFile:Landroid/net/Uri;
    move-object/from16 v0, v55

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 313
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v9, 0x0

    const-string v10, "*"

    aput-object v10, v28, v9

    .line 316
    .local v28, ADDR_QUERY_PROJECTION:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://mms/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/addr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 317
    .local v27, sourceDBAddrTableUri:Landroid/net/Uri;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://security_mms/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v47

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/addr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v56

    .line 318
    .local v56, targetDBAddrTableUri:Landroid/net/Uri;
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    invoke-static/range {v25 .. v31}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 320
    .local v32, addrRowCursor:Landroid/database/Cursor;
    if-nez v32, :cond_d

    .line 321
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 306
    .end local v27           #sourceDBAddrTableUri:Landroid/net/Uri;
    .end local v28           #ADDR_QUERY_PROJECTION:[Ljava/lang/String;
    .end local v32           #addrRowCursor:Landroid/database/Cursor;
    .end local v43           #j:I
    .end local v50           #partTableFieldNames:[Ljava/lang/String;
    .end local v55           #sourceDBPartTableUriNotDelFile:Landroid/net/Uri;
    .end local v56           #targetDBAddrTableUri:Landroid/net/Uri;
    :cond_b
    if-eqz v48, :cond_c

    invoke-interface/range {v48 .. v48}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 324
    .restart local v27       #sourceDBAddrTableUri:Landroid/net/Uri;
    .restart local v28       #ADDR_QUERY_PROJECTION:[Ljava/lang/String;
    .restart local v32       #addrRowCursor:Landroid/database/Cursor;
    .restart local v43       #j:I
    .restart local v50       #partTableFieldNames:[Ljava/lang/String;
    .restart local v55       #sourceDBPartTableUriNotDelFile:Landroid/net/Uri;
    .restart local v56       #targetDBAddrTableUri:Landroid/net/Uri;
    :cond_d
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getCount()I

    move-result v38

    .line 326
    .local v38, cursorCount:I
    if-lez v38, :cond_11

    .line 329
    :try_start_0
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v36, v0

    .line 330
    .local v36, addrTableFieldNames:[Ljava/lang/String;
    const/16 v37, 0x0

    const/16 v41, 0x0

    :goto_4
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    move/from16 v0, v37

    if-ge v0, v9, :cond_f

    .line 333
    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "msg_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 336
    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v36, v41

    .line 337
    add-int/lit8 v41, v41, 0x1

    .line 330
    :cond_e
    add-int/lit8 v37, v37, 0x1

    goto :goto_4

    .line 341
    :cond_f
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    .line 343
    const/16 v43, 0x0

    :goto_5
    move/from16 v0, v43

    move/from16 v1, v38

    if-ge v0, v1, :cond_10

    .line 344
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 346
    .local v33, addrRowItem:Landroid/content/ContentValues;
    const-string v9, "msg_id"

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v33

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/SecurityMailboxUtils;->addValuesIfNotNull(Landroid/database/Cursor;Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, v56

    move-object/from16 v1, v33

    invoke-static {v3, v4, v0, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 353
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    .line 343
    add-int/lit8 v43, v43, 0x1

    goto :goto_5

    .line 355
    .end local v33           #addrRowItem:Landroid/content/ContentValues;
    :cond_10
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 359
    const-string v34, "msg_id = ?"

    .line 360
    .local v34, addrSelection:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/4 v9, 0x0

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v35, v9

    .line 363
    .local v35, addrSelectionArgs:[Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 371
    invoke-static {v3, v4, v5, v7, v8}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 373
    sget-object v9, Lcom/android/mms/util/SecurityMailboxUtils;->LOG_HISTORY_URI:Landroid/net/Uri;

    const-string v10, "messageid=? AND logtype=?"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "200"

    aput-object v17, v15, v16

    invoke-virtual {v4, v9, v10, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 379
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 365
    .end local v34           #addrSelection:Ljava/lang/String;
    .end local v35           #addrSelectionArgs:[Ljava/lang/String;
    .end local v36           #addrTableFieldNames:[Ljava/lang/String;
    :cond_11
    const/4 v9, 0x0

    .line 368
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    throw v9

    .line 376
    .end local v11           #sourceTableName:Landroid/net/Uri;
    .end local v12           #Q_PROJECTION:[Ljava/lang/String;
    .end local v13           #rowIdSelection:Ljava/lang/String;
    .end local v14           #rowIdSelectionArgs:[Ljava/lang/String;
    .end local v18           #updatedRowValues:Landroid/content/ContentValues;
    .end local v21           #sourceDBPartTableUri:Landroid/net/Uri;
    .end local v22           #PART_QUERY_PROJECTION:[Ljava/lang/String;
    .end local v23           #part_selection:Ljava/lang/String;
    .end local v24           #part_selectionArgs:[Ljava/lang/String;
    .end local v27           #sourceDBAddrTableUri:Landroid/net/Uri;
    .end local v28           #ADDR_QUERY_PROJECTION:[Ljava/lang/String;
    .end local v32           #addrRowCursor:Landroid/database/Cursor;
    .end local v37           #count:I
    .end local v38           #cursorCount:I
    .end local v40           #fieldNames:[Ljava/lang/String;
    .end local v41           #index:I
    .end local v42           #insertedRowIdCursor:Landroid/database/Cursor;
    .end local v43           #j:I
    .end local v44           #newThreadId:J
    .end local v46           #originalDBValue:I
    .end local v47           #partId:I
    .end local v48           #partRowCursor:Landroid/database/Cursor;
    .end local v50           #partTableFieldNames:[Ljava/lang/String;
    .end local v51           #pduRowItem:Landroid/content/ContentValues;
    .end local v53           #pdu_id:J
    .end local v55           #sourceDBPartTableUriNotDelFile:Landroid/net/Uri;
    .end local v56           #targetDBAddrTableUri:Landroid/net/Uri;
    .end local v57           #targetDBPartTableUri:Landroid/net/Uri;
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public static moveConversationFromSMSTable(J)Z
    .locals 21
    .parameter "msgId"

    .prologue
    .line 72
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    .line 74
    .local v3, context:Landroid/content/Context;
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v16, "*"

    aput-object v16, v6, v9

    .line 78
    .local v6, QUERY_PROJECTION:[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v8, v9

    .line 81
    .local v8, selectionArgs:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "content://sms/"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p0

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 83
    .local v5, sourceDBUri:Landroid/net/Uri;
    const-string v7, "_id = ? "

    .line 84
    .local v7, selection:Ljava/lang/String;
    const-string v9, "content://security_sms/inbox"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 85
    .local v13, targetDBTableUri:Landroid/net/Uri;
    invoke-virtual {v3}, Lcom/android/mms/MmsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 86
    .local v4, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 90
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 92
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v12, rowItem:Landroid/content/ContentValues;
    const-string v9, "thread_id"

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/mms/util/SecurityMailboxUtils;->getNewThreadIdForDb(J)J

    move-result-wide v14

    .line 98
    .local v14, threadId:J
    const-string v9, "thread_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    const-string v9, "address"

    const-string v16, "address"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v9, "person"

    const-string v16, "person"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v9, "date"

    const-string v16, "date"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    const-string v9, "protocol"

    const-string v16, "protocol"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v9, "read"

    const-string v16, "read"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v9, "status"

    const-string v16, "status"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v9, "type"

    const-string v16, "type"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v9, "reply_path_present"

    const-string v16, "reply_path_present"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v9, "subject"

    const-string v16, "subject"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v9, "body"

    const-string v16, "body"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v9, "service_center"

    const-string v16, "service_center"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v9, "locked"

    const-string v16, "locked"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    const-string v9, "error_code"

    const-string v16, "error_code"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v9, "seen"

    const-string v16, "seen"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 117
    const-string v9, "reserved"

    const-string v16, "reserved"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 120
    const-string v9, "pri"

    const-string v16, "pri"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    :cond_1
    invoke-static {v3, v4, v13, v12}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 125
    invoke-static {v3, v4, v5, v7, v8}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    sget-object v9, Lcom/android/mms/util/SecurityMailboxUtils;->LOG_HISTORY_URI:Landroid/net/Uri;

    const-string v16, "messageid=? AND logtype=?"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string v19, "300"

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v9, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v12           #rowItem:Landroid/content/ContentValues;
    .end local v14           #threadId:J
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_2
    const/4 v9, 0x1

    return v9

    .line 129
    :catch_0
    move-exception v11

    .line 130
    .local v11, e:Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    .end local v11           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v9
.end method

.method public static sendMoveCompleteBroadCast(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 478
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.mms.SecurityTelephony.Threads.action.READ_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/mms/util/SecurityMailboxUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 481
    return-void
.end method

.method public static showPasswordEntryScreen(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.security.mms.PASSACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, pwdIntent:Landroid/content/Intent;
    const/high16 v1, 0x3400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method
