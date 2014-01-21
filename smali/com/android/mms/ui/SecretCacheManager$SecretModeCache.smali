.class public Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;
.super Ljava/lang/Object;
.source "SecretCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SecretCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecretModeCache"
.end annotation


# static fields
.field public static isSecretInvalid:Z = false

.field private static final mDisableDump:Z = true

.field private static sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretInvalid:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    .line 94
    iput-object p1, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method static synthetic access$400()Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static delete(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 145
    sget-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->dump()V

    .line 149
    return-void
.end method

.method public static dump()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public static fill()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 98
    const-string v1, "Mms/SecretCacheManager"

    const-string v2, "SecretModeCache fill() begin"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mContext:Landroid/content/Context;

    .line 101
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/SecretCacheManager;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/SecretCacheManager;->SECRET_PROJECTION:[Ljava/lang/String;

    sget-object v4, Lcom/android/mms/ui/SecretCacheManager;->selection:Ljava/lang/String;

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 104
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 105
    const-string v1, "Mms/SecretCacheManager"

    const-string v2, "null Cursor in fill()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 110
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    :try_start_1
    sget-object v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v1, v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 112
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 114
    .local v9, id:J
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 116
    .local v11, secretmode:I
    new-instance v8, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    invoke-direct {v8, v9, v10, v11}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;-><init>(JI)V

    .line 117
    .local v8, data:Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;
    sget-object v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v1, v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "Mms/SecretCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecretModeCache fill() id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " secretmode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    .end local v8           #data:Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;
    .end local v9           #id:J
    .end local v11           #secretmode:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    :catchall_1
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 120
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 125
    const-string v1, "Mms/SecretCacheManager"

    const-string v2, "SecretModeCache fill() finished"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->dump()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    return-object v0
.end method

.method public static getSecretAvatar(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "threadId"

    .prologue
    const/4 v1, 0x0

    .line 152
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-object v1

    .line 155
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->invalidateCache()V

    .line 157
    sget-object v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v2, v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    .line 159
    .local v0, data:Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;
    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateInvalidatedCache(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V

    .line 161
    if-eqz v0, :cond_0

    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 165
    :cond_2
    const-string v1, "Mms/SecretCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecretAvatar, mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mId:J
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$100(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$200(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSecretMode(J)I
    .locals 5
    .parameter "threadId"

    .prologue
    const/4 v1, 0x0

    .line 172
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 187
    :goto_0
    return v1

    .line 175
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->invalidateCache()V

    .line 177
    sget-object v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v2, v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    .line 179
    .local v0, data:Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;
    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateInvalidatedCache(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V

    .line 181
    if-eqz v0, :cond_1

    .line 182
    const-string v1, "Mms/SecretCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecretMode, mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mId:J
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$100(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " secret_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v1

    goto :goto_0

    .line 186
    :cond_1
    const-string v2, "Mms/SecretCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSecretMode, Id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " secret_mode= 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    new-instance v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    .line 83
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$1;

    invoke-direct {v1}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    return-void
.end method

.method public static insert(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V
    .locals 2
    .parameter "id"
    .parameter "data"

    .prologue
    .line 131
    sget-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->dump()V

    .line 133
    return-void
.end method

.method public static invalidateCache()V
    .locals 4

    .prologue
    .line 512
    sget-boolean v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretInvalid:Z

    if-nez v2, :cond_0

    .line 525
    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    return-void

    .line 515
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_0
    const-string v2, "Mms/SecretCacheManager"

    const-string v3, "invalidate()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    sget-object v3, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    monitor-enter v3

    .line 517
    :try_start_0
    sget-object v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v2, v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    .line 518
    .local v1, sCacheData:Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 519
    const/4 v2, 0x1

    :try_start_1
    #setter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mIsStale:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$302(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;Z)Z

    .line 520
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 522
    .end local v1           #sCacheData:Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 523
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretInvalid:Z

    .line 524
    const-string v2, "Mms/SecretCacheManager"

    const-string v3, "invalidate()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSecretMode(J)Z
    .locals 7
    .parameter "threadId"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 191
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-gez v3, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v1

    .line 194
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->invalidateCache()V

    .line 196
    sget-object v3, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v3, v3, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    .line 198
    .local v0, data:Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;
    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateInvalidatedCache(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V

    .line 200
    if-eqz v0, :cond_3

    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mId:J
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$100(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)J

    move-result-wide v3

    cmp-long v3, p0, v3

    if-nez v3, :cond_3

    .line 201
    const-string v3, "Mms/SecretCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSecret, mId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mId:J
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$100(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " secret_mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v3

    if-eq v3, v2, :cond_2

    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    :cond_2
    move v1, v2

    .line 206
    goto :goto_0

    .line 211
    :cond_3
    const-string v2, "Mms/SecretCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSecret, Id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " secret_mode= false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static update(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V
    .locals 2
    .parameter "id"
    .parameter "data"

    .prologue
    .line 136
    sget-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    sget-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->dump()V

    .line 142
    return-void
.end method

.method public static updateDBandCache(JLjava/lang/String;)Z
    .locals 12
    .parameter "id"
    .parameter "number"

    .prologue
    .line 233
    sget-object v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mContext:Landroid/content/Context;

    .line 235
    .local v0, context:Landroid/content/Context;
    move-object v8, p2

    .line 237
    .local v8, filter:Ljava/lang/String;
    const-string v1, "content://com.android.contacts/private"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 238
    .local v10, isPrivateUri:Landroid/net/Uri;
    invoke-static {v10, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 240
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/SecretCacheManager;->CONTACT_COLUMNS:[Ljava/lang/String;

    sget-object v4, Lcom/android/mms/ui/SecretCacheManager;->selection:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 243
    .local v11, phoneCursor:Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 244
    const/4 v1, 0x0

    .line 272
    :goto_0
    return v1

    .line 248
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    const/16 v1, 0xa

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 251
    .local v9, isPrivate:I
    const-string v1, "Mms/SecretCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecretModeCache updateDBandCache() id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is_private="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v1, 0x1

    if-ne v9, v1, :cond_2

    .line 253
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateDbPrivateContact(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 260
    .end local v9           #isPrivate:I
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 261
    sget-object v3, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v3, v3, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    .line 262
    .local v7, data:Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;
    if-eqz v7, :cond_1

    .line 263
    monitor-enter v7

    .line 264
    const/4 v3, 0x0

    :try_start_1
    #setter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mIsStale:Z
    invoke-static {v7, v3}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$302(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;Z)Z

    .line 265
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 269
    .end local v7           #data:Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    .line 255
    .restart local v9       #isPrivate:I
    :cond_2
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateDbPrivateContact(JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 260
    .end local v9           #isPrivate:I
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 261
    sget-object v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v1, v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    .line 262
    .restart local v7       #data:Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;
    if-eqz v7, :cond_4

    .line 263
    monitor-enter v7

    .line 264
    const/4 v1, 0x0

    :try_start_3
    #setter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mIsStale:Z
    invoke-static {v7, v1}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$302(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;Z)Z

    .line 265
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 269
    .end local v7           #data:Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 272
    const/4 v1, 0x0

    goto :goto_0

    .line 265
    .restart local v7       #data:Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public static updateDbPrivateContact(JZ)V
    .locals 5
    .parameter "id"
    .parameter "add"

    .prologue
    .line 276
    move-wide v1, p0

    .line 277
    .local v1, mId:J
    move v0, p2

    .line 278
    .local v0, isAdd:Z
    const-string v3, "Mms/SecretCacheManager"

    const-string v4, "updateDbPrivateContact() begin"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$2;

    invoke-direct {v4, v1, v2, v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$2;-><init>(JZ)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 389
    return-void
.end method

.method public static updateDbSecretThread(JZ)V
    .locals 5
    .parameter "id"
    .parameter "add"

    .prologue
    .line 392
    move-wide v1, p0

    .line 393
    .local v1, mId:J
    move v0, p2

    .line 394
    .local v0, isAdd:Z
    const-string v3, "Mms/SecretCacheManager"

    const-string v4, "updateDbSecretThread() begin"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;

    invoke-direct {v4, v1, v2, v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;-><init>(JZ)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 509
    return-void
.end method

.method public static updateInvalidatedCache(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V
    .locals 6
    .parameter "tId"
    .parameter "data"

    .prologue
    const/16 v5, 0x3b

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 528
    sget-object v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mContext:Landroid/content/Context;

    .line 529
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p0, p1}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, mNumber:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 532
    if-nez p2, :cond_2

    .line 533
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v2, v3, :cond_1

    .line 534
    new-instance v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    invoke-direct {v2, p0, p1, v4}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;-><init>(JI)V

    invoke-static {p0, p1, v2}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->insert(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateDBandCache(JLjava/lang/String;)Z

    goto :goto_0

    .line 538
    :cond_2
    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mIsStale:Z
    invoke-static {p2}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$300(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v2, v3, :cond_3

    .line 540
    monitor-enter p2

    .line 541
    const/4 v2, 0x0

    :try_start_0
    #setter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mIsStale:Z
    invoke-static {p2, v2}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$302(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;Z)Z

    .line 542
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 544
    :cond_3
    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateDBandCache(JLjava/lang/String;)Z

    goto :goto_0
.end method
