.class Lcom/android/mms/data/Conversation$Cache;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Conversation$Cache$SortLastestThreads;
    }
.end annotation


# static fields
.field private static final DUMP:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms/Conversation.Cache"

.field private static sInstance:Lcom/android/mms/data/Conversation$Cache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/data/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1403
    new-instance v0, Lcom/android/mms/data/Conversation$Cache;

    invoke-direct {v0}, Lcom/android/mms/data/Conversation$Cache;-><init>()V

    sput-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1411
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1412
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    .line 1413
    return-void
.end method

.method static conversationInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "findString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1491
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1492
    .local v6, returnSearch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Conversation;>;"
    sget-object v8, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v8

    .line 1493
    :try_start_0
    sget-object v7, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v7, v7, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1495
    .local v2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mms/data/Conversation;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Conversation;

    .line 1496
    .local v1, c:Lcom/android/mms/data/Conversation;
    #getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v1}, Lcom/android/mms/data/Conversation;->access$500(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1497
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1507
    .end local v1           #c:Lcom/android/mms/data/Conversation;
    .end local v2           #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mms/data/Conversation;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1498
    .restart local v1       #c:Lcom/android/mms/data/Conversation;
    .restart local v2       #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mms/data/Conversation;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChoseongSearch()Z

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    invoke-static {p0}, Lcom/android/mms/util/HangulUtils;->haveKoreanConsonants(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1499
    #getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v1}, Lcom/android/mms/data/Conversation;->access$500(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1500
    .local v0, address:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1501
    .local v4, inputText:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1503
    .local v5, matchNameText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1504
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1507
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #c:Lcom/android/mms/data/Conversation;
    .end local v4           #inputText:Ljava/lang/String;
    .end local v5           #matchNameText:Ljava/lang/String;
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1509
    return-object v6
.end method

.method static conversationInfoCursor(Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 18
    .parameter "findString"

    .prologue
    .line 1523
    new-instance v11, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/mms/data/Conversation;->access$600()[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1525
    .local v11, threadCursor:Landroid/database/MatrixCursor;
    sget-object v13, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v13

    .line 1526
    :try_start_0
    sget-object v12, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v12, v12, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 1528
    .local v3, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mms/data/Conversation;>;"
    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1531
    .local v9, objConversations:[Ljava/lang/Object;
    :try_start_1
    new-instance v12, Lcom/android/mms/data/Conversation$Cache$SortLastestThreads;

    invoke-direct {v12}, Lcom/android/mms/data/Conversation$Cache$SortLastestThreads;-><init>()V

    invoke-static {v9, v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1541
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    :try_start_2
    array-length v12, v9

    if-ge v5, v12, :cond_5

    .line 1542
    aget-object v2, v9, v5

    check-cast v2, Lcom/android/mms/data/Conversation;

    .line 1544
    .local v2, c:Lcom/android/mms/data/Conversation;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1545
    sget-boolean v12, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v12, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1541
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1532
    .end local v2           #c:Lcom/android/mms/data/Conversation;
    .end local v5           #i:I
    :catch_0
    move-exception v4

    .line 1533
    .local v4, e:Ljava/lang/IllegalStateException;
    const-string v12, "Mms/Conversation.Cache"

    const-string v14, "conversationInfoCursor sorting error "

    invoke-static {v12, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    array-length v12, v9

    if-ge v5, v12, :cond_0

    .line 1535
    const-string v14, "Mms/Conversation.Cache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "objConversations time : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v12, v9, v5

    check-cast v12, Lcom/android/mms/data/Conversation;

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1537
    .end local v4           #e:Ljava/lang/IllegalStateException;
    .end local v5           #i:I
    :catch_1
    move-exception v6

    .line 1538
    .local v6, iae:Ljava/lang/IllegalArgumentException;
    const-string v12, "Mms/Conversation.Cache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "conversationInfoCursor sorting error "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1613
    .end local v3           #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mms/data/Conversation;>;"
    .end local v6           #iae:Ljava/lang/IllegalArgumentException;
    .end local v9           #objConversations:[Ljava/lang/Object;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 1550
    .restart local v2       #c:Lcom/android/mms/data/Conversation;
    .restart local v3       #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mms/data/Conversation;>;"
    .restart local v5       #i:I
    .restart local v9       #objConversations:[Ljava/lang/Object;
    :cond_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1552
    #getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v2}, Lcom/android/mms/data/Conversation;->access$500(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1553
    const/16 v12, 0xd

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v12, v14

    const/4 v14, 0x1

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v12, v14

    const/4 v14, 0x2

    const-string v15, "thread"

    aput-object v15, v12, v14

    const/4 v14, 0x3

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    const/4 v14, 0x4

    const/4 v15, 0x0

    aput-object v15, v12, v14

    const/4 v14, 0x5

    const/4 v15, 0x0

    aput-object v15, v12, v14

    const/4 v14, 0x6

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v15

    aput-object v15, v12, v14

    const/4 v14, 0x7

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getDisplayRecipientIds()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    const/16 v14, 0x8

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v12, v14

    const/16 v14, 0x9

    const-string v15, "0"

    aput-object v15, v12, v14

    const/16 v14, 0xa

    const-string v15, ""

    aput-object v15, v12, v14

    const/16 v14, 0xb

    const/4 v15, 0x0

    aput-object v15, v12, v14

    const/16 v14, 0xc

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getDisplayRecipientIds()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    invoke-virtual {v11, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1568
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1569
    #getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v2}, Lcom/android/mms/data/Conversation;->access$500(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v14, "-"

    const-string v15, ""

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1571
    .local v10, tempNum:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1572
    const/16 v12, 0xd

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v12, v14

    const/4 v14, 0x1

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v12, v14

    const/4 v14, 0x2

    const-string v15, "thread"

    aput-object v15, v12, v14

    const/4 v14, 0x3

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    const/4 v14, 0x4

    const/4 v15, 0x0

    aput-object v15, v12, v14

    const/4 v14, 0x5

    const/4 v15, 0x0

    aput-object v15, v12, v14

    const/4 v14, 0x6

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v15

    aput-object v15, v12, v14

    const/4 v14, 0x7

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getDisplayRecipientIds()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    const/16 v14, 0x8

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v12, v14

    const/16 v14, 0x9

    const-string v15, "0"

    aput-object v15, v12, v14

    const/16 v14, 0xa

    const-string v15, ""

    aput-object v15, v12, v14

    const/16 v14, 0xb

    const/4 v15, 0x0

    aput-object v15, v12, v14

    const/16 v14, 0xc

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getDisplayRecipientIds()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    invoke-virtual {v11, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1589
    .end local v10           #tempNum:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChoseongSearch()Z

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/HangulUtils;->haveKoreanConsonants(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1590
    #getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v2}, Lcom/android/mms/data/Conversation;->access$500(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1591
    .local v1, address:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 1592
    .local v7, inputText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 1594
    .local v8, matchNameText:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1595
    const/16 v12, 0xd

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v12, v14

    const/4 v14, 0x1

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v12, v14

    const/4 v14, 0x2

    const-string v15, "thread"

    aput-object v15, v12, v14

    const/4 v14, 0x3

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    const/4 v14, 0x4

    const/4 v15, 0x0

    aput-object v15, v12, v14

    const/4 v14, 0x5

    const/4 v15, 0x0

    aput-object v15, v12, v14

    const/4 v14, 0x6

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v15

    aput-object v15, v12, v14

    const/4 v14, 0x7

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getDisplayRecipientIds()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    const/16 v14, 0x8

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v12, v14

    const/16 v14, 0x9

    const-string v15, "0"

    aput-object v15, v12, v14

    const/16 v14, 0xa

    const-string v15, ""

    aput-object v15, v12, v14

    const/16 v14, 0xb

    const/4 v15, 0x0

    aput-object v15, v12, v14

    const/16 v14, 0xc

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getDisplayRecipientIds()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    invoke-virtual {v11, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1613
    .end local v1           #address:Ljava/lang/String;
    .end local v2           #c:Lcom/android/mms/data/Conversation;
    .end local v7           #inputText:Ljava/lang/String;
    .end local v8           #matchNameText:Ljava/lang/String;
    :cond_5
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1615
    return-object v11
.end method

.method static conversationInfoCursorForFindo([Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 21
    .parameter "selectionArgs"

    .prologue
    .line 1622
    const/4 v4, 0x0

    .line 1623
    .local v4, checkAddRow:I
    move-object/from16 v12, p0

    .line 1624
    .local v12, result:[Ljava/lang/String;
    new-instance v14, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/mms/data/Conversation;->access$600()[Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1626
    .local v14, threadCursor:Landroid/database/MatrixCursor;
    sget-object v16, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v16

    .line 1627
    :try_start_0
    sget-object v15, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v15, v15, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 1629
    .local v5, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mms/data/Conversation;>;"
    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 1632
    .local v11, objConversations:[Ljava/lang/Object;
    :try_start_1
    new-instance v15, Lcom/android/mms/data/Conversation$Cache$SortLastestThreads;

    invoke-direct {v15}, Lcom/android/mms/data/Conversation$Cache$SortLastestThreads;-><init>()V

    invoke-static {v11, v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1640
    :cond_0
    const/4 v9, 0x0

    .local v9, k:I
    :goto_0
    :try_start_2
    array-length v15, v11

    if-ge v9, v15, :cond_8

    .line 1641
    aget-object v3, v11, v9

    check-cast v3, Lcom/android/mms/data/Conversation;

    .line 1643
    .local v3, c:Lcom/android/mms/data/Conversation;
    if-nez v12, :cond_1

    .line 1644
    const/16 v15, 0xd

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x1

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x2

    const-string v18, "thread"

    aput-object v18, v15, v17

    const/16 v17, 0x3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x4

    const/16 v18, 0x0

    aput-object v18, v15, v17

    const/16 v17, 0x5

    const/16 v18, 0x0

    aput-object v18, v15, v17

    const/16 v17, 0x6

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x7

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getDisplayRecipientIds()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x8

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x9

    const-string v18, "0"

    aput-object v18, v15, v17

    const/16 v17, 0xa

    const-string v18, ""

    aput-object v18, v15, v17

    const/16 v17, 0xb

    const/16 v18, 0x0

    aput-object v18, v15, v17

    const/16 v17, 0xc

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getDisplayRecipientIds()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    invoke-virtual {v14, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1652
    const/16 v15, 0xc7

    if-ne v9, v15, :cond_7

    .line 1653
    monitor-exit v16

    .line 1694
    .end local v3           #c:Lcom/android/mms/data/Conversation;
    :goto_1
    return-object v14

    .line 1633
    .end local v9           #k:I
    :catch_0
    move-exception v6

    .line 1634
    .local v6, e:Ljava/lang/IllegalStateException;
    const-string v15, "Mms/Conversation.Cache"

    const-string v17, "conversationInfoCursor sorting error "

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    array-length v15, v11

    if-ge v7, v15, :cond_0

    .line 1636
    const-string v17, "Mms/Conversation.Cache"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "objConversations time : "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v15, v11, v7

    check-cast v15, Lcom/android/mms/data/Conversation;

    invoke-virtual {v15}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1656
    .end local v6           #e:Ljava/lang/IllegalStateException;
    .end local v7           #i:I
    .restart local v3       #c:Lcom/android/mms/data/Conversation;
    .restart local v9       #k:I
    :cond_1
    const/4 v4, 0x0

    .line 1657
    array-length v15, v12

    if-lez v15, :cond_5

    .line 1658
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    array-length v15, v12

    if-ge v7, v15, :cond_5

    .line 1659
    rem-int/lit8 v15, v7, 0x2

    if-nez v15, :cond_2

    .line 1660
    #getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v3}, Lcom/android/mms/data/Conversation;->access$500(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/data/ContactList;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    aget-object v17, v12, v7

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1661
    add-int/lit8 v4, v4, 0x1

    .line 1658
    :cond_2
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1662
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v15

    if-eqz v15, :cond_4

    aget-object v15, v12, v7

    invoke-static {v15}, Lcom/android/mms/ui/MessageUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1663
    #getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v3}, Lcom/android/mms/data/Conversation;->access$500(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/data/ContactList;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const-string v17, "-"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1665
    .local v13, tempNum:Ljava/lang/String;
    aget-object v15, v12, v7

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1666
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1668
    .end local v13           #tempNum:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChoseongSearch()Z

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_2

    aget-object v15, v12, v7

    invoke-static {v15}, Lcom/android/mms/util/HangulUtils;->haveKoreanConsonants(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1669
    #getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v3}, Lcom/android/mms/data/Conversation;->access$500(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/data/ContactList;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1670
    .local v2, address:Ljava/lang/String;
    aget-object v15, v12, v7

    invoke-static {v15}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 1671
    .local v8, inputText:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 1673
    .local v10, matchNameText:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1674
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1681
    .end local v2           #address:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #inputText:Ljava/lang/String;
    .end local v10           #matchNameText:Ljava/lang/String;
    :cond_5
    array-length v15, v12

    div-int/lit8 v15, v15, 0x2

    add-int/lit8 v15, v15, 0x1

    if-ne v15, v4, :cond_6

    .line 1682
    const/16 v15, 0xd

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x1

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x2

    const-string v18, "thread"

    aput-object v18, v15, v17

    const/16 v17, 0x3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x4

    const/16 v18, 0x0

    aput-object v18, v15, v17

    const/16 v17, 0x5

    const/16 v18, 0x0

    aput-object v18, v15, v17

    const/16 v17, 0x6

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x7

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getDisplayRecipientIds()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x8

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x9

    const-string v18, "0"

    aput-object v18, v15, v17

    const/16 v17, 0xa

    const-string v18, ""

    aput-object v18, v15, v17

    const/16 v17, 0xb

    const/16 v18, 0x0

    aput-object v18, v15, v17

    const/16 v17, 0xc

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getDisplayRecipientIds()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    invoke-virtual {v14, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1690
    :cond_6
    const/4 v4, 0x0

    .line 1640
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1693
    .end local v3           #c:Lcom/android/mms/data/Conversation;
    :cond_8
    monitor-exit v16

    goto/16 :goto_1

    .end local v5           #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mms/data/Conversation;>;"
    .end local v9           #k:I
    .end local v11           #objConversations:[Ljava/lang/Object;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15
.end method

.method static dumpCache()V
    .locals 0

    .prologue
    .line 1478
    return-void
.end method

.method static get(J)Lcom/android/mms/data/Conversation;
    .locals 3
    .parameter "threadId"

    .prologue
    .line 1420
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    .line 1422
    :try_start_0
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    monitor-exit v1

    return-object v0

    .line 1423
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static get(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/Conversation;
    .locals 7
    .parameter "list"

    .prologue
    const/4 v3, 0x0

    .line 1431
    sget-object v4, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v4

    .line 1432
    :try_start_0
    const-string v5, "Mms/Conversation.Cache"

    const-string v6, "get(ContactList)"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    sget-object v5, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v5, v5, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    monitor-exit v4

    move-object v0, v3

    .line 1444
    :goto_0
    return-object v0

    .line 1435
    :cond_0
    sget-object v5, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v5, v5, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1437
    .local v1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mms/data/Conversation;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 1438
    .local v0, c:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1439
    monitor-exit v4

    goto :goto_0

    .line 1442
    .end local v0           #c:Lcom/android/mms/data/Conversation;
    .end local v1           #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mms/data/Conversation;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mms/data/Conversation;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    .line 1444
    goto :goto_0
.end method

.method static getInstance()Lcom/android/mms/data/Conversation$Cache;
    .locals 1

    .prologue
    .line 1406
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    return-object v0
.end method

.method static keepOnly(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1702
    .local p0, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v2, "Mms/Conversation.Cache"

    const-string v3, "keepOnly()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    sget-object v3, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v3

    .line 1706
    :try_start_0
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1708
    .local v1, keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1710
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1712
    .local v0, key:Ljava/lang/Long;
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1713
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1716
    .end local v0           #key:Ljava/lang/Long;
    .end local v1           #keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1719
    return-void
.end method

.method static put(Lcom/android/mms/data/Conversation;)V
    .locals 7
    .parameter "c"

    .prologue
    .line 1453
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v2

    .line 1455
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1457
    .local v0, threadId:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_0

    .line 1458
    const-string v1, "Mms/Conversation.Cache"

    const-string v3, "invalid threadID ignore put conversation cache"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    :goto_0
    monitor-exit v2

    .line 1466
    return-void

    .line 1459
    :cond_0
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v1, v1, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1460
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache already contains "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " threadId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/android/mms/data/Conversation;->mThreadId:J
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->access$400(Lcom/android/mms/data/Conversation;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1465
    .end local v0           #threadId:Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1463
    .restart local v0       #threadId:Ljava/lang/Long;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v1, v1, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static remove(J)V
    .locals 3
    .parameter "threadId"

    .prologue
    .line 1469
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    .line 1471
    :try_start_0
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    monitor-exit v1

    .line 1473
    return-void

    .line 1472
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
