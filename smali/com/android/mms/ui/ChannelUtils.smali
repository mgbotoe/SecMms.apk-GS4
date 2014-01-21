.class public Lcom/android/mms/ui/ChannelUtils;
.super Ljava/lang/Object;
.source "ChannelUtils.java"


# static fields
.field private static final CB_CHANNEL_ENABLED_ALL:I = 0x2

.field private static final CB_CHANNEL_ENABLED_NOTHING:I = 0x0

.field private static final CB_CHANNEL_ENABLED_SOME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/ChannelUtils"

.field private static bRunAfterFirst:Z

.field private static oldChStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/ChannelUtils;->bRunAfterFirst:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChannel(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "channelid"
    .parameter "value"

    .prologue
    .line 198
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "channel_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v1, "channel_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHANNEL_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v1, "is_checked"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 204
    const-string v1, "Mms/ChannelUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChannel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", IS_CHECKED :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public static addChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "channelid"
    .parameter "channelname"

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-static {p0, p1}, Lcom/android/mms/ui/ChannelUtils;->isChannelAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    :goto_0
    return v1

    .line 165
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "channel_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v2, "channel_name"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v2, "is_checked"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 170
    const-string v1, "Mms/ChannelUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChannel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CHANNEL_NAME :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static addChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .parameter "context"
    .parameter "channelid"
    .parameter "channelname"
    .parameter "value"

    .prologue
    .line 179
    invoke-static {p0, p1}, Lcom/android/mms/ui/ChannelUtils;->isChannelAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const/4 v1, 0x0

    .line 191
    :goto_0
    return v1

    .line 183
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 184
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "channel_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "channel_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "is_checked"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 188
    const-string v1, "Mms/ChannelUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChannel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CHANNEL_NAME :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", IS_CHECKED :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static appendId(Ljava/lang/Long;)Landroid/net/Uri;
    .locals 3
    .parameter "id"

    .prologue
    .line 243
    sget-object v0, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelId(Landroid/content/Context;)[S
    .locals 9
    .parameter "context"

    .prologue
    .line 51
    const/4 v6, 0x0

    .line 52
    .local v6, channelIDs:[S
    const/4 v8, 0x0

    .line 55
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "channel_id"

    aput-object v4, v2, v3

    const-string v3, "is_checked=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 57
    if-eqz v8, :cond_1

    .line 58
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 59
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v6, v0, [S

    .line 60
    const/4 v7, 0x0

    .local v7, chid:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 61
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, v6, v7

    .line 62
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 66
    .end local v7           #chid:I
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_0

    .line 67
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_0
    throw v0

    :cond_1
    if-eqz v8, :cond_2

    .line 67
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_2
    return-object v6
.end method

.method public static getChannels(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 99
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 102
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    move-object v6, v2

    goto :goto_0
.end method

.method public static getCheckedCount(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 77
    const/4 v6, 0x0

    .line 78
    .local v6, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const/4 v3, 0x1

    const-string v5, "is_checked"

    aput-object v5, v2, v3

    const-string v3, "is_checked=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 81
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move v0, v8

    .line 91
    :goto_0
    return v0

    .line 86
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 88
    if-eqz v7, :cond_1

    .line 89
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v6

    .line 91
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 89
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_2
    throw v0
.end method

.method public static getIdbyChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;
    .locals 9
    .parameter "context"
    .parameter "channelid"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 135
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 142
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 145
    :goto_1
    return-object v0

    .line 138
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1
.end method

.method public static isChannelAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "channelid"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 109
    const/4 v6, 0x0

    .line 110
    .local v6, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 113
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move v0, v8

    .line 127
    :goto_0
    return v0

    .line 118
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 120
    if-eqz v7, :cond_1

    .line 121
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_1
    if-nez v6, :cond_3

    move v0, v8

    .line 125
    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 121
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_2
    throw v0

    .line 127
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isChannelEnabled(Ljava/lang/String;[S)Z
    .locals 7
    .parameter "channel"
    .parameter "channelsList"

    .prologue
    const/4 v3, 0x0

    .line 574
    const-string v4, "Mms/ChannelUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isChannelEnabled - channel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 583
    .local v0, convertedChannel:S
    if-nez p1, :cond_1

    .line 591
    .end local v0           #convertedChannel:S
    :cond_0
    :goto_0
    return v3

    .line 578
    :catch_0
    move-exception v1

    .line 579
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "Mms/ChannelUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isChannelEnabled()- Invalid channel number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 586
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #convertedChannel:S
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 587
    aget-short v4, p1, v2

    if-ne v4, v0, :cond_2

    .line 588
    const/4 v3, 0x1

    goto :goto_0

    .line 586
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static modifyChannel(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "id"
    .parameter "channelid"
    .parameter "channelname"

    .prologue
    const/4 v3, 0x0

    .line 222
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 223
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "channel_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "channel_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/ui/ChannelUtils;->appendId(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 226
    const/4 v1, 0x1

    return v1
.end method

.method public static modifyChannel(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .parameter "context"
    .parameter "id"
    .parameter "channelid"
    .parameter "channelname"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 231
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "channel_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "channel_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "is_checked"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/ui/ChannelUtils;->appendId(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 236
    const/4 v1, 0x1

    return v1
.end method

.method public static removeChannel(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method public static removeChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "channelid"

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method private static resetAllCbChannelRange(Z)V
    .locals 5
    .parameter "bEnable"

    .prologue
    const/4 v4, 0x2

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    .line 535
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDocomoAccountAsDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 544
    .local v0, smsManager:Landroid/telephony/SmsManager;
    if-nez p0, :cond_3

    sget v1, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    if-eqz v1, :cond_3

    .line 545
    invoke-virtual {v0, v3, v2}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 546
    sput v3, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    .line 547
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Disable all channels SUCCESS"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :cond_2
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Disable all channels Failed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_3
    if-eqz p0, :cond_5

    sget v1, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    if-eq v1, v4, :cond_5

    .line 552
    invoke-virtual {v0, v3, v2}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 553
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Enable all channels SUCCESS"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    sput v4, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    goto :goto_0

    .line 556
    :cond_4
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Enable all channels Failed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_5
    sget-boolean v1, Lcom/android/mms/ui/ChannelUtils;->bRunAfterFirst:Z

    if-eqz v1, :cond_0

    .line 560
    if-nez p0, :cond_6

    sget v1, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    if-nez v1, :cond_6

    .line 561
    invoke-virtual {v0, v3, v2}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    .line 562
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Disable all channels"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_6
    sput-boolean v3, Lcom/android/mms/ui/ChannelUtils;->bRunAfterFirst:Z

    goto :goto_0
.end method

.method public static resetCMASSettings()V
    .locals 5

    .prologue
    .line 283
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 286
    .local v1, smsManager:Landroid/telephony/SmsManager;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_0
    :goto_0
    const-string v2, "Mms/ChannelUtils"

    const-string v3, "resetCMASSettings : End."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Mms/ChannelUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in setDisableCMASSettings channelUtils "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 23
    .parameter "context"
    .parameter "sharedpref"

    .prologue
    .line 307
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v19

    .line 308
    .local v19, smsManager:Landroid/telephony/SmsManager;
    const-string v20, "pref_key_cb_settings_activation"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 309
    .local v5, bCbActivation:Z
    const-string v20, "pref_key_cb_channel_selection"

    const-string v21, "All channels"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 310
    .local v9, chSelection:Ljava/lang/String;
    const/4 v7, 0x0

    .line 312
    .local v7, bMyChannels:Z
    const-string v20, "Mms/ChannelUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setCbSettings : bCbActivation :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", chSelection = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v20, "My channel"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 315
    const/4 v7, 0x1

    .line 317
    :cond_0
    if-eqz v5, :cond_e

    .line 318
    if-eqz v7, :cond_d

    .line 319
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;)[S

    move-result-object v10

    .line 320
    .local v10, checkedChId:[S
    const/16 v16, 0x0

    .line 321
    .local v16, include919Ch:Z
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ChannelUtils;->resetAllCbChannelRange(Z)V

    .line 322
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    array-length v0, v10

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v15, v0, :cond_2

    .line 323
    const-string v20, "Mms/ChannelUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "enable channel : ID = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-short v22, v10, v15

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    aget-short v20, v10, v15

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    .line 325
    aget-short v20, v10, v15

    const/16 v21, 0x397

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 326
    const/16 v16, 0x1

    .line 322
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 329
    :cond_2
    if-nez v16, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCmasTFGChileSIM()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 330
    const/16 v20, 0x397

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    .line 332
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    array-length v0, v10

    move/from16 v20, v0

    if-nez v20, :cond_c

    .line 348
    .end local v10           #checkedChId:[S
    .end local v15           #i:I
    .end local v16           #include919Ch:Z
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCmasTFGChileSIM()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 349
    const/16 v20, 0x1112

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    .line 353
    :cond_5
    new-instance v8, Landroid/content/Intent;

    const-string v20, "com.android.mms.CB_SETTINGS_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v8, cbintent:Landroid/content/Intent;
    const-string v20, "cbActivation"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 355
    const-string v20, "bMyChannels"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBChannel4DisplayInStatusBar()Ljava/lang/String;

    move-result-object v12

    .line 360
    .local v12, enableDirectDisplayCBCh:Ljava/lang/String;
    if-eqz v12, :cond_8

    .line 361
    const/16 v18, 0x0

    .line 362
    .local v18, numActiveCh:I
    const/4 v10, 0x0

    .line 363
    .restart local v10       #checkedChId:[S
    if-eqz v7, :cond_6

    .line 364
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;)[S

    move-result-object v10

    .line 365
    array-length v0, v10

    move/from16 v18, v0

    .line 367
    :cond_6
    if-eqz v5, :cond_7

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    invoke-static {v12, v10}, Lcom/android/mms/ui/ChannelUtils;->isChannelEnabled(Ljava/lang/String;[S)Z

    move-result v20

    if-nez v20, :cond_8

    .line 368
    :cond_7
    new-instance v17, Landroid/content/Intent;

    const-string v20, "com.sec.android.app.mms.CB_CLEAR"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v17, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 373
    .end local v10           #checkedChId:[S
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #numActiveCh:I
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v20

    if-eqz v20, :cond_17

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v20

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_17

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_17

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v20

    if-nez v20, :cond_17

    .line 376
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v6, bCmasChannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 380
    .local v4, Prefs:Landroid/content/SharedPreferences;
    invoke-static {v4, v6}, Lcom/android/mms/ui/CMASPreferenceActivity;->CheckCMASChannelInfo(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 405
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "CMAS SET Partial"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "CMAS SET President"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/16 v20, 0x1112

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    .line 411
    invoke-static {v4}, Lcom/android/mms/transaction/CmasReceiverService;->isExtremeAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 412
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "CMAS SET Extream"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/16 v20, 0x1113

    const/16 v21, 0x1114

    invoke-virtual/range {v19 .. v21}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    .line 418
    :goto_2
    invoke-static {v4}, Lcom/android/mms/transaction/CmasReceiverService;->isSeverityAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 419
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "CMAS SET Severity"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/16 v20, 0x1115

    const/16 v21, 0x111a

    invoke-virtual/range {v19 .. v21}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    .line 425
    :goto_3
    invoke-static {v4}, Lcom/android/mms/transaction/CmasReceiverService;->isAmberAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 426
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "CMAS SET Amber"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const/16 v20, 0x111b

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    .line 432
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v20

    if-eqz v20, :cond_15

    .line 433
    const-string v20, "#cmas#type##test#enabled"

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 434
    const/16 v20, 0x111c

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    .line 435
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "CDMA CMAS over LTE : Enable Test"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_5
    const/4 v13, 0x0

    .line 442
    .local v13, enableExercise:Z
    const/4 v14, 0x0

    .line 443
    .local v14, enableOperatorDefined:Z
    const-string v20, "pref_cdma_cmas_over_lte_menu"

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 444
    const-string v20, "pref_cmas_exercise"

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 445
    const/4 v13, 0x1

    .line 448
    :cond_9
    const-string v20, "pref_cmas_operator_defined"

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 449
    const/4 v14, 0x1

    .line 453
    :cond_a
    if-eqz v13, :cond_13

    .line 454
    const/16 v20, 0x111d

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    .line 455
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "CDMA CMAS over LTE : Enable Exercise"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :goto_6
    if-eqz v14, :cond_14

    .line 462
    const/16 v20, 0x111e

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    .line 463
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "CDMA CMAS over LTE : enable Operator defined"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v4           #Prefs:Landroid/content/SharedPreferences;
    .end local v6           #bCmasChannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v13           #enableExercise:Z
    .end local v14           #enableOperatorDefined:Z
    :cond_b
    :goto_7
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "setCbSettings : End."

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void

    .line 335
    .end local v8           #cbintent:Landroid/content/Intent;
    .end local v12           #enableDirectDisplayCBCh:Ljava/lang/String;
    .restart local v10       #checkedChId:[S
    .restart local v15       #i:I
    .restart local v16       #include919Ch:Z
    :cond_c
    const/16 v20, 0x1

    sput v20, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    goto/16 :goto_1

    .line 338
    .end local v10           #checkedChId:[S
    .end local v15           #i:I
    .end local v16           #include919Ch:Z
    :cond_d
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ChannelUtils;->resetAllCbChannelRange(Z)V

    goto/16 :goto_1

    .line 341
    :cond_e
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ChannelUtils;->resetAllCbChannelRange(Z)V

    .line 342
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCmasTFGChileSIM()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 343
    const/16 v20, 0x397

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 344
    const/16 v20, 0x1

    sput v20, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    goto/16 :goto_1

    .line 415
    .restart local v4       #Prefs:Landroid/content/SharedPreferences;
    .restart local v6       #bCmasChannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v8       #cbintent:Landroid/content/Intent;
    .restart local v12       #enableDirectDisplayCBCh:Ljava/lang/String;
    :cond_f
    const/16 v20, 0x1113

    const/16 v21, 0x1114

    :try_start_1
    invoke-virtual/range {v19 .. v21}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 490
    .end local v4           #Prefs:Landroid/content/SharedPreferences;
    .end local v6           #bCmasChannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v11

    .line 491
    .local v11, e:Ljava/lang/Exception;
    const-string v20, "Mms/ChannelUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error in setCbSettings channelUtils "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 422
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v4       #Prefs:Landroid/content/SharedPreferences;
    .restart local v6       #bCmasChannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_10
    const/16 v20, 0x1115

    const/16 v21, 0x111a

    :try_start_2
    invoke-virtual/range {v19 .. v21}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    goto/16 :goto_3

    .line 429
    :cond_11
    const/16 v20, 0x111b

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    goto/16 :goto_4

    .line 437
    :cond_12
    const/16 v20, 0x111c

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    .line 438
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "CDMA CMAS over LTE : Disable Test"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 457
    .restart local v13       #enableExercise:Z
    .restart local v14       #enableOperatorDefined:Z
    :cond_13
    const/16 v20, 0x111d

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    .line 458
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "CDMA CMAS over LTE : Disable Exercise"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 465
    :cond_14
    const/16 v20, 0x111e

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    .line 466
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "CDMA CMAS over LTE : Disable Operator defined"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 469
    .end local v13           #enableExercise:Z
    .end local v14           #enableOperatorDefined:Z
    :cond_15
    invoke-static {v4}, Lcom/android/mms/transaction/CmasReceiverService;->isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 470
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "CMAS SET RMT"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/16 v20, 0x111c

    const/16 v21, 0x111f

    invoke-virtual/range {v19 .. v21}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    goto/16 :goto_7

    .line 473
    :cond_16
    const/16 v20, 0x111c

    const/16 v21, 0x111f

    invoke-virtual/range {v19 .. v21}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    .line 494
    .end local v4           #Prefs:Landroid/content/SharedPreferences;
    .end local v6           #bCmasChannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 495
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 496
    .restart local v4       #Prefs:Landroid/content/SharedPreferences;
    const-string v20, "ril.sms.gcf-mode"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, GcfMode:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKorOperator()Z

    move-result v20

    if-nez v20, :cond_18

    if-eqz v3, :cond_1d

    const-string v20, "On"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 499
    :cond_18
    const/16 v20, 0x1112

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    .line 500
    invoke-static {v4}, Lcom/android/mms/transaction/CmasReceiverService;->isCLASS1AlertActive(Landroid/content/SharedPreferences;)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 501
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "setCbSettings :: Class1 Enable for domestic"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/16 v20, 0x1113

    const/16 v21, 0x111b

    invoke-virtual/range {v19 .. v21}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    .line 508
    :goto_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCMASTestOnOff()Z

    move-result v20

    if-eqz v20, :cond_1b

    .line 509
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "setCbSettings :: TEST Range Enable for domestic"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 511
    const/16 v20, 0x111c

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    .line 513
    :cond_19
    const v20, 0xa000

    const v21, 0xafff

    invoke-virtual/range {v19 .. v21}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    goto/16 :goto_7

    .line 504
    :cond_1a
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "setCbSettings :: Class1 disable for domestic"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/16 v20, 0x1113

    const/16 v21, 0x111b

    invoke-virtual/range {v19 .. v21}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    goto :goto_8

    .line 515
    :cond_1b
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "setCbSettings ::  TEST Range Disable for domestic"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    .line 517
    const/16 v20, 0x111c

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    .line 519
    :cond_1c
    const v20, 0xa000

    const v21, 0xafff

    invoke-virtual/range {v19 .. v21}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    goto/16 :goto_7

    .line 522
    :cond_1d
    const-string v20, "Mms/ChannelUtils"

    const-string v21, "setCbSettings : disable all ranges due to not KOR Operator"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const/16 v20, 0x1112

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    .line 524
    const/16 v20, 0x1113

    const/16 v21, 0x111b

    invoke-virtual/range {v19 .. v21}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    .line 525
    const/16 v20, 0x111c

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    .line 526
    const v20, 0xa000

    const v21, 0xafff

    invoke-virtual/range {v19 .. v21}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    goto/16 :goto_7
.end method

.method public static setDisableCMASSettings()V
    .locals 5

    .prologue
    .line 247
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 250
    .local v1, smsManager:Landroid/telephony/SmsManager;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    const/16 v2, 0x1112

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    .line 261
    const/16 v2, 0x1113

    const/16 v3, 0x1114

    invoke-virtual {v1, v2, v3}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    .line 262
    const/16 v2, 0x1115

    const/16 v3, 0x111a

    invoke-virtual {v1, v2, v3}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    .line 263
    const/16 v2, 0x111b

    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    .line 264
    const/16 v2, 0x111c

    const/16 v3, 0x111f

    invoke-virtual {v1, v2, v3}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    .line 266
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 268
    const/16 v2, 0x111c

    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    .line 270
    :cond_0
    const v2, 0xa000

    const v3, 0xafff

    invoke-virtual {v1, v2, v3}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_1
    :goto_0
    const-string v2, "Mms/ChannelUtils"

    const-string v3, "setDisableCMASSettings : End."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Mms/ChannelUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in setDisableCMASSettings channelUtils "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateSubscription(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "channelid"
    .parameter "value"

    .prologue
    .line 152
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "is_checked"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 155
    return-void
.end method
