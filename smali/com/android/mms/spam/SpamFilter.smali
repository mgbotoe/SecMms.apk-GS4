.class public Lcom/android/mms/spam/SpamFilter;
.super Ljava/lang/Object;
.source "SpamFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SpamFilter$SpamFilterData;,
        Lcom/android/mms/spam/SpamFilter$SpamFilterCache;
    }
.end annotation


# static fields
.field public static final COLUMN_INDEX_CRITERIA:I = 0x4

.field public static final COLUMN_INDEX_ENABLE:I = 0x2

.field public static final COLUMN_INDEX_FILTER:I = 0x3

.field public static final COLUMN_INDEX_ID:I = 0x0

.field public static final COLUMN_INDEX_TYPE:I = 0x1

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CRITERIA:Ljava/lang/String; = "criteria"

.field public static final CRITERIA_ENDWITH:I = 0x2

.field public static final CRITERIA_EXACTLY_SAME:I = 0x0

.field public static final CRITERIA_INCLUDE:I = 0x3

.field public static final CRITERIA_STARTWITH:I = 0x1

.field public static final ENABLE:Ljava/lang/String; = "enable"

.field public static final FILTER:Ljava/lang/String; = "filter"

.field public static final MESSAGEBLOCK_MODE:Ljava/lang/String; = "messageblock_mode"

.field public static final MESSAGEBLOCK_MODE_ALL_NUMBERS:I = 0x1

.field public static final MESSAGEBLOCK_MODE_DEFAULT_VALUE:I = 0x2

.field public static final MESSAGEBLOCK_MODE_OFF:I = 0x0

.field public static final MESSAGEBLOCK_MODE_ONLY_BLACK_LIST:I = 0x2

.field public static final SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SPAM_MMS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SPAM_NUMBER_MIN_LENGTH:I = 0x3

.field public static final SPAM_SMS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SPAM_SMS_INBOX_CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "Mms/SpamFilter"

.field public static final TYPE:Ljava/lang/String; = "filter_type"

.field public static final TYPE_NUMBER:I = 0x0

.field public static final TYPE_STRING:I = 0x1

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "content://mms-sms/spam-filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    .line 49
    const-string v0, "content://mms-sms/spam-messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    .line 50
    const-string v0, "content://spamsms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    .line 51
    const-string v0, "content://spamsms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_INBOX_CONTENT_URI:Landroid/net/Uri;

    .line 52
    const-string v0, "content://spammms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/content/Context;ILjava/lang/String;)I
    .locals 17
    .parameter "context"
    .parameter "type"
    .parameter "filter"

    .prologue
    .line 121
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v14, idsBuilder:Ljava/lang/StringBuilder;
    const-string v1, "Mms/SpamFilter"

    const-string v2, "SpamFilter delete()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-eqz p0, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    :cond_0
    const/4 v15, 0x0

    .line 201
    :cond_1
    :goto_0
    return v15

    .line 127
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 129
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_3

    .line 130
    const-string v1, "Mms/SpamFilter"

    const-string v2, "cursor is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v15, 0x0

    goto :goto_0

    .line 135
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v1

    if-nez v1, :cond_7

    .line 136
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 137
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 138
    .local v13, id:I
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 139
    .local v12, filter_type:I
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, filter_string:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 142
    .local v10, criteria:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, REMOVE_WHERE:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 148
    move/from16 v0, p1

    if-ne v12, v0, :cond_4

    if-nez v10, :cond_4

    .line 149
    if-eqz p2, :cond_4

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    invoke-static/range {p2 .. p2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 151
    const-string v1, " "

    const-string v2, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 152
    const-string v1, "-"

    const-string v2, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 154
    :cond_5
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 155
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v8, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 156
    .local v15, row:I
    invoke-static/range {p1 .. p2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->delete(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    if-eqz v9, :cond_1

    .line 194
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 195
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 162
    .end local v15           #row:I
    :cond_6
    move/from16 v0, p1

    if-ne v12, v0, :cond_4

    if-nez v10, :cond_4

    :try_start_1
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v8, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 164
    .restart local v15       #row:I
    invoke-static/range {p1 .. p2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->delete(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    if-eqz v9, :cond_1

    .line 194
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 195
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 171
    .end local v8           #REMOVE_WHERE:Ljava/lang/String;
    .end local v10           #criteria:I
    .end local v11           #filter_string:Ljava/lang/String;
    .end local v12           #filter_type:I
    .end local v13           #id:I
    .end local v15           #row:I
    :cond_7
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 172
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_a

    .line 174
    :cond_8
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 175
    .restart local v13       #id:I
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 176
    .restart local v12       #filter_type:I
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 177
    .restart local v11       #filter_string:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 179
    .restart local v10       #criteria:I
    move/from16 v0, p1

    if-ne v12, v0, :cond_9

    if-nez v10, :cond_9

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 180
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, " , "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 184
    const-string v1, "-1"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 186
    .restart local v8       #REMOVE_WHERE:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v8, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 187
    .restart local v15       #row:I
    invoke-static/range {p1 .. p2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->delete(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    if-eqz v9, :cond_1

    .line 194
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 195
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 193
    .end local v8           #REMOVE_WHERE:Ljava/lang/String;
    .end local v10           #criteria:I
    .end local v11           #filter_string:Ljava/lang/String;
    .end local v12           #filter_type:I
    .end local v13           #id:I
    .end local v15           #row:I
    :cond_a
    if-eqz v9, :cond_b

    .line 194
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 195
    const/4 v9, 0x0

    .line 198
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filter_type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "filter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 199
    .local v16, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 200
    .restart local v15       #row:I
    invoke-static/range {p1 .. p2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->delete(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 193
    .end local v15           #row:I
    .end local v16           #selection:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_c

    .line 194
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 195
    const/4 v9, 0x0

    :cond_c
    throw v1
.end method

.method public static deleteAll(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 104
    const-string v1, "Mms/SpamFilter"

    const-string v2, "SpamFilter deleteAll()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    if-nez p0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, count:I
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->clear()V

    goto :goto_0
.end method

.method public static insert(Landroid/content/Context;ILjava/lang/String;ZI)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "type"
    .parameter "filter"
    .parameter "enable"
    .parameter "criteria"

    .prologue
    const/4 v3, 0x1

    .line 86
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    :cond_0
    const/4 v6, 0x0

    .line 100
    :goto_0
    return-object v6

    .line 91
    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v7, values:Landroid/content/ContentValues;
    const-string v2, "filter_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v2, "filter"

    invoke-virtual {v7, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v4, "enable"

    if-ne p3, v3, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v2, "criteria"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 97
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 98
    .local v1, id:I
    new-instance v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    move v2, p1

    move v3, p3

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    .line 99
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    invoke-static {v1, v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->insert(ILcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    goto :goto_0

    .line 94
    .end local v0           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v1           #id:I
    .end local v6           #uri:Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
