.class final Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;
.super Ljava/lang/Object;
.source "SecretCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateDbSecretThread(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field mSelection:Ljava/lang/String;

.field threadURI:Landroid/net/Uri;

.field final synthetic val$isAdd:Z

.field final synthetic val$mId:J

.field values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 396
    iput-wide p1, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->val$mId:J

    iput-boolean p3, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->val$isAdd:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->mSelection:Ljava/lang/String;

    .line 401
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "threads"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->threadURI:Landroid/net/Uri;

    .line 403
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->values:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 407
    :try_start_0
    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->access$400()Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    move-result-object v0

    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->access$500(Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->context:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->val$mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->mSelection:Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/SecretCacheManager;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/SecretCacheManager;->SECRET_PROJECTION:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->mSelection:Ljava/lang/String;

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 417
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 418
    const-string v0, "Mms/SecretCacheManager"

    const-string v1, "null Cursor in updateDbSecretThread()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .end local v8           #c:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v11

    .line 409
    .local v11, e:Ljava/lang/NullPointerException;
    const-string v0, "Mms/SecretCacheManager"

    const-string v1, "sInstance is null in updateDbSecretThread()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    .end local v11           #e:Ljava/lang/NullPointerException;
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_0
    const/4 v9, -0x1

    .line 425
    .local v9, currSecretmode:I
    const/4 v7, 0x0

    .line 426
    .local v7, affectedRow:I
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 428
    .local v12, id:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 430
    const-string v0, "Mms/SecretCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecretModeCache updateDbSecretThread() id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currSecretmode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-boolean v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->val$isAdd:Z

    if-eqz v0, :cond_1

    .line 434
    packed-switch v9, :pswitch_data_0

    .line 457
    :goto_2
    :pswitch_0
    new-instance v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    invoke-direct {v0, v12, v13, v9}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;-><init>(JI)V

    invoke-static {v12, v13, v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->update(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V

    .line 458
    const-string v0, "Mms/SecretCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecretModeCache updateDbSecretThread() add,  affectedRow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updatedSecretMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 493
    .end local v12           #id:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 495
    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->access$400()Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    move-result-object v1

    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->access$600(Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;)Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->val$mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    .line 496
    .local v10, data:Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;
    if-nez v10, :cond_4

    .line 497
    iget-wide v1, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->val$mId:J

    new-instance v3, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    iget-wide v4, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->val$mId:J

    invoke-direct {v3, v4, v5, v9}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;-><init>(JI)V

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->insert(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V

    .line 505
    :goto_3
    throw v0

    .line 436
    .end local v10           #data:Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;
    .restart local v12       #id:J
    :pswitch_1
    const/4 v9, 0x1

    .line 437
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->values:Landroid/content/ContentValues;

    const-string v1, "secret_mode"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    iget-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->threadURI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->values:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->mSelection:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 441
    goto :goto_2

    .line 444
    :pswitch_2
    const/4 v9, 0x3

    .line 445
    iget-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->values:Landroid/content/ContentValues;

    const-string v1, "secret_mode"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    iget-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->threadURI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->values:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->mSelection:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 449
    goto/16 :goto_2

    .line 461
    :cond_1
    packed-switch v9, :pswitch_data_1

    .line 485
    :goto_4
    :pswitch_3
    new-instance v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    invoke-direct {v0, v12, v13, v9}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;-><init>(JI)V

    invoke-static {v12, v13, v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->update(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V

    .line 486
    const-string v0, "Mms/SecretCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecretModeCache updateDbSecretThread() remove,  affectedRow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updatedSecretMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 463
    :pswitch_4
    const/4 v9, 0x0

    .line 464
    iget-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->values:Landroid/content/ContentValues;

    const-string v1, "secret_mode"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 465
    iget-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->threadURI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->values:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->mSelection:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 468
    goto :goto_4

    .line 471
    :pswitch_5
    const/4 v9, 0x2

    .line 472
    iget-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->values:Landroid/content/ContentValues;

    const-string v1, "secret_mode"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 473
    iget-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->threadURI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->values:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->mSelection:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    .line 476
    goto :goto_4

    .line 493
    .end local v12           #id:J
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 495
    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->access$400()Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    move-result-object v0

    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->access$600(Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;)Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->val$mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    .line 496
    .restart local v10       #data:Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;
    if-nez v10, :cond_3

    .line 497
    iget-wide v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->val$mId:J

    new-instance v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    iget-wide v3, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->val$mId:J

    invoke-direct {v2, v3, v4, v9}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;-><init>(JI)V

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->insert(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V

    .line 506
    :goto_5
    const-string v0, "Mms/SecretCacheManager"

    const-string v1, "updateDbSecretThread() end"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    :cond_3
    monitor-enter v10

    .line 500
    const/4 v0, 0x0

    :try_start_3
    #setter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mIsStale:Z
    invoke-static {v10, v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$302(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;Z)Z

    .line 501
    #setter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v10, v9}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$002(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;I)I

    .line 502
    iget-wide v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->val$mId:J

    invoke-virtual {v10, v0, v1, v9}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->setSecretAvatarDrawable(JI)Z

    .line 503
    monitor-exit v10

    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 499
    :cond_4
    monitor-enter v10

    .line 500
    const/4 v1, 0x0

    :try_start_4
    #setter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mIsStale:Z
    invoke-static {v10, v1}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$302(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;Z)Z

    .line 501
    #setter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v10, v9}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$002(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;I)I

    .line 502
    iget-wide v1, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;->val$mId:J

    invoke-virtual {v10, v1, v2, v9}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->setSecretAvatarDrawable(JI)Z

    .line 503
    monitor-exit v10

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 434
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 461
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
