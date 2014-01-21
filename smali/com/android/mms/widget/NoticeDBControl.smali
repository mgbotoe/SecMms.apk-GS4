.class public Lcom/android/mms/widget/NoticeDBControl;
.super Ljava/lang/Object;
.source "NoticeDBControl.java"


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final CALLER_ID_SELECTION_WITHOUT_E164_PHONEEQUALS:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

.field private static final CONTACT_ID_COLUMN:I = 0x2

.field static final DESTROYED:Ljava/lang/String; = "destroyedWidget"

.field private static final MESSAGE_MMS_PART_CONTENT_URI:Landroid/net/Uri; = null

.field private static final MMS_PART_PROJECTION:[Ljava/lang/String; = null

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field private static final PHONE_NUMBER_COLUMN:I = 0x1

.field static final PROJECTION:[Ljava/lang/String; = null

.field static final WIDGET_ID:Ljava/lang/String; = "widget_id"

.field static final threadUri:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mHelper:Lcom/android/mms/widget/NoticeDBHelper;

.field mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "transport_type"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "locked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/widget/NoticeDBControl;->PROJECTION:[Ljava/lang/String;

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mid"

    aput-object v1, v0, v3

    const-string v1, "ct"

    aput-object v1, v0, v4

    const-string v1, "cl"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v6

    const-string v1, "text"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/widget/NoticeDBControl;->MMS_PART_PROJECTION:[Ljava/lang/String;

    .line 42
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "complete-conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/widget/NoticeDBControl;->threadUri:Landroid/net/Uri;

    .line 43
    const-string v0, "content://mms/part"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/widget/NoticeDBControl;->MESSAGE_MMS_PART_CONTENT_URI:Landroid/net/Uri;

    .line 49
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/widget/NoticeDBControl;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 50
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/widget/NoticeDBControl;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 63
    iput-object p1, p0, Lcom/android/mms/widget/NoticeDBControl;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/android/mms/widget/NoticeDBHelper;

    invoke-direct {v0, p1}, Lcom/android/mms/widget/NoticeDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mHelper:Lcom/android/mms/widget/NoticeDBHelper;

    .line 65
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mHelper:Lcom/android/mms/widget/NoticeDBHelper;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mHelper:Lcom/android/mms/widget/NoticeDBHelper;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeDBHelper;->close()V

    .line 264
    return-void
.end method

.method public delete(Ljava/lang/String;)I
    .locals 3
    .parameter "whereClause"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/android/mms/widget/NoticeDBHelper;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deletedSort(II)V
    .locals 8
    .parameter "widgetId"
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 81
    iget-object v4, p0, Lcom/android/mms/widget/NoticeDBControl;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v5}, Lcom/android/mms/widget/NoticeSettingManager;->addThreadCount(Landroid/content/Context;IZ)V

    .line 82
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDBControl;->query()Landroid/database/Cursor;

    move-result-object v0

    .line 85
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v2, mStringBuilder:Ljava/lang/StringBuilder;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v3, values:Landroid/content/ContentValues;
    move v1, p2

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 89
    const-string v4, "position"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 91
    const-string v4, "position"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v4, " = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v4, p0, Lcom/android/mms/widget/NoticeDBControl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/android/mms/widget/NoticeDBHelper;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v1           #i:I
    .end local v2           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 102
    const/4 v0, 0x0

    .line 100
    :cond_0
    throw v4

    .line 97
    :catch_0
    move-exception v4

    .line 100
    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 102
    :goto_1
    const/4 v0, 0x0

    .line 105
    :cond_1
    return-void

    .line 100
    .restart local v1       #i:I
    .restart local v2       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_2
    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public getContactId(Ljava/lang/String;)J
    .locals 13
    .parameter "number"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 137
    const-wide/16 v6, 0x0

    .line 139
    .local v6, contactId:J
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, normalizedNumber:Ljava/lang/String;
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 141
    .local v10, minMatch:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 143
    .local v12, numberLen:Ljava/lang/String;
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

    .line 144
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v10, v4, v0

    aput-object v12, v4, v1

    aput-object v11, v4, v2

    const/4 v0, 0x3

    aput-object v12, v4, v0

    const/4 v0, 0x4

    aput-object v11, v4, v0

    .line 147
    .local v4, args:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 149
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/widget/NoticeDBControl;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/widget/NoticeDBControl;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 152
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 163
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    .line 164
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_2
    return-wide v6

    .line 158
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v9

    .line 161
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    if-eqz v8, :cond_2

    goto :goto_1

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 164
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_4
    throw v0
.end method

.method public getThreadId(Ljava/lang/String;)J
    .locals 3
    .parameter "address"

    .prologue
    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 132
    .local v0, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDBControl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public idQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "selectionString"

    .prologue
    const/4 v4, 0x0

    .line 241
    const/4 v8, 0x0

    .line 242
    .local v8, cursor:Landroid/database/Cursor;
    const/16 v0, 0x13

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "message_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "thread_id"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "raw_contact_id"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "contact_id"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "display_number"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "date"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "subject"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "current"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "count"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "marked"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "mark_count"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "photo"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "type"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    const-string v1, "data_id"

    aput-object v1, v2, v0

    const/16 v0, 0x10

    const-string v1, "position"

    aput-object v1, v2, v0

    const/16 v0, 0x11

    const-string v1, "widget_id"

    aput-object v1, v2, v0

    const/16 v0, 0x12

    const-string v1, "display_name_primary"

    aput-object v1, v2, v0

    .line 243
    .local v2, columns:[Ljava/lang/String;
    const-string v7, "position ASC"

    .line 244
    .local v7, orderBy:Ljava/lang/String;
    move-object v3, p1

    .line 245
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/android/mms/widget/NoticeDBHelper;->getTableName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 246
    return-object v8
.end method

.method public insert(Landroid/content/ContentValues;)J
    .locals 3
    .parameter "values"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/android/mms/widget/NoticeDBHelper;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public query()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 108
    const/4 v8, 0x0

    .line 109
    .local v8, cursor:Landroid/database/Cursor;
    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "raw_contact_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "contact_id"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "display_number"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "photo"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "type"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "data_id"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "position"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "widget_id"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "display_name_primary"

    aput-object v1, v2, v0

    .line 110
    .local v2, columns:[Ljava/lang/String;
    const-string v3, ""

    .line 111
    .local v3, selection:Ljava/lang/String;
    const-string v7, "_id ASC"

    .line 112
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/android/mms/widget/NoticeDBHelper;->getTableName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 113
    return-object v8
.end method

.method public queryMmsBody(I)Ljava/lang/String;
    .locals 10
    .parameter "pduId"

    .prologue
    const/4 v9, 0x0

    .line 171
    const/4 v8, 0x0

    .line 172
    .local v8, partCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 175
    .local v6, body:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/widget/NoticeDBControl;->MESSAGE_MMS_PART_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/widget/NoticeDBControl;->MMS_PART_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(mid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 177
    if-nez v8, :cond_2

    .line 192
    if-eqz v8, :cond_0

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 194
    const/4 v8, 0x0

    :cond_0
    move-object v0, v9

    .line 197
    :goto_0
    return-object v0

    .line 187
    .local v7, contentType:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v0, "application/smil"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    .end local v7           #contentType:Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    const-string v0, "ct"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 184
    .restart local v7       #contentType:Ljava/lang/String;
    const-string v0, "text/plain"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    const-string v0, "text"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 192
    .end local v7           #contentType:Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 194
    const/4 v8, 0x0

    :cond_4
    move-object v0, v6

    .line 197
    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 194
    const/4 v8, 0x0

    .line 192
    :cond_5
    throw v0
.end method

.method public queryReceiveMessage(J)Landroid/database/Cursor;
    .locals 6
    .parameter "thread_id"

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " And ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND hidden=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/widget/NoticeDBControl;->threadUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/widget/NoticeDBControl;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "normalized_date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryReceiveMessage(JI)Landroid/database/Cursor;
    .locals 7
    .parameter "thread_id"
    .parameter "index"

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " And ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND hidden=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/widget/NoticeDBControl;->threadUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/widget/NoticeDBControl;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "normalized_date DESC limit "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryforLabel()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 221
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v8, 0x0

    .line 223
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "contact_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "data_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "position"

    aput-object v1, v2, v0

    .line 226
    .local v2, columns:[Ljava/lang/String;
    const-string v3, ""

    .line 227
    .local v3, selection:Ljava/lang/String;
    const-string v7, "_id ASC"

    .line 229
    .local v7, orderBy:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/android/mms/widget/NoticeDBHelper;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 237
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 231
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v7       #orderBy:Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 232
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    move-object v8, v10

    .line 233
    goto :goto_0

    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #e:Ljava/lang/Exception;
    :cond_0
    move-object v8, v10

    .line 237
    goto :goto_0
.end method

.method public queryforThread()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 201
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/4 v8, 0x0

    .line 203
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "thread_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "display_number"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "count"

    aput-object v1, v2, v0

    .line 206
    .local v2, columns:[Ljava/lang/String;
    const-string v3, ""

    .line 207
    .local v3, selection:Ljava/lang/String;
    const-string v7, "_id ASC"

    .line 209
    .local v7, orderBy:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/android/mms/widget/NoticeDBHelper;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-string v5, "display_number"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 217
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 211
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v7       #orderBy:Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 212
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    move-object v8, v10

    .line 213
    goto :goto_0

    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #e:Ljava/lang/Exception;
    :cond_0
    move-object v8, v10

    .line 217
    goto :goto_0
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 3
    .parameter "values"
    .parameter "whereClause"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/android/mms/widget/NoticeDBHelper;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public widgetid_query()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 250
    const/4 v8, 0x0

    .line 251
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "widget_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "destroyedWidget"

    aput-object v1, v2, v0

    .line 252
    .local v2, columns:[Ljava/lang/String;
    const-string v3, ""

    .line 253
    .local v3, selection:Ljava/lang/String;
    const-string v7, "_id ASC"

    .line 254
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/android/mms/widget/NoticeDBHelper;->getWidgetIdTableName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 255
    return-object v8
.end method

.method public widgetid_update(Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 3
    .parameter "values"
    .parameter "whereClause"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDBControl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/android/mms/widget/NoticeDBHelper;->getWidgetIdTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
