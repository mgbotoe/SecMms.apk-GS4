.class public Lcom/android/mms/accessory/WatchRelay;
.super Landroid/content/BroadcastReceiver;
.source "WatchRelay.java"


# static fields
.field private static final MAX_ALERT_TYPE_SIZE:I = 0x5

.field public static final MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static MMS_SMS_PROJECTION:[Ljava/lang/String; = null

.field public static final NOTIFICATION_BR_PERMISSIONS:Ljava/lang/String; = "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

.field public static final NOTIFICATION_CLEAR_ALL:Ljava/lang/String; = "com.android.sms.action.CLEAR_ALL"

.field public static final NOTIFICATION_CLEAR_MESSAGE:Ljava/lang/String; = "com.android.sms.action.SWEEP_NOTIFICATION"

.field public static final NOTIFICATION_ID:Ljava/lang/String; = "NOTIFICATION_ID"

.field public static final NOTIFICATION_MSG_PHONENUM:Ljava/lang/String; = "NOTIFICATION_MSG_PHONENUM"

.field public static final NOTIFICATION_PACKAGE_NAME:Ljava/lang/String; = "NOTIFICATION_PACKAGE_NAME"

.field public static final NOTIFICATION_PROVIDER_ALERT_NOTIFICATION_ITEM:Ljava/lang/String; = "com.samsung.accessory.intent.action.ALERT_NOTIFICATION_ITEM"

.field public static final NOTIFICATION_PROVIDER_CHECK_NOTI_ITEM:Ljava/lang/String; = "com.samsung.accessory.intent.action.CHECK_NOTIFICATION_ITEM"

.field public static final NOTIFICATION_PROVIDER_ITEM_ID:Ljava/lang/String; = "NOTIFICATION_ITEM_ID"

.field public static final NOTIFICATION_PROVIDER_ITEM_URI:Ljava/lang/String; = "NOTIFICATION_ITEM_URI"

.field public static final NOTIFICATION_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "NOTIFICATION_PACKAGE_NAME"

.field public static final NOTIFICATION_TEXT_MESSAGE:Ljava/lang/String; = "NOTIFICATION_TEXT_MESSAGE"

.field public static final NOTIFICATION_TYPE_DISTINGUISH:Ljava/lang/String; = "NOTIFICATION_TYPE_DISTINGUISH"

.field public static final READ_MSG_TYPE_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Mms/WatchRelay"

.field public static final UPDATE_READ_STATUS_FROM_NOTI_PROVIDER:Ljava/lang/String; = "com.samsung.accessory.intent.action.UPDATE_NOTIFICATION_ITEM"

.field public static final URI:[Ljava/lang/String; = null

.field public static final URI_DDM:Ljava/lang/String; = "directDisplayMessage"

.field private static sUpdateAllUnreadMessages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "wap-push-messages"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "directDisplayMessage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/accessory/WatchRelay;->URI:[Ljava/lang/String;

    .line 61
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/accessory/WatchRelay;->MMS_SMS_PROJECTION:[Ljava/lang/String;

    .line 68
    sput-boolean v3, Lcom/android/mms/accessory/WatchRelay;->sUpdateAllUnreadMessages:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static converStringIdsToIntArray(Ljava/lang/String;)[I
    .locals 4
    .parameter "ids"

    .prologue
    .line 591
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, msgId:[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [I

    .line 594
    .local v2, msgIdArray:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 595
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    :cond_0
    return-object v2
.end method

.method private static extractMsgIdByType(Ljava/util/ArrayList;)[I
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, msgArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [I

    .line 278
    .local v3, msgIdArray:[I
    const/4 v1, 0x0

    .line 279
    .local v1, index:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 280
    .local v4, temp:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-virtual {v4}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v3, v1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .line 283
    .end local v4           #temp:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_0
    return-object v3
.end method

.method private static extractMsgInfoByType(Ljava/util/SortedSet;Ljava/util/SortedSet;[Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    .local p1, alertNotificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    .local p2, UserAry:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 289
    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 290
    .local v1, temp:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    invoke-virtual {v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isCb()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isMms()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isSms()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 295
    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isWap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #temp:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 303
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 304
    .restart local v1       #temp:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 307
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #temp:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_5
    return-void
.end method

.method public static getUnreadMsgFromThread(Landroid/content/Context;J[I)[Landroid/net/Uri;
    .locals 21
    .parameter "context"
    .parameter "threadId"
    .parameter "msgTotalCount"

    .prologue
    .line 513
    const-string v3, "com.samsung.accessory.sanotiprovider"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 514
    const-string v3, "Mms/WatchRelay"

    const-string v5, "getUnreadMsgFromThread() SA noti provider is disabled"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const/16 v19, 0x0

    .line 571
    :cond_0
    :goto_0
    return-object v19

    .line 518
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v10

    .line 520
    .local v10, conv:Lcom/android/mms/data/Conversation;
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 521
    .local v4, uri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 522
    .local v12, cursor:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 523
    .local v19, uris:[Landroid/net/Uri;
    const/16 v17, 0x0

    .line 524
    .local v17, smsCount:I
    const/4 v14, 0x0

    .line 525
    .local v14, mmsCount:I
    const/16 v20, 0x0

    .line 526
    .local v20, wpmCount:I
    const/4 v9, 0x0

    .line 529
    .local v9, cmasCount:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/mms/accessory/WatchRelay;->MMS_SMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "read=0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 531
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 532
    .local v11, count:I
    if-nez v11, :cond_2

    .line 533
    const/16 v19, 0x0

    .line 565
    .end local v19           #uris:[Landroid/net/Uri;
    const/4 v3, 0x0

    aput v14, p3, v3

    .line 566
    const/4 v3, 0x1

    aput v17, p3, v3

    .line 567
    const/4 v3, 0x2

    aput v20, p3, v3

    .line 568
    const/4 v3, 0x3

    aput v9, p3, v3

    .line 570
    if-eqz v12, :cond_0

    .line 571
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 535
    .restart local v19       #uris:[Landroid/net/Uri;
    :cond_2
    :try_start_1
    const-string v3, "Mms/WatchRelay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUnreadMsgIdFromThread msg Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v0, v3, [Landroid/net/Uri;

    move-object/from16 v19, v0

    .line 540
    const/4 v13, 0x0

    .line 541
    .local v13, i:I
    :cond_3
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 542
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 543
    .local v18, type:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 545
    .local v15, msgId:J
    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 546
    sget-object v3, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v19, v13

    .line 547
    add-int/lit8 v9, v9, 0x1

    .line 560
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 548
    :cond_4
    const-string v3, "sms"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 549
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v19, v13

    .line 550
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 551
    :cond_5
    const-string v3, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 552
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v19, v13

    .line 553
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 554
    :cond_6
    const-string v3, "wpm"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 555
    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "wap-push-messages"

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-wide v0, v15

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v19, v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 565
    .end local v15           #msgId:J
    .end local v18           #type:Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    aput v14, p3, v3

    .line 566
    const/4 v3, 0x1

    aput v17, p3, v3

    .line 567
    const/4 v3, 0x2

    aput v20, p3, v3

    .line 568
    const/4 v3, 0x3

    aput v9, p3, v3

    .line 570
    if-eqz v12, :cond_0

    .line 571
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 565
    .end local v11           #count:I
    .end local v13           #i:I
    :catchall_0
    move-exception v3

    const/4 v5, 0x0

    aput v14, p3, v5

    .line 566
    const/4 v5, 0x1

    aput v17, p3, v5

    .line 567
    const/4 v5, 0x2

    aput v20, p3, v5

    .line 568
    const/4 v5, 0x3

    aput v9, p3, v5

    .line 570
    if-eqz v12, :cond_8

    .line 571
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3
.end method

.method private static makeReadMsgIntent([ILjava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .parameter "msgIdArray"
    .parameter "uri"
    .parameter "msgType"

    .prologue
    .line 401
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 402
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.samsung.accessory.intent.action.CHECK_NOTIFICATION_ITEM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v1, "NOTIFICATION_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v1, "NOTIFICATION_ITEM_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 408
    const-string v1, "NOTIFICATION_ITEM_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    invoke-static {v0, p2}, Lcom/android/mms/accessory/WatchRelay;->setNotificationId(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static makeReceivedMsgIntent(I[ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .parameter "msgType"
    .parameter "msgIdArray"
    .parameter "contactName"
    .parameter "uri"
    .parameter "isNew"

    .prologue
    .line 414
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 415
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.samsung.accessory.intent.action.ALERT_NOTIFICATION_ITEM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v1, "NOTIFICATION_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v1, "NOTIFICATION_ITEM_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 419
    const-string v1, "NOTIFICATION_ITEM_URI"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    packed-switch p0, :pswitch_data_0

    .line 432
    :goto_0
    const-string v1, "NOTIFICATION_TYPE_DISTINGUISH"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    invoke-static {v0, p0}, Lcom/android/mms/accessory/WatchRelay;->setNotificationId(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 426
    :pswitch_0
    const-string v1, "NOTIFICATION_MSG_PHONENUM"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 421
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static makeReceivedMsgIntentForDDM([ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "msgIdArray"
    .parameter "contactName"
    .parameter "body"

    .prologue
    .line 439
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 440
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.samsung.accessory.intent.action.ALERT_NOTIFICATION_ITEM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v1, "NOTIFICATION_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v1, "NOTIFICATION_ITEM_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 444
    const-string v1, "NOTIFICATION_ITEM_URI"

    sget-object v2, Lcom/android/mms/accessory/WatchRelay;->URI:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v1, "NOTIFICATION_TEXT_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v1, "NOTIFICATION_MSG_PHONENUM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string v1, "NOTIFICATION_ID"

    const/16 v2, 0x378

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    return-object v0
.end method

.method private static makeUri(I)Ljava/lang/String;
    .locals 2
    .parameter "msgType"

    .prologue
    .line 455
    sget-object v0, Lcom/android/mms/accessory/WatchRelay;->URI:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_0

    .line 456
    const-string v0, "Mms/WatchRelay"

    const-string v1, "makeUri msgType is not matched"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v0, 0x0

    .line 460
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mms/accessory/WatchRelay;->URI:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static markAsRead(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 86
    if-nez p1, :cond_1

    .line 87
    const-string v7, "Mms/WatchRelay"

    const-string v8, "markAsRead() intetn is null"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string v7, "NOTIFICATION_PACKAGE_NAME"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, packageName:Ljava/lang/String;
    const-string v7, "NOTIFICATION_ITEM_ID"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    check-cast v2, [I

    .line 93
    .local v2, msgIdArray:[I
    const-string v7, "NOTIFICATION_ITEM_URI"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, readMsgUri:Ljava/lang/String;
    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    if-eqz v6, :cond_2

    const-string v7, "com.android.mms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 97
    :cond_2
    const-string v7, "Mms/WatchRelay"

    const-string v8, "UPDATE_READ_STATUS_FROM_NOTI_PROVIDER extra is packageName msgIdArray readMsgUri"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_3
    sget-object v7, Lcom/android/mms/accessory/WatchRelay;->URI:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 102
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 103
    .local v4, nm:Landroid/app/NotificationManager;
    const/16 v7, 0x378

    invoke-virtual {v4, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 107
    .end local v4           #nm:Landroid/app/NotificationManager;
    :cond_4
    const/4 v3, 0x1

    .line 109
    .local v3, msgType:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v7, 0x4

    if-ge v0, v7, :cond_5

    .line 110
    sget-object v7, Lcom/android/mms/accessory/WatchRelay;->URI:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 111
    move v3, v0

    .line 112
    const-string v7, "Mms/WatchRelay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "msgType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_5
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v7, v2

    if-ge v1, v7, :cond_0

    .line 118
    packed-switch v3, :pswitch_data_0

    .line 117
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 109
    .end local v1           #j:I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    .restart local v1       #j:I
    :pswitch_0
    aget v7, v2, v1

    int-to-long v7, v7

    invoke-static {p0, v7, v8}, Lcom/android/mms/ui/MessageUtils;->markSmsAsRead(Landroid/content/Context;J)V

    goto :goto_3

    .line 124
    :pswitch_1
    aget v7, v2, v1

    int-to-long v7, v7

    invoke-static {p0, v7, v8}, Lcom/android/mms/ui/MessageUtils;->markWpmAsRead(Landroid/content/Context;J)V

    goto :goto_3

    .line 127
    :pswitch_2
    aget v7, v2, v1

    int-to-long v7, v7

    invoke-static {p0, v7, v8}, Lcom/android/mms/ui/MessageUtils;->markMmsAsRead(Landroid/content/Context;J)V

    goto :goto_3

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sendClearAllMsgIntent(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 498
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 499
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.samsung.accessory.intent.action.CHECK_NOTIFICATION_ITEM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string v1, "NOTIFICATION_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string v1, "NOTIFICATION_ID"

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string v1, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 505
    const-string v1, "NOTIFICATION_ID"

    const/16 v2, 0x41c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 506
    const-string v1, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 508
    const-string v1, "NOTIFICATION_ID"

    const/16 v2, 0x378

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    const-string v1, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public static sendReadMsgIntent(Landroid/content/Context;II)V
    .locals 6
    .parameter "context"
    .parameter "msgType"
    .parameter "id"

    .prologue
    .line 341
    const-string v3, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 342
    const-string v3, "Mms/WatchRelay"

    const-string v4, "sendReadMsgIntent() SA noti provider is disabled"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_0
    return-void

    .line 346
    :cond_0
    const-string v3, "Mms/WatchRelay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendReadMsgIntent() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 349
    .local v1, msgIdArray:[I
    const/4 v3, 0x0

    aput p2, v1, v3

    .line 351
    invoke-static {p1}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, uri:Ljava/lang/String;
    invoke-static {v1, v2, p1}, Lcom/android/mms/accessory/WatchRelay;->makeReadMsgIntent([ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 354
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendReadMsgIntent(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 6
    .parameter "context"
    .parameter "msgType"
    .parameter "messageUri"

    .prologue
    .line 310
    const-string v3, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 311
    const-string v3, "Mms/WatchRelay"

    const-string v4, "sendReadMsgIntent() SA noti provider is disabled"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 315
    :cond_0
    const-string v3, "Mms/WatchRelay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendReadMsgIntent() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 318
    .local v1, msgIdArray:[I
    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    .line 320
    invoke-static {p1}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, uri:Ljava/lang/String;
    invoke-static {v1, v2, p1}, Lcom/android/mms/accessory/WatchRelay;->makeReadMsgIntent([ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 323
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendReadMsgIntent(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "msgType"
    .parameter "ids"

    .prologue
    .line 577
    const-string v2, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v2}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 578
    const-string v2, "Mms/WatchRelay"

    const-string v3, "sendReadMsgIntent() SA noti provider is disabled"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :goto_0
    return-void

    .line 582
    :cond_0
    const-string v2, "Mms/WatchRelay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReadMsgIntent() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-static {p1}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, uri:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/accessory/WatchRelay;->converStringIdsToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-static {v2, v1, p1}, Lcom/android/mms/accessory/WatchRelay;->makeReadMsgIntent([ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 587
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static sendReadMsgIntent(Landroid/content/Context;I[I)V
    .locals 5
    .parameter "context"
    .parameter "msgType"
    .parameter "idArray"

    .prologue
    .line 327
    const-string v2, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v2}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    const-string v2, "Mms/WatchRelay"

    const-string v3, "sendReadMsgIntent() SA noti provider is disabled"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :goto_0
    return-void

    .line 332
    :cond_0
    const-string v2, "Mms/WatchRelay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReadMsgIntent() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {p1}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, uri:Ljava/lang/String;
    invoke-static {p2, v1, p1}, Lcom/android/mms/accessory/WatchRelay;->makeReadMsgIntent([ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 337
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendReadMsgIntent(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 486
    const-string v2, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v2}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    const-string v2, "Mms/WatchRelay"

    const-string v3, "sendReadMsgIntent() SA noti provider is disabled"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :goto_0
    return-void

    .line 491
    :cond_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 492
    .local v0, msgIdArray:[I
    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/accessory/WatchRelay;->getUnreadMsgFromThread(Landroid/content/Context;J[I)[Landroid/net/Uri;

    move-result-object v1

    .line 494
    .local v1, uris:[Landroid/net/Uri;
    invoke-static {p0, v1, v0}, Lcom/android/mms/accessory/WatchRelay;->sendReadNotificationProvider(Landroid/content/Context;[Landroid/net/Uri;[I)V

    goto :goto_0
.end method

.method public static sendReadNotificationProvider(Landroid/content/Context;[Landroid/net/Uri;[I)V
    .locals 12
    .parameter "context"
    .parameter "uris"
    .parameter "msgTotalCount"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x4

    .line 358
    const-string v7, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v7}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 359
    const-string v7, "Mms/WatchRelay"

    const-string v8, "sendReadNotificationProvider() SA noti provider is disabled"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    if-eqz p1, :cond_2

    array-length v7, p1

    if-gtz v7, :cond_3

    .line 364
    :cond_2
    const-string v7, "Mms/WatchRelay"

    const-string v8, "sendReadNotificationProvider() uri is null"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_3
    const/4 v3, 0x0

    .line 370
    .local v3, msgId:I
    new-array v2, v10, [I

    .line 371
    .local v2, msgCount:[I
    new-array v4, v10, [[I

    .line 373
    .local v4, msgIdArray:[[I
    const/4 v5, 0x0

    .line 375
    .local v5, msgUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .local v6, t:I
    :goto_1
    if-ge v6, v10, :cond_4

    .line 376
    aget v7, p2, v6

    new-array v7, v7, [I

    aput-object v7, v4, v6

    .line 377
    aput v11, v2, v6

    .line 375
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 380
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v7, p1

    if-ge v0, v7, :cond_7

    .line 381
    aget-object v7, p1, v0

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 382
    aget-object v7, p1, v0

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, p1, v0

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 384
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3
    if-ge v1, v10, :cond_5

    .line 385
    sget-object v7, Lcom/android/mms/accessory/WatchRelay;->URI:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 386
    aget-object v7, v4, v1

    aget v8, v2, v1

    aput v3, v7, v8

    .line 387
    aget v7, v2, v1

    add-int/lit8 v7, v7, 0x1

    aput v7, v2, v1

    .line 380
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 384
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 393
    .end local v1           #j:I
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_4
    if-ge v1, v10, :cond_0

    .line 394
    aget v7, v2, v1

    if-lez v7, :cond_8

    .line 395
    aget-object v7, v4, v1

    invoke-static {p0, v1, v7}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;I[I)V

    .line 393
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public static sendReceivedMsgIntent(Landroid/content/Context;IJLjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "msgType"
    .parameter "id"
    .parameter "contactName"

    .prologue
    const/4 v6, 0x1

    .line 136
    const-string v3, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    const-string v3, "Mms/WatchRelay"

    const-string v4, "sendReceivedMsgIntent() SA noti provider is disabled"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v3, "Mms/WatchRelay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendReceivedMsgIntent() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-array v1, v6, [I

    .line 144
    .local v1, msgIdArray:[I
    const/4 v3, 0x0

    long-to-int v4, p2

    aput v4, v1, v3

    .line 146
    invoke-static {p1}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, uri:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    const-string v3, "CBmessages"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 149
    const v3, 0x7f0c00fb

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 157
    :cond_1
    :goto_1
    invoke-static {p1, v1, p4, v2, v6}, Lcom/android/mms/accessory/WatchRelay;->makeReceivedMsgIntent(I[ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 159
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    const v3, 0x7f0c013b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 161
    const-string v3, "NOTIFICATION_MSG_PHONENUM"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    :cond_2
    const-string v3, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const-string v3, "Pushmessage"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    const v3, 0x7f0c0161

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    .line 152
    :cond_4
    const-string v3, "#CMAS#CMASALL"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    const v3, 0x7f0c01b9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_1
.end method

.method public static sendReceivedMsgIntent(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "msgType"
    .parameter "messageUri"
    .parameter "contactName"
    .parameter "body"

    .prologue
    const/4 v6, 0x1

    .line 183
    const-string v3, "Mms/WatchRelay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendReceivedMsgIntent() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v3, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    const-string v3, "Mms/WatchRelay"

    const-string v4, "sendReceivedMsgIntent() SA noti provider is disabled"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 190
    :cond_0
    new-array v1, v6, [I

    .line 191
    .local v1, msgIdArray:[I
    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    .line 193
    invoke-static {p1}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, uri:Ljava/lang/String;
    invoke-static {p1, v1, p3, v2, v6}, Lcom/android/mms/accessory/WatchRelay;->makeReceivedMsgIntent(I[ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 196
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendReceivedMsgIntent(Landroid/content/Context;I[ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "msgType"
    .parameter "idArray"
    .parameter "contactName"
    .parameter "body"

    .prologue
    .line 200
    const-string v2, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v2}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    const-string v2, "Mms/WatchRelay"

    const-string v3, "sendReceivedMsgIntent() SA noti provider is disabled"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v2, "Mms/WatchRelay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReceivedMsgIntent() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {p1}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, uri:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p1, p2, p3, v1, v2}, Lcom/android/mms/accessory/WatchRelay;->makeReceivedMsgIntent(I[ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 210
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendReceivedMsgIntent(Landroid/content/Context;Ljava/util/SortedSet;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V
    .locals 11
    .parameter "context"
    .parameter
    .parameter
    .parameter "mostRecentNotification"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    .local p2, alertNotificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    const-string v8, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v8}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 216
    const-string v8, "Mms/WatchRelay"

    const-string v9, "sendReceivedMsgIntent() SA noti provider is disabled"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string v8, "Mms/WatchRelay"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendReceivedMsgIntent() msg type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v8, "Mms/WatchRelay"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendReceivedMsgIntent() sUpdateAllUnreadMessages : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/mms/accessory/WatchRelay;->sUpdateAllUnreadMessages:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I

    move-result v5

    .line 225
    .local v5, mostRecentType:I
    sget-boolean v8, Lcom/android/mms/accessory/WatchRelay;->sUpdateAllUnreadMessages:Z

    if-nez v8, :cond_2

    .line 227
    iget-wide v8, p3, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgId:J

    invoke-virtual {p3, p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v5, v8, v9, v10}, Lcom/android/mms/accessory/WatchRelay;->sendReceivedMsgIntent(Landroid/content/Context;IJLjava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_2
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/mms/accessory/WatchRelay;->sUpdateAllUnreadMessages:Z

    .line 237
    const/4 v8, 0x5

    new-array v0, v8, [Ljava/util/ArrayList;

    .line 238
    .local v0, allMsgInfo:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v8, 0x5

    if-ge v1, v8, :cond_3

    .line 239
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    aput-object v8, v0, v1

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    :cond_3
    invoke-static {p1, p2, v0}, Lcom/android/mms/accessory/WatchRelay;->extractMsgInfoByType(Ljava/util/SortedSet;Ljava/util/SortedSet;[Ljava/util/ArrayList;)V

    .line 244
    const/4 v1, 0x0

    :goto_2
    const/4 v8, 0x5

    if-ge v1, v8, :cond_9

    .line 246
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_4

    const/4 v8, 0x3

    if-ne v1, v8, :cond_5

    .line 244
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 250
    :cond_5
    invoke-static {v1}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, uri:Ljava/lang/String;
    if-ne v5, v1, :cond_7

    const/4 v4, 0x1

    .line 252
    .local v4, isNew:Z
    :goto_4
    const/4 v3, 0x0

    .line 254
    .local v3, intent:Landroid/content/Intent;
    const/4 v8, 0x4

    if-eq v1, v8, :cond_6

    const/4 v8, 0x2

    if-ne v1, v8, :cond_8

    .line 256
    :cond_6
    aget-object v8, v0, v1

    invoke-static {v8}, Lcom/android/mms/accessory/WatchRelay;->extractMsgIdByType(Ljava/util/ArrayList;)[I

    move-result-object v9

    aget-object v8, v0, v1

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    invoke-virtual {v8, p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v9, v8, v7, v4}, Lcom/android/mms/accessory/WatchRelay;->makeReceivedMsgIntent(I[ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    .line 261
    :goto_5
    const-string v8, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v3, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_3

    .line 251
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #isNew:Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 258
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #isNew:Z
    :cond_8
    aget-object v8, v0, v1

    invoke-static {v8}, Lcom/android/mms/accessory/WatchRelay;->extractMsgIdByType(Ljava/util/ArrayList;)[I

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v1, v8, v9, v7, v4}, Lcom/android/mms/accessory/WatchRelay;->makeReceivedMsgIntent(I[ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    goto :goto_5

    .line 264
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #isNew:Z
    .end local v7           #uri:Ljava/lang/String;
    :cond_9
    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 265
    .local v6, temp:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    const/4 v8, 0x3

    if-ne v5, v8, :cond_a

    invoke-interface {p2}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_a

    const/4 v4, 0x1

    .line 266
    .restart local v4       #isNew:Z
    :goto_7
    const/4 v3, 0x0

    .line 267
    .restart local v3       #intent:Landroid/content/Intent;
    const/4 v8, 0x3

    invoke-static {v8}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v7

    .line 268
    .restart local v7       #uri:Ljava/lang/String;
    const/4 v8, 0x3

    const/4 v9, 0x3

    aget-object v9, v0, v9

    invoke-static {v9}, Lcom/android/mms/accessory/WatchRelay;->extractMsgIdByType(Ljava/util/ArrayList;)[I

    move-result-object v9

    invoke-virtual {v6, p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10, v7, v4}, Lcom/android/mms/accessory/WatchRelay;->makeReceivedMsgIntent(I[ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    .line 270
    const-string v8, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v3, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6

    .line 265
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #isNew:Z
    .end local v7           #uri:Ljava/lang/String;
    :cond_a
    const/4 v4, 0x0

    goto :goto_7
.end method

.method public static sendReceivedMsgIntentForDDM(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "contactName"
    .parameter "body"

    .prologue
    .line 167
    const-string v2, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v2}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    const-string v2, "Mms/WatchRelay"

    const-string v3, "sendReceivedMsgIntent() SA noti provider is disabled"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v2, "Mms/WatchRelay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReceivedMsgIntentForDDM() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 175
    .local v1, msgIdArray:[I
    const/4 v2, 0x0

    long-to-int v3, p1

    aput v3, v1, v2

    .line 177
    invoke-static {v1, p3, p4}, Lcom/android/mms/accessory/WatchRelay;->makeReceivedMsgIntentForDDM([ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 179
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setNotificationId(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 2
    .parameter "intent"
    .parameter "msgType"

    .prologue
    const/16 v1, 0x7b

    .line 464
    packed-switch p1, :pswitch_data_0

    .line 478
    const-string v0, "NOTIFICATION_ID"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    :goto_0
    return-object p0

    .line 466
    :pswitch_0
    const-string v0, "NOTIFICATION_ID"

    const/16 v1, 0x378

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 469
    :pswitch_1
    const-string v0, "NOTIFICATION_ID"

    const/16 v1, 0x41c

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 472
    :pswitch_2
    const-string v0, "NOTIFICATION_ID"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 475
    :pswitch_3
    const-string v0, "NOTIFICATION_ID"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 72
    const-string v1, "Mms/WatchRelay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.samsung.accessory.intent.action.UPDATE_NOTIFICATION_ITEM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-static {p1, p2}, Lcom/android/mms/accessory/WatchRelay;->markAsRead(Landroid/content/Context;Landroid/content/Intent;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v1, "com.android.sms.action.CLEAR_ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    sput-boolean v4, Lcom/android/mms/accessory/WatchRelay;->sUpdateAllUnreadMessages:Z

    goto :goto_0

    .line 79
    :cond_2
    const-string v1, "com.android.sms.action.SWEEP_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "NOTIFICATION_PACKAGE_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    sput-boolean v4, Lcom/android/mms/accessory/WatchRelay;->sUpdateAllUnreadMessages:Z

    goto :goto_0
.end method
