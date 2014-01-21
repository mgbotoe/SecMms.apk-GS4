.class public Lcom/android/mms/ui/RecipientsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "RecipientsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RecipientsAdapter$PhotoQuery;
    }
.end annotation


# static fields
.field private static final CONTACT_ID_INDEX:I = 0x1

.field private static final CONTACT_LIST_FILTER_URI:Landroid/net/Uri; = null

.field private static final EMAIL_FILTER_URI:Landroid/net/Uri; = null

.field private static final LABEL_INDEX:I = 0x4

.field private static final MIME_TYPE_INDEX:I = 0x6

.field private static final NAME_INDEX:I = 0x5

.field private static final NUMBER_INDEX:I = 0x3

.field private static final PHONE_FILTER_URI:Landroid/net/Uri; = null

.field private static final PHOTO_CACHE_SIZE:I = 0x1e

.field private static final PHOTO_THUMBNAIL_URI:I = 0x7

.field private static final PROJECTION_PHONE:[Ljava/lang/String; = null

.field private static final SORT_ORDER:Ljava/lang/String; = "times_contacted DESC,mimetype DESC,sort_key,data2"

.field private static final TAG:Ljava/lang/String; = "Mms/RecipientsAdapter"

.field private static final TYPE_INDEX:I = 0x2


# instance fields
.field private mChineseHighlightHelper:Lcom/samsung/mms/hanzi/ChineseHighlightHelper;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mHighlightedPrefix:[C

.field private mPatternString:Ljava/lang/String;

.field private mPatternStringKor:Ljava/lang/String;

.field private mPatternStringRaw:Ljava/lang/String;

.field private mPhotoCacheMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field

.field public mRecipientsAdapterCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 104
    const-string v0, "content://com.android.contacts/data/phone_emails/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->EMAIL_FILTER_URI:Landroid/net/Uri;

    .line 105
    const-string v0, "content://com.android.contacts/data/callables/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->PHONE_FILTER_URI:Landroid/net/Uri;

    .line 108
    const-string v0, "content://com.android.contacts/contacts_list/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->CONTACT_LIST_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 128
    const v0, 0x7f040065

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 113
    iput-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    .line 115
    iput v2, p0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsAdapterCount:I

    .line 119
    iput-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mChineseHighlightHelper:Lcom/samsung/mms/hanzi/ChineseHighlightHelper;

    .line 129
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 131
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    .line 133
    new-instance v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;

    invoke-direct {v0, p1}, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mChineseHighlightHelper:Lcom/samsung/mms/hanzi/ChineseHighlightHelper;

    .line 134
    return-void
.end method

.method private fetchPhotoAsync(Landroid/net/Uri;)V
    .locals 9
    .parameter "photoThumbnailUri"

    .prologue
    const/4 v3, 0x0

    .line 225
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/mms/ui/RecipientsAdapter$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 227
    .local v8, photoCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 229
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 232
    .local v7, photoBytes:[B
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    invoke-virtual {v0, p1, v7}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 236
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 241
    .end local v7           #photoBytes:[B
    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_1
    return-void

    .line 233
    .restart local v7       #photoBytes:[B
    :catch_0
    move-exception v6

    .line 234
    .local v6, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 238
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v7           #photoBytes:[B
    :catch_1
    move-exception v6

    .line 239
    .restart local v6       #ex:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 241
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private findSearchKeywordPosition(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z
    .locals 5
    .parameter "p"
    .parameter "text"
    .parameter "indices"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 400
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 402
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 403
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, temp:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    aput v4, p3, v3

    .line 405
    aget v3, p3, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, p3, v2

    .line 406
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePinyinSearch()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 419
    .end local v1           #temp:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 411
    .restart local v1       #temp:Ljava/lang/String;
    :cond_1
    aget v3, p3, v2

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    aget v3, p3, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    aget v3, p3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x900

    if-lt v3, v4, :cond_0

    aget v3, p3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xbff

    if-ge v3, v4, :cond_0

    .line 413
    aget v3, p3, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/RecipientsAdapter;->isDependentVowel(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    aget v3, p3, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p3, v2

    goto :goto_0

    .end local v1           #temp:Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 419
    goto :goto_0
.end method

.method private getChosungID(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "code"

    .prologue
    const/4 v4, 0x0

    .line 750
    const/4 v7, 0x0

    .line 756
    .local v7, contacts_cursor:Landroid/database/Cursor;
    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->CONTACT_LIST_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 758
    .local v1, contacts_uri:Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    .local v6, contactIdBuilder:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 761
    .local v9, searchResultCount:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    .line 766
    .local v2, contacts_projection:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "sort_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 773
    :cond_0
    :goto_0
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 774
    add-int/lit8 v9, v9, 0x1

    .line 775
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-interface {v7}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 782
    :catch_0
    move-exception v8

    .line 783
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MMS/RecipientsAdapter"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 786
    if-eqz v7, :cond_1

    .line 787
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 788
    .end local v8           #e:Ljava/lang/Exception;
    :goto_1
    const/4 v7, 0x0

    .line 792
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 786
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 787
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 788
    const/4 v7, 0x0

    .line 786
    :cond_2
    throw v0

    :cond_3
    if-eqz v7, :cond_1

    .line 787
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private getCursorForCallLogContacts(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "keyword"

    .prologue
    const/4 v4, 0x0

    .line 847
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 849
    .local v9, len:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_2

    .line 850
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 852
    .local v6, c:C
    const/16 v0, 0x30

    if-lt v6, v0, :cond_1

    const/16 v0, 0x39

    if-gt v6, v0, :cond_1

    .line 849
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 855
    :cond_1
    const/16 v0, 0x2b

    if-eq v6, v0, :cond_0

    const/16 v0, 0x23

    if-eq v6, v0, :cond_0

    const/16 v0, 0x2a

    if-eq v6, v0, :cond_0

    .line 886
    .end local v6           #c:C
    :goto_1
    return-object v4

    .line 862
    :cond_2
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id AS _id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_id AS contact_id"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "numbertype AS data2"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "number AS data1"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "numbertype AS data3"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "number AS display_name"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "type AS mimetype"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string v3, "null AS photo_thumb_uri"

    aput-object v3, v2, v0

    .line 873
    .local v2, PROJECTION_LOGS:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 875
    .local v7, cursor:Landroid/database/Cursor;
    const-string v11, "content://logs/call/search_log"

    .line 876
    .local v11, uriProviderText:Ljava/lang/String;
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 878
    .local v1, uri:Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 879
    .local v10, selection:Ljava/lang/StringBuilder;
    const-string v0, "name IS Null AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "number <> \'-1\' AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number LIKE \'%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v4, v7

    .line 886
    goto :goto_1
.end method

.method private isDependentSigns(C)Z
    .locals 10
    .parameter "c"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 574
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, byteInHex:Ljava/lang/String;
    const/4 v8, 0x4

    new-array v0, v8, [Ljava/lang/String;

    const-string v8, "900"

    aput-object v8, v0, v7

    const-string v8, "901"

    aput-object v8, v0, v6

    const/4 v8, 0x2

    const-string v9, "902"

    aput-object v9, v0, v8

    const/4 v8, 0x3

    const-string v9, "903"

    aput-object v9, v0, v8

    .line 578
    .local v0, Signs:[Ljava/lang/String;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 579
    .local v5, str:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 583
    .end local v5           #str:Ljava/lang/String;
    :goto_1
    return v6

    .line 578
    .restart local v5       #str:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v5           #str:Ljava/lang/String;
    :cond_1
    move v6, v7

    .line 583
    goto :goto_1
.end method

.method private isDependentVowel(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 423
    sparse-switch p1, :sswitch_data_0

    .line 569
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 567
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 423
    nop

    :sswitch_data_0
    .sparse-switch
        0x93a -> :sswitch_0
        0x93b -> :sswitch_0
        0x93e -> :sswitch_0
        0x93f -> :sswitch_0
        0x940 -> :sswitch_0
        0x941 -> :sswitch_0
        0x942 -> :sswitch_0
        0x943 -> :sswitch_0
        0x944 -> :sswitch_0
        0x945 -> :sswitch_0
        0x946 -> :sswitch_0
        0x947 -> :sswitch_0
        0x948 -> :sswitch_0
        0x949 -> :sswitch_0
        0x94a -> :sswitch_0
        0x94b -> :sswitch_0
        0x94c -> :sswitch_0
        0x94d -> :sswitch_0
        0x94e -> :sswitch_0
        0x94f -> :sswitch_0
        0x9be -> :sswitch_0
        0x9bf -> :sswitch_0
        0x9c0 -> :sswitch_0
        0x9c1 -> :sswitch_0
        0x9c2 -> :sswitch_0
        0x9c3 -> :sswitch_0
        0x9c4 -> :sswitch_0
        0x9c5 -> :sswitch_0
        0x9c6 -> :sswitch_0
        0x9c7 -> :sswitch_0
        0x9c8 -> :sswitch_0
        0x9cb -> :sswitch_0
        0x9cc -> :sswitch_0
        0xa3e -> :sswitch_0
        0xa3f -> :sswitch_0
        0xa40 -> :sswitch_0
        0xa41 -> :sswitch_0
        0xa42 -> :sswitch_0
        0xa43 -> :sswitch_0
        0xa44 -> :sswitch_0
        0xa45 -> :sswitch_0
        0xa46 -> :sswitch_0
        0xa47 -> :sswitch_0
        0xa48 -> :sswitch_0
        0xa49 -> :sswitch_0
        0xa4a -> :sswitch_0
        0xa4b -> :sswitch_0
        0xa4c -> :sswitch_0
        0xabe -> :sswitch_0
        0xabf -> :sswitch_0
        0xac0 -> :sswitch_0
        0xac1 -> :sswitch_0
        0xac2 -> :sswitch_0
        0xac3 -> :sswitch_0
        0xac4 -> :sswitch_0
        0xac5 -> :sswitch_0
        0xac6 -> :sswitch_0
        0xac7 -> :sswitch_0
        0xac8 -> :sswitch_0
        0xac9 -> :sswitch_0
        0xaca -> :sswitch_0
        0xacb -> :sswitch_0
        0xacc -> :sswitch_0
        0xb3e -> :sswitch_0
        0xb3f -> :sswitch_0
        0xb40 -> :sswitch_0
        0xb41 -> :sswitch_0
        0xb42 -> :sswitch_0
        0xb43 -> :sswitch_0
        0xb44 -> :sswitch_0
        0xb45 -> :sswitch_0
        0xb46 -> :sswitch_0
        0xb47 -> :sswitch_0
        0xb48 -> :sswitch_0
        0xb4b -> :sswitch_0
        0xb4c -> :sswitch_0
        0xbbe -> :sswitch_0
        0xbbf -> :sswitch_0
        0xbc0 -> :sswitch_0
        0xbc1 -> :sswitch_0
        0xbc2 -> :sswitch_0
        0xbc3 -> :sswitch_0
        0xbc4 -> :sswitch_0
        0xbc5 -> :sswitch_0
        0xbc6 -> :sswitch_0
        0xbc7 -> :sswitch_0
        0xbc8 -> :sswitch_0
        0xbca -> :sswitch_0
        0xbcb -> :sswitch_0
        0xbcc -> :sswitch_0
        0xc3e -> :sswitch_0
        0xc3f -> :sswitch_0
        0xc40 -> :sswitch_0
        0xc41 -> :sswitch_0
        0xc42 -> :sswitch_0
        0xc43 -> :sswitch_0
        0xc44 -> :sswitch_0
        0xc45 -> :sswitch_0
        0xc46 -> :sswitch_0
        0xc47 -> :sswitch_0
        0xc48 -> :sswitch_0
        0xc49 -> :sswitch_0
        0xc4a -> :sswitch_0
        0xc4b -> :sswitch_0
        0xc4c -> :sswitch_0
        0xcbe -> :sswitch_0
        0xcbf -> :sswitch_0
        0xcc0 -> :sswitch_0
        0xcc1 -> :sswitch_0
        0xcc2 -> :sswitch_0
        0xcc3 -> :sswitch_0
        0xcc4 -> :sswitch_0
        0xcc5 -> :sswitch_0
        0xcc6 -> :sswitch_0
        0xcc7 -> :sswitch_0
        0xcc8 -> :sswitch_0
        0xcc9 -> :sswitch_0
        0xcca -> :sswitch_0
        0xccb -> :sswitch_0
        0xccc -> :sswitch_0
        0xce2 -> :sswitch_0
        0xce3 -> :sswitch_0
        0xd3e -> :sswitch_0
        0xd40 -> :sswitch_0
        0xd41 -> :sswitch_0
        0xd42 -> :sswitch_0
        0xd43 -> :sswitch_0
        0xd44 -> :sswitch_0
        0xd45 -> :sswitch_0
        0xd46 -> :sswitch_0
        0xd47 -> :sswitch_0
        0xd48 -> :sswitch_0
        0xd62 -> :sswitch_0
        0xd63 -> :sswitch_0
        0xdef -> :sswitch_0
    .end sparse-switch
.end method

.method private queryContactsData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "contactWhereArgs"

    .prologue
    const/4 v9, 0x0

    .line 797
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 798
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v0, "contact_id"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " IN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mimetype"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mimetype"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    const-string v5, "display_name ASC"

    .line 819
    .local v5, orderByCause:Ljava/lang/String;
    const-string v0, "Mms/RecipientsAdapter"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const/4 v6, 0x0

    .line 823
    .local v6, cursor:Landroid/database/Cursor;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 826
    .local v1, content_uri:Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 837
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 838
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v6, v9

    .line 842
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    return-object v6

    .line 833
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 834
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "Mms/RecipientsAdapter"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private tryFetchPhoto(Landroid/net/Uri;)[B
    .locals 4
    .parameter "photoThumbnailUri"

    .prologue
    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, photoBytes:[B
    if-eqz p1, :cond_1

    .line 211
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 218
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RecipientsAdapter;->fetchPhotoAsync(Landroid/net/Uri;)V

    .line 221
    :cond_1
    return-object v2

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private usefulAsDigits(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "cons"

    .prologue
    .line 723
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 725
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 726
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 728
    .local v0, c:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 725
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 731
    :cond_1
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x28

    if-eq v0, v3, :cond_0

    const/16 v3, 0x29

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    const/16 v3, 0x23

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    .line 735
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 738
    :cond_2
    const/16 v3, 0x61

    if-lt v0, v3, :cond_3

    const/16 v3, 0x7a

    if-le v0, v3, :cond_0

    .line 742
    :cond_3
    const/4 v3, 0x0

    .line 745
    .end local v0           #c:C
    :goto_1
    return v3

    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 31
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 248
    const v27, 0x7f0b001a

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 249
    .local v14, name:Landroid/widget/TextView;
    const v27, 0x7f0b021f

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 250
    .local v10, label:Landroid/widget/TextView;
    const v27, 0x7f0b021e

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 251
    .local v16, number:Landroid/widget/TextView;
    const v27, 0x7f0b021b

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 252
    .local v5, avatar:Landroid/widget/ImageView;
    const/16 v21, 0x0

    .line 253
    .local v21, prefixForIndian:[C
    const/16 v27, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 256
    .local v26, type:I
    const/4 v11, 0x0

    .line 257
    .local v11, labelText:Ljava/lang/CharSequence;
    const/16 v27, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 259
    .local v13, mimeType:Ljava/lang/String;
    const/16 v20, 0x0

    .line 260
    .local v20, pictureDataByte:[B
    const/16 v27, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 261
    .local v25, thumbnailUriAsString:Ljava/lang/String;
    const/16 v19, 0x0

    .line 263
    .local v19, photoThumbnailUri:Landroid/net/Uri;
    if-eqz v25, :cond_4

    :try_start_0
    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 267
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/ui/RecipientsAdapter;->tryFetchPhoto(Landroid/net/Uri;)[B

    move-result-object v20

    .line 268
    const/4 v6, 0x0

    .line 269
    .local v6, bm:Landroid/graphics/Bitmap;
    if-eqz v20, :cond_5

    .line 271
    const/16 v27, 0x0

    :try_start_1
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 272
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    :goto_1
    const/16 v20, 0x0

    .line 279
    const/4 v6, 0x0

    .line 286
    :goto_2
    const-string v27, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const/16 v28, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move/from16 v1, v26

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 298
    :goto_3
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v27

    if-eqz v27, :cond_0

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v11, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v27

    const/16 v28, 0xa0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 299
    :cond_0
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    :goto_4
    const/16 v27, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 314
    .local v15, nameText:Ljava/lang/String;
    const/16 v27, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 315
    .local v17, numberText:Ljava/lang/String;
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringKor:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toCharArray()[C

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/RecipientsAdapter;->mHighlightedPrefix:[C

    .line 317
    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mHighlightedPrefix:[C

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v15, v1}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v21

    .line 320
    const/16 v18, 0x0

    .line 321
    .local v18, p:Ljava/util/regex/Pattern;
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v9, v0, [I

    .line 322
    .local v9, indices:[I
    const/4 v12, 0x0

    .line 324
    .local v12, matchNameText:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChoseongSearch()Z

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringKor:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/mms/util/HangulUtils;->isIncludingKorean(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringKor:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/mms/util/HangulUtils;->haveKoreanConsonants(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringKor:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 327
    invoke-static {v15}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 337
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12, v9}, Lcom/android/mms/ui/RecipientsAdapter;->findSearchKeywordPosition(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 338
    if-eqz v21, :cond_1

    .line 339
    const/16 v27, 0x1

    const/16 v28, 0x0

    aget v28, v9, v28

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    aput v28, v9, v27

    .line 340
    :cond_1
    new-instance v22, Landroid/text/SpannableString;

    move-object/from16 v0, v22

    invoke-direct {v0, v15}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 341
    .local v22, span:Landroid/text/Spannable;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteTheme()Z

    move-result v27

    if-eqz v27, :cond_d

    .line 342
    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const v28, -0xff852e

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v28, 0x0

    aget v28, v9, v28

    const/16 v29, 0x1

    aget v29, v9, v29

    const/16 v30, 0x21

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 345
    :goto_6
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    .end local v22           #span:Landroid/text/Spannable;
    :goto_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v9}, Lcom/android/mms/ui/RecipientsAdapter;->findSearchKeywordPosition(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 357
    new-instance v22, Landroid/text/SpannableString;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 358
    .restart local v22       #span:Landroid/text/Spannable;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteTheme()Z

    move-result v27

    if-eqz v27, :cond_10

    .line 359
    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const v28, -0xff852e

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v28, 0x0

    aget v28, v9, v28

    const/16 v29, 0x1

    aget v29, v9, v29

    const/16 v30, 0x21

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 362
    :goto_8
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    .end local v22           #span:Landroid/text/Spannable;
    :goto_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableRecipientSearchByCharMatchingDigit()Z

    move-result v27

    if-nez v27, :cond_2

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 370
    new-instance v23, Landroid/text/SpannableString;

    move-object/from16 v0, v23

    invoke-direct {v0, v15}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 371
    .local v23, spanNameText:Landroid/text/Spannable;
    new-instance v24, Landroid/text/SpannableString;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 372
    .local v24, spanNumberText:Landroid/text/Spannable;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteTheme()Z

    move-result v27

    if-eqz v27, :cond_12

    .line 373
    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const v28, -0xff852e

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v28, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x21

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 378
    :goto_a
    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f09000a

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v28, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x21

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 380
    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    .end local v23           #spanNameText:Landroid/text/Spannable;
    .end local v24           #spanNumberText:Landroid/text/Spannable;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisplayRecipientVzwLayout()Z

    move-result v27

    if-eqz v27, :cond_13

    .line 387
    const/16 v27, 0x1

    const/high16 v28, 0x4190

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f090009

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    const/16 v27, 0x2

    const/high16 v28, 0x4180

    move-object/from16 v0, v16

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 394
    :cond_3
    :goto_b
    const-string v27, "Mms/RecipientsAdapter"

    const-string v28, "bind complete()"

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void

    .line 263
    .end local v6           #bm:Landroid/graphics/Bitmap;
    .end local v9           #indices:[I
    .end local v12           #matchNameText:Ljava/lang/String;
    .end local v15           #nameText:Ljava/lang/String;
    .end local v17           #numberText:Ljava/lang/String;
    .end local v18           #p:Ljava/util/regex/Pattern;
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 264
    :catch_0
    move-exception v8

    .line 265
    .local v8, ex:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 273
    .end local v8           #ex:Ljava/lang/Exception;
    .restart local v6       #bm:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v7

    .line 274
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v27, "Mms/RecipientsAdapter"

    const-string v28, "bindView Error"

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 278
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v27

    const/16 v20, 0x0

    .line 279
    const/4 v6, 0x0

    .line 278
    throw v27

    .line 283
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 289
    :cond_6
    const-string v27, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const/16 v28, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move/from16 v1, v26

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    goto/16 :goto_3

    .line 293
    :cond_7
    const-string v11, ""

    goto/16 :goto_3

    .line 301
    :cond_8
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisplayRecipientVzwLayout()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 303
    const/16 v27, 0x2

    const/high16 v28, 0x4180

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 309
    :cond_9
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f090009

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 304
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 305
    const/16 v27, 0x2

    const/high16 v28, 0x41a0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_c

    .line 329
    .restart local v9       #indices:[I
    .restart local v12       #matchNameText:Ljava/lang/String;
    .restart local v15       #nameText:Ljava/lang/String;
    .restart local v17       #numberText:Ljava/lang/String;
    .restart local v18       #p:Ljava/util/regex/Pattern;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 330
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    .line 333
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 334
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    .line 344
    .restart local v22       #span:Landroid/text/Spannable;
    :cond_d
    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const v28, -0xcc4a16

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v28, 0x0

    aget v28, v9, v28

    const/16 v29, 0x1

    aget v29, v9, v29

    const/16 v30, 0x21

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 348
    .end local v22           #span:Landroid/text/Spannable;
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePinyinSearch()Z

    move-result v27

    if-eqz v27, :cond_f

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mChineseHighlightHelper:Lcom/samsung/mms/hanzi/ChineseHighlightHelper;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringRaw:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v15, v14}, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->findHighlight(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_7

    .line 352
    :cond_f
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 361
    .restart local v22       #span:Landroid/text/Spannable;
    :cond_10
    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const v28, -0xcc4a16

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v28, 0x0

    aget v28, v9, v28

    const/16 v29, 0x1

    aget v29, v9, v29

    const/16 v30, 0x21

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_8

    .line 364
    .end local v22           #span:Landroid/text/Spannable;
    :cond_11
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 375
    .restart local v23       #spanNameText:Landroid/text/Spannable;
    .restart local v24       #spanNumberText:Landroid/text/Spannable;
    :cond_12
    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const v28, -0xcc4a16

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v28, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x21

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_a

    .line 390
    .end local v23           #spanNameText:Landroid/text/Spannable;
    .end local v24           #spanNumberText:Landroid/text/Spannable;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 391
    const/16 v27, 0x2

    const/high16 v28, 0x41b0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 392
    const/16 v27, 0x2

    const/high16 v28, 0x41a0

    move-object/from16 v0, v16

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_b
.end method

.method public close()V
    .locals 1

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 891
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 892
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 894
    :cond_0
    return-void
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 14
    .parameter "cursor"

    .prologue
    const/4 v10, 0x3

    const/16 v13, 0x21

    const/4 v12, 0x0

    .line 139
    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, name:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 141
    .local v8, type:I
    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, label:Ljava/lang/String;
    const/4 v9, 0x6

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, mimeType:Ljava/lang/String;
    const/4 v0, 0x0

    .line 149
    .local v0, displayLabel:Ljava/lang/CharSequence;
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    .line 150
    const-string v5, ""

    .line 155
    .local v5, number:Ljava/lang/String;
    :goto_0
    const-string v9, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 156
    iget-object v9, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v8, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 163
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    .line 196
    .end local v5           #number:Ljava/lang/String;
    :goto_2
    return-object v5

    .line 152
    :cond_0
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #number:Ljava/lang/String;
    goto :goto_0

    .line 157
    :cond_1
    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 158
    iget-object v9, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v8, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 160
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 167
    :cond_3
    if-nez v4, :cond_4

    .line 168
    const-string v4, ""

    .line 180
    :goto_3
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 181
    .local v6, out:Landroid/text/SpannableString;
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v2

    .line 183
    .local v2, len:I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 184
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "name"

    invoke-direct {v9, v10, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 189
    :goto_4
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, person_id:Ljava/lang/String;
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "person_id"

    invoke-direct {v9, v10, v7}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 192
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "label"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 194
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "number"

    invoke-direct {v9, v10, v5}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v6

    .line 196
    goto :goto_2

    .line 176
    .end local v2           #len:I
    .end local v6           #out:Landroid/text/SpannableString;
    .end local v7           #person_id:Ljava/lang/String;
    :cond_4
    const-string v9, ", "

    const-string v10, " "

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    const-string v11, " "

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 186
    .restart local v2       #len:I
    .restart local v6       #out:Landroid/text/SpannableString;
    :cond_5
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "name"

    invoke-direct {v9, v10, v5}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 17
    .parameter "constraint"

    .prologue
    .line 592
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 593
    :cond_0
    const-string v1, "Mms/RecipientsAdapter"

    const-string v3, "runQuery:exit by no constraints"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const/4 v13, 0x0

    .line 713
    :cond_1
    :goto_0
    return-object v13

    .line 598
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 599
    .local v12, patternString:Ljava/lang/String;
    invoke-static {v12}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    .line 607
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringKor:Ljava/lang/String;

    .line 608
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePinyinSearch()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 609
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringRaw:Ljava/lang/String;

    .line 614
    :cond_3
    const-string v9, ""

    .line 615
    .local v9, displayPhone:Ljava/lang/String;
    const/4 v8, 0x0

    .line 616
    .local v8, displayCons:Ljava/lang/String;
    const/4 v7, 0x0

    .line 617
    .local v7, cons:Ljava/lang/String;
    const-string v11, ""

    .line 618
    .local v11, mimeType:Ljava/lang/String;
    const-string v15, ""

    .line 620
    .local v15, thumbnailUriAsString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 623
    const/16 v1, 0x1f4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 624
    const/4 v1, 0x0

    const/16 v3, 0x1f4

    invoke-virtual {v7, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 629
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableRecipientSearchByCharMatchingDigit()Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/RecipientsAdapter;->usefulAsDigits(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 630
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 631
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 632
    const-string v9, ""

    .line 639
    :cond_4
    :goto_2
    const/4 v13, 0x0

    .line 640
    .local v13, phoneCursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 645
    .local v10, logsCursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 646
    .local v2, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 647
    sget-object v1, Lcom/android/mms/ui/RecipientsAdapter;->EMAIL_FILTER_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 651
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "times_contacted DESC,mimetype DESC,sort_key,data2"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 653
    if-eqz v13, :cond_9

    .line 654
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsAdapterCount:I

    .line 655
    const-string v1, "Mms/RecipientsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runQuery,results="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",const len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddLogsToRecipientSearchList()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 661
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/mms/ui/RecipientsAdapter;->getCursorForCallLogContacts(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 663
    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 664
    const/16 v1, 0x8

    new-array v14, v1, [Ljava/lang/Object;

    .line 665
    .local v14, result:[Ljava/lang/Object;
    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v1

    .line 666
    const/4 v1, 0x1

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v14, v1

    .line 667
    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v1

    .line 668
    const/4 v1, 0x3

    aput-object v9, v14, v1

    .line 675
    const/4 v1, 0x4

    const-string v3, "\u00a0"

    aput-object v3, v14, v1

    .line 676
    const/4 v1, 0x5

    aput-object v8, v14, v1

    .line 677
    const/4 v1, 0x6

    aput-object v11, v14, v1

    .line 678
    const/4 v1, 0x7

    aput-object v15, v14, v1

    .line 680
    new-instance v16, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 681
    .local v16, translated:Landroid/database/MatrixCursor;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 683
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddLogsToRecipientSearchList()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    .line 684
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    const/4 v4, 0x1

    aput-object v13, v3, v4

    const/4 v4, 0x2

    aput-object v10, v3, v4

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v13, v1

    goto/16 :goto_0

    .line 626
    .end local v2           #uri:Landroid/net/Uri;
    .end local v10           #logsCursor:Landroid/database/Cursor;
    .end local v13           #phoneCursor:Landroid/database/Cursor;
    .end local v14           #result:[Ljava/lang/Object;
    .end local v16           #translated:Landroid/database/MatrixCursor;
    :cond_6
    move-object v8, v7

    goto/16 :goto_1

    .line 634
    :cond_7
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 649
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v10       #logsCursor:Landroid/database/Cursor;
    .restart local v13       #phoneCursor:Landroid/database/Cursor;
    :cond_8
    sget-object v1, Lcom/android/mms/ui/RecipientsAdapter;->PHONE_FILTER_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_3

    .line 657
    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsAdapterCount:I

    goto/16 :goto_4

    .line 688
    .restart local v14       #result:[Ljava/lang/Object;
    .restart local v16       #translated:Landroid/database/MatrixCursor;
    :cond_a
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    const/4 v4, 0x1

    aput-object v13, v3, v4

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v13, v1

    goto/16 :goto_0

    .line 693
    .end local v14           #result:[Ljava/lang/Object;
    .end local v16           #translated:Landroid/database/MatrixCursor;
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddLogsToRecipientSearchList()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d

    .line 694
    if-eqz v13, :cond_c

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_c

    if-eqz v10, :cond_c

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_c

    .line 695
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 696
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 697
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 700
    :cond_c
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v13, v1

    goto/16 :goto_0

    .line 707
    :cond_d
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 708
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 709
    const/4 v13, 0x0

    goto/16 :goto_0
.end method
