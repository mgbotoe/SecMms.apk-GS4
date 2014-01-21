.class public Lcom/android/mms/spam/SpamUtils;
.super Ljava/lang/Object;
.source "SpamUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SpamUtils$RestoreSpamTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/SpamUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    return-void
.end method

.method static synthetic access$000(Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/android/mms/spam/SpamUtils;->extractSpamMessageInfo(Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private static extractSpamMessageInfo(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 8
    .parameter "resolver"
    .parameter "msgUri"
    .parameter "msgType"

    .prologue
    const/4 v2, 0x0

    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 163
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 176
    :goto_0
    return-object v2

    .line 167
    :cond_0
    const/4 v7, 0x0

    .line 169
    .local v7, values:Landroid/content/ContentValues;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {v6, p2}, Lcom/android/mms/spam/SpamUtils;->extractSpamMessageInfo(Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 173
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v2, v7

    .line 176
    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static extractSpamMessageInfo(Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .parameter "cursor"
    .parameter "msgType"

    .prologue
    .line 152
    const-string v0, "sms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {p0}, Lcom/android/mms/spam/SpamUtils;->extractSpamSmsInfo(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 154
    :cond_0
    const-string v0, "mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-static {p0}, Lcom/android/mms/spam/SpamUtils;->extractSpamMmsInfo(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static extractSpamMmsInfo(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 133
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 134
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "read"

    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 135
    const-string v1, "seen"

    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 136
    return-object v0
.end method

.method private static extractSpamSmsInfo(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 85
    const-string v1, "body"

    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 86
    const-string v1, "date"

    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 87
    const-string v1, "read"

    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 88
    return-object v0
.end method

.method public static restoreSpamMessage(JLjava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "msgId"
    .parameter "msgType"
    .parameter "msgInfo"

    .prologue
    .line 142
    const-string v0, "sms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {p0, p1, p3}, Lcom/android/mms/spam/SpamUtils;->restoreSpamSms(JLandroid/content/ContentValues;)Z

    move-result v0

    .line 147
    :goto_0
    return v0

    .line 144
    :cond_0
    const-string v0, "mms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-static {p0, p1, p3}, Lcom/android/mms/spam/SpamUtils;->restoreSpamMms(JLandroid/content/ContentValues;)Z

    move-result v0

    goto :goto_0

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static restoreSpamMms(JLandroid/content/ContentValues;)Z
    .locals 12
    .parameter "msgId"
    .parameter "msgInfo"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 94
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 98
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 105
    .local v9, uri:Landroid/net/Uri;
    :goto_0
    if-nez p2, :cond_0

    .line 106
    const-string v3, "mms"

    invoke-static {v1, v9, v3}, Lcom/android/mms/spam/SpamUtils;->extractSpamMessageInfo(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p2

    .line 110
    :cond_0
    if-nez p2, :cond_2

    .line 111
    const-string v3, "Mms/SpamUtils"

    const-string v4, "restoreSpamSms: nothing to restore"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    .line 129
    :goto_1
    return v3

    .line 101
    .end local v9           #uri:Landroid/net/Uri;
    :cond_1
    sget-object v3, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .restart local v9       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 116
    :cond_2
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v7

    .line 118
    .local v7, p:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_0
    invoke-virtual {v7, v9}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v8

    .line 119
    .local v8, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 120
    .local v2, inboxUri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    invoke-virtual {v1, v9, v11, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 129
    const/4 v3, 0x1

    goto :goto_1

    .line 121
    .end local v2           #inboxUri:Landroid/net/Uri;
    .end local v8           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :catch_0
    move-exception v6

    .line 122
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/SpamUtils"

    const-string v4, "restoreSpamMms: failed to restore MMS to Inbox"

    invoke-static {v3, v4, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v10

    .line 123
    goto :goto_1
.end method

.method public static restoreSpamSms(JLandroid/content/ContentValues;)Z
    .locals 10
    .parameter "msgId"
    .parameter "msgInfo"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 40
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 41
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v7, Landroid/provider/Telephony$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 44
    .local v5, uri:Landroid/net/Uri;
    if-nez p2, :cond_0

    .line 45
    const-string v7, "sms"

    invoke-static {v2, v5, v7}, Lcom/android/mms/spam/SpamUtils;->extractSpamMessageInfo(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p2

    .line 49
    :cond_0
    if-nez p2, :cond_1

    .line 50
    const-string v7, "Mms/SpamUtils"

    const-string v8, "restoreSpamSms: nothing to restore"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return v6

    .line 55
    :cond_1
    const-string v7, "address"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 57
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 58
    const-string v0, ""

    .line 59
    const-string v7, "address"

    const-string v8, ""

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    .line 67
    .local v3, threadId:J
    const-string v7, "thread_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    sget-object v7, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v7, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 71
    .local v1, inboxUri:Landroid/net/Uri;
    if-nez v1, :cond_4

    .line 72
    const-string v7, "Mms/SpamUtils"

    const-string v8, "restoreSpamSms: failed to restore SMS to Inbox"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v1           #inboxUri:Landroid/net/Uri;
    .end local v3           #threadId:J
    :cond_3
    new-instance v0, Ljava/lang/String;

    .end local v0           #address:Ljava/lang/String;
    const-string v7, "Unknown"

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 62
    .restart local v0       #address:Ljava/lang/String;
    const-string v7, "address"

    invoke-virtual {p2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 77
    .restart local v1       #inboxUri:Landroid/net/Uri;
    .restart local v3       #threadId:J
    :cond_4
    invoke-virtual {v2, v5, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    const/4 v6, 0x1

    goto :goto_0
.end method
