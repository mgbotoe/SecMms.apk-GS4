.class public Lcom/android/mms/data/Contact$ContactsCache;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContactsCache$TaskStack;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final CALLER_ID_PROJECTION_WITH_RINGTONE:[Ljava/lang/String; = null

.field private static final CALLER_ID_SELECTION_BY_CLIDIGIT:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR substr(lookup.normalized_number, lookup.len - ?  + 1) = ? OR ( lookup.len > ? AND substr(lookup.normalized_number, lookup.len+1 - ?)= ?))"

.field private static final CALLER_ID_SELECTION_WITHOUT_E164_BY_CLIDIGIT:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  substr(lookup.normalized_number, lookup.len - ?  + 1) = ?)"

.field private static final CALLER_ID_SELECTION_WITHOUT_E164_PHONEEQUALS:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

.field private static final CALLER_ID_SELECTION_WITHOUT_E164_PHONEEQUALS_STRICT:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?, 1) ) )"

.field private static final CONTACT_ID_COLUMN:I = 0x4

.field private static final CONTACT_LOOKUP_KEY:I = 0x9

.field private static final CONTACT_NAME_COLUMN:I = 0x3

.field private static final CONTACT_PRESENCE_COLUMN:I = 0x5

.field private static final CONTACT_RINGTONE_COLUMN:I = 0xb

.field private static final CONTACT_SORT_ORDER:Ljava/lang/String; = "is_sim"

.field private static final CONTACT_STATUS_COLUMN:I = 0x6

.field private static final EMAIL_CONTACT_NAME_COLUMN:I = 0x3

.field private static final EMAIL_ID_COLUMN:I = 0x2

.field private static final EMAIL_NAME_COLUMN:I = 0x0

.field private static final EMAIL_PROJECTION:[Ljava/lang/String; = null

.field private static final EMAIL_SELECTION:Ljava/lang/String; = "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

.field private static final EMAIL_SEND_TO_VOICEMAIL_COLUMN:I = 0x4

.field private static final EMAIL_STATUS_COLUMN:I = 0x1

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field private static final PHONE_ID_COLUMN:I = 0x0

.field private static final PHONE_LABEL_COLUMN:I = 0x2

.field private static final PHONE_NORMALIZED_NUMBER:I = 0x7

.field private static final PHONE_NUMBER_COLUMN:I = 0x1

.field private static final PHOTO_THUMBNAIL_URI:I = 0xa

.field private static final SEND_TO_VOICEMAIL:I = 0x8

.field static final STATIC_KEY_BUFFER_MAXIMUM_LENGTH:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Mms/ContactsCache"

.field private static mContactMatchCliDigit:I

.field private static sInstance:Lcom/android/mms/data/Contact$ContactsCache;

.field static sStaticKeyBuffer:Ljava/nio/CharBuffer;


# instance fields
.field private final mContactsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

.field private final mUseContactMatchCliDigit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 867
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 869
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "data3"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const-string v1, "contact_presence"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 883
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "data3"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const-string v1, "contact_presence"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sec_custom_alert"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION_WITH_RINGTONE:[Ljava/lang/String;

    .line 912
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 917
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 1820
    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 941
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 798
    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-direct {v0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    .line 933
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    .line 942
    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    .line 944
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactMatchCliDigit()I

    move-result v0

    sput v0, Lcom/android/mms/data/Contact$ContactsCache;->mContactMatchCliDigit:I

    .line 945
    sget v0, Lcom/android/mms/data/Contact$ContactsCache;->mContactMatchCliDigit:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mUseContactMatchCliDigit:Z

    .line 946
    return-void

    .line 945
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/data/Contact$ContactsCache;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 795
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;Z)V

    return-void
.end method

.method private checkContactProviderAvailible()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 1275
    const/4 v7, 0x0

    .line 1278
    .local v7, status:I
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v8

    const-string v4, "data1"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1283
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1284
    const-string v0, "Mms/ContactsCache"

    const-string v1, "checkContactProviderAvailible getContentResolver is NULL cursor!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 1309
    :goto_0
    return v0

    .line 1290
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1291
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1295
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1297
    packed-switch v7, :pswitch_data_0

    .line 1305
    const-string v0, "Mms/ContactsCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact DB busy!!!. checkContactQueryAvailible : status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 1306
    goto :goto_0

    .line 1295
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :pswitch_0
    move v0, v9

    .line 1309
    goto :goto_0

    .line 1297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z
    .locals 12
    .parameter "orig"
    .parameter "newContactData"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1084
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1085
    .local v4, oldName:Ljava/lang/String;
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1088
    .local v1, newName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->isNumberModified()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1089
    const-string v7, "Mms/ContactsCache"

    const-string v8, "org number modified"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    :cond_0
    :goto_0
    return v6

    .line 1093
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1094
    const-string v7, "Mms/ContactsCache"

    const-string v8, "name changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1098
    :cond_2
    #getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1099
    .local v3, oldLabel:Ljava/lang/String;
    #getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1100
    .local v0, newLabel:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1101
    const-string v7, "Mms/ContactsCache"

    const-string v8, "label changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1105
    :cond_3
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v8

    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    .line 1106
    const-string v7, "Mms/ContactsCache"

    const-string v8, "person id changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1110
    :cond_4
    #getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v8

    #getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v9

    if-eq v8, v9, :cond_5

    .line 1111
    const-string v7, "Mms/ContactsCache"

    const-string v8, "presence changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1115
    :cond_5
    #getter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)[B

    move-result-object v8

    #getter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)[B

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1116
    const-string v7, "Mms/ContactsCache"

    const-string v8, "avatar changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1120
    :cond_6
    #getter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Z

    move-result v8

    #getter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Z

    move-result v9

    if-ne v8, v9, :cond_0

    .line 1124
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRCS()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1125
    #getter for: Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    #getter for: Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1126
    const-string v7, "Mms/ContactsCache"

    const-string v8, "lookupkey changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1131
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1132
    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 1133
    const-string v7, "Mms/ContactsCache"

    const-string v8, "RingtonePath changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1137
    :cond_8
    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    move v6, v7

    .line 1138
    goto/16 :goto_0

    .line 1140
    :cond_9
    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 1141
    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 1142
    const-string v7, "Mms/ContactsCache"

    const-string v8, "RingtonePath changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1152
    :cond_a
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1153
    .local v5, oldNumber:Ljava/lang/String;
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1154
    .local v2, newNumber:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1155
    const-string v7, "Mms/ContactsCache"

    const-string v8, "name changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1159
    :cond_b
    #getter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_d

    .line 1160
    #getter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 1161
    const-string v7, "Mms/ContactsCache"

    const-string v8, "ThumbnailUri changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move v6, v7

    .line 1164
    goto/16 :goto_0

    .line 1168
    :cond_d
    #getter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    #getter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 1169
    const-string v7, "Mms/ContactsCache"

    const-string v8, "ThumbnailUri changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    move v6, v7

    .line 1173
    goto/16 :goto_0
.end method

.method private static containsAlpha(Ljava/lang/String;)Z
    .locals 4
    .parameter "string"

    .prologue
    .line 1805
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1807
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 1808
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1809
    .local v0, c:C
    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5a

    if-le v0, v3, :cond_1

    :cond_0
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_2

    .line 1810
    :cond_1
    const/4 v3, 0x1

    .line 1813
    .end local v0           #c:C
    :goto_1
    return v3

    .line 1807
    .restart local v0       #c:C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1813
    .end local v0           #c:C
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    .locals 3
    .parameter "entry"
    .parameter "cursor"

    .prologue
    .line 1559
    monitor-enter p1

    .line 1560
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1561
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1562
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1563
    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v1, v2}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;J)J

    .line 1564
    const/4 v1, 0x5

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/data/Contact$ContactsCache;->getStatusIconResourceId(I)I

    move-result v1

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 1566
    const/4 v1, 0x6

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1567
    const/16 v1, 0xa

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1569
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRCS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1570
    const/16 v1, 0x9

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1573
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1574
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->getRingtoneFromContactCursor(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V

    .line 1576
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1578
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v0

    .line 1580
    .local v0, data:[B
    monitor-enter p1

    .line 1581
    :try_start_1
    #setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;[B)[B

    .line 1582
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1583
    return-void

    .line 1576
    .end local v0           #data:[B
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1582
    .restart local v0       #data:[B
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private findBestMatch(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 4
    .parameter "cursor"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1529
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1546
    :goto_0
    return v0

    .line 1534
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->needE164Compare()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1535
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/mms/data/Contact;->compareWithE164(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v3, p2}, Lcom/android/mms/data/Contact;->access$2300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1537
    goto :goto_0

    .line 1540
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/mms/data/Contact;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1541
    goto :goto_0

    .line 1544
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method private getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 13
    .parameter "email"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 1732
    const-string v0, "Mms/ContactsCache"

    const-string v1, "getContactInfoForEmailAddress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    new-instance v9, Lcom/android/mms/data/Contact;

    invoke-direct {v9, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1736
    .local v9, entry:Lcom/android/mms/data/Contact;
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v12

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1741
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1743
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1744
    const/4 v10, 0x0

    .line 1746
    .local v10, found:Z
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1747
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getStatusIconResourceId(I)I

    move-result v0

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 1749
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v9, v0, v1}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;J)J

    .line 1751
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1752
    .local v11, name:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1753
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1755
    :cond_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1756
    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v9, v11}, Lcom/android/mms/data/Contact;->access$502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1757
    const/4 v10, 0x1

    .line 1759
    :cond_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1761
    if-eqz v10, :cond_0

    .line 1762
    :try_start_2
    invoke-direct {p0, v9}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v8

    .line 1763
    .local v8, data:[B
    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1764
    :try_start_3
    #setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {v9, v8}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;[B)[B

    .line 1765
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1771
    .end local v8           #data:[B
    .end local v10           #found:Z
    .end local v11           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1774
    :cond_4
    return-object v9

    .line 1759
    .restart local v10       #found:Z
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1771
    .end local v10           #found:Z
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1765
    .restart local v8       #data:[B
    .restart local v10       #found:Z
    .restart local v11       #name:Ljava/lang/String;
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 13
    .parameter "number"

    .prologue
    .line 1364
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1367
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 1368
    const/4 v1, 0x0

    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1371
    :cond_0
    new-instance v8, Lcom/android/mms/data/Contact;

    const/4 v1, 0x0

    invoke-direct {v8, p1, v1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1374
    .local v8, entry:Lcom/android/mms/data/Contact;
    iget-boolean v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mUseContactMatchCliDigit:Z

    if-eqz v1, :cond_1

    .line 1375
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactMatchCliDigitNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1382
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualNumber4Korea()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGU+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1383
    invoke-static {p1}, Lcom/android/mms/data/Contact;->normalizeDualNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1384
    .local v10, normalizedNumber:Ljava/lang/String;
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1396
    .local v9, minMatch:Ljava/lang/String;
    :goto_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1398
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1403
    .local v12, numberLen:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mUseContactMatchCliDigit:Z

    if-eqz v1, :cond_a

    .line 1404
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1406
    .local v11, numberE164:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1407
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  substr(lookup.normalized_number, lookup.len - ?  + 1) = ?)"

    .line 1408
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v4, v1

    const/4 v1, 0x1

    aput-object v12, v4, v1

    const/4 v1, 0x2

    aput-object v10, v4, v1

    .line 1436
    .end local v11           #numberE164:Ljava/lang/String;
    .local v4, args:[Ljava/lang/String;
    :goto_1
    const/4 v6, 0x0

    .line 1438
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1440
    .local v0, resolver:Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_2

    .line 1441
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1442
    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION_WITH_RINGTONE:[Ljava/lang/String;

    const-string v5, "is_sim"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1451
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualNumber4Korea()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGU+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1452
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 1453
    if-eqz v6, :cond_3

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 1454
    :cond_3
    if-eqz v6, :cond_4

    .line 1455
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1456
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1457
    invoke-static {p1}, Lcom/android/mms/data/Contact;->normalizeDualNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1458
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1459
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1461
    iget-boolean v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mUseContactMatchCliDigit:Z

    if-eqz v1, :cond_e

    .line 1462
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1464
    .restart local v11       #numberE164:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1465
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  substr(lookup.normalized_number, lookup.len - ?  + 1) = ?)"

    .line 1466
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    .end local v4           #args:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v9, v4, v1

    const/4 v1, 0x1

    aput-object v12, v4, v1

    const/4 v1, 0x2

    aput-object v10, v4, v1

    .line 1485
    .end local v11           #numberE164:Ljava/lang/String;
    .restart local v4       #args:[Ljava/lang/String;
    :goto_3
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1486
    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION_WITH_RINGTONE:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 1497
    :cond_5
    :goto_4
    if-nez v6, :cond_11

    .line 1498
    const-string v1, "Mms/ContactsCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryContactInfoByNumber("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") returned NULL cursor!"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " contact uri used "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    if-eqz v0, :cond_6

    .line 1501
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1524
    .end local v0           #resolver:Landroid/content/ContentProviderClient;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #args:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v12           #numberLen:Ljava/lang/String;
    :cond_6
    :goto_5
    return-object v8

    .line 1387
    .end local v9           #minMatch:Ljava/lang/String;
    .end local v10           #normalizedNumber:Ljava/lang/String;
    :cond_7
    const-string v1, "PAP"

    invoke-static {}, Lcom/android/mms/data/Contact;->access$2200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1388
    move-object v10, p1

    .line 1394
    .restart local v10       #normalizedNumber:Ljava/lang/String;
    :goto_6
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #minMatch:Ljava/lang/String;
    goto/16 :goto_0

    .line 1390
    .end local v9           #minMatch:Ljava/lang/String;
    .end local v10           #normalizedNumber:Ljava/lang/String;
    :cond_8
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #normalizedNumber:Ljava/lang/String;
    goto :goto_6

    .line 1410
    .restart local v9       #minMatch:Ljava/lang/String;
    .restart local v11       #numberE164:Ljava/lang/String;
    .restart local v12       #numberLen:Ljava/lang/String;
    :cond_9
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR substr(lookup.normalized_number, lookup.len - ?  + 1) = ? OR ( lookup.len > ? AND substr(lookup.normalized_number, lookup.len+1 - ?)= ?))"

    .line 1411
    .restart local v3       #selection:Ljava/lang/String;
    const/4 v1, 0x7

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v4, v1

    const/4 v1, 0x1

    aput-object v11, v4, v1

    const/4 v1, 0x2

    aput-object v12, v4, v1

    const/4 v1, 0x3

    aput-object v10, v4, v1

    const/4 v1, 0x4

    aput-object v12, v4, v1

    const/4 v1, 0x5

    aput-object v12, v4, v1

    const/4 v1, 0x6

    aput-object v10, v4, v1

    .restart local v4       #args:[Ljava/lang/String;
    goto/16 :goto_1

    .line 1417
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #args:[Ljava/lang/String;
    .end local v11           #numberE164:Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDocomoAccountAsDefault()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1418
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?, 1) ) )"

    .line 1422
    .restart local v3       #selection:Ljava/lang/String;
    :goto_7
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v4, v1

    const/4 v1, 0x1

    aput-object v12, v4, v1

    const/4 v1, 0x2

    aput-object v10, v4, v1

    const/4 v1, 0x3

    aput-object v12, v4, v1

    const/4 v1, 0x4

    aput-object v10, v4, v1

    .restart local v4       #args:[Ljava/lang/String;
    goto/16 :goto_1

    .line 1420
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #args:[Ljava/lang/String;
    :cond_b
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

    .restart local v3       #selection:Ljava/lang/String;
    goto :goto_7

    .line 1444
    .restart local v0       #resolver:Landroid/content/ContentProviderClient;
    .restart local v4       #args:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_c
    :try_start_2
    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "is_sim"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    goto/16 :goto_2

    .line 1446
    :catch_0
    move-exception v7

    .line 1447
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 1468
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v11       #numberE164:Ljava/lang/String;
    :cond_d
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR substr(lookup.normalized_number, lookup.len - ?  + 1) = ? OR ( lookup.len > ? AND substr(lookup.normalized_number, lookup.len+1 - ?)= ?))"

    .line 1469
    const/4 v1, 0x7

    new-array v4, v1, [Ljava/lang/String;

    .end local v4           #args:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v9, v4, v1

    const/4 v1, 0x1

    aput-object v11, v4, v1

    const/4 v1, 0x2

    aput-object v12, v4, v1

    const/4 v1, 0x3

    aput-object v10, v4, v1

    const/4 v1, 0x4

    aput-object v12, v4, v1

    const/4 v1, 0x5

    aput-object v12, v4, v1

    const/4 v1, 0x6

    aput-object v10, v4, v1

    .restart local v4       #args:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1475
    .end local v11           #numberE164:Ljava/lang/String;
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmoji()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1476
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?, 1) ) )"

    .line 1480
    :goto_8
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    .end local v4           #args:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v9, v4, v1

    const/4 v1, 0x1

    aput-object v12, v4, v1

    const/4 v1, 0x2

    aput-object v10, v4, v1

    const/4 v1, 0x3

    aput-object v12, v4, v1

    const/4 v1, 0x4

    aput-object v10, v4, v1

    .restart local v4       #args:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1478
    :cond_f
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

    goto :goto_8

    .line 1488
    :cond_10
    :try_start_3
    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    goto/16 :goto_4

    .line 1490
    :catch_1
    move-exception v7

    .line 1491
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_4

    .line 1506
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_11
    :try_start_4
    iget-boolean v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mUseContactMatchCliDigit:Z

    if-eqz v1, :cond_14

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1508
    invoke-direct {p0, v8, v6}, Lcom/android/mms/data/Contact$ContactsCache;->fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1517
    :cond_12
    :goto_9
    if-eqz v6, :cond_13

    .line 1518
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1520
    :cond_13
    if-eqz v0, :cond_6

    .line 1521
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_5

    .line 1510
    :cond_14
    :try_start_5
    invoke-direct {p0, v6, p1}, Lcom/android/mms/data/Contact$ContactsCache;->findBestMatch(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1514
    invoke-direct {p0, v8, v6}, Lcom/android/mms/data/Contact$ContactsCache;->fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    .line 1517
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_15

    .line 1518
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1520
    :cond_15
    if-eqz v0, :cond_16

    .line 1521
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_16
    throw v1
.end method

.method private getContactMatchCliDigitNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 1352
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactMatchCliDigit()I

    move-result v0

    sput v0, Lcom/android/mms/data/Contact$ContactsCache;->mContactMatchCliDigit:I

    .line 1354
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/mms/data/Contact$ContactsCache;->mContactMatchCliDigit:I

    if-gt v0, v1, :cond_0

    .line 1356
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/mms/data/Contact$ContactsCache;->mContactMatchCliDigit:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getGroupAlert(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 12
    .parameter "contact"

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 1647
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "group_alert"

    aput-object v1, v2, v4

    .line 1650
    .local v2, projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND mimetype = \'vnd.android.cursor.item/group_membership\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND group_alert IS NOT NULL"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1653
    .local v3, selection:Ljava/lang/String;
    const-string v5, "data1 LIMIT 1 "

    .line 1655
    .local v5, orderBy:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1656
    .local v0, resolver:Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 1659
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1660
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1661
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1662
    .local v8, ringtone:Ljava/lang/String;
    const-string v1, "Mms/ContactsCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ringtone "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1668
    if-eqz v6, :cond_0

    .line 1669
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1673
    .end local v8           #ringtone:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v8

    .line 1668
    :cond_1
    if-eqz v6, :cond_2

    .line 1669
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v8, v9

    .line 1673
    goto :goto_0

    .line 1665
    :catch_0
    move-exception v7

    .line 1666
    .local v7, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1668
    if-eqz v6, :cond_2

    .line 1669
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1668
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 1669
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/mms/data/Contact$ContactsCache;
    .locals 2
    .parameter "context"

    .prologue
    .line 949
    const-class v1, Lcom/android/mms/data/Contact$ContactsCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;

    if-nez v0, :cond_0

    .line 950
    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache;

    invoke-direct {v0, p0}, Lcom/android/mms/data/Contact$ContactsCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;

    .line 953
    :cond_0
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 949
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRingtoneFromContactCursor(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    .locals 2
    .parameter "entry"
    .parameter "cursor"

    .prologue
    .line 1638
    const/16 v1, 0xb

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1639
    .local v0, contactRingtone:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1640
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getGroupAlert(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1644
    :goto_0
    return-void

    .line 1642
    :cond_1
    #setter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private getStatusIconResourceId(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 1721
    if-eqz p1, :cond_0

    .line 1722
    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    .line 1725
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"
    .parameter "keyBuffer"

    .prologue
    .line 1781
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1782
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->mark()Ljava/nio/Buffer;

    .line 1784
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1785
    .local v1, position:I
    const/4 v2, 0x0

    .line 1786
    .local v2, resultCount:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 1787
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1788
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1789
    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 1790
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 1795
    .end local v0           #c:C
    :cond_1
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->reset()Ljava/nio/Buffer;

    .line 1796
    if-lez v2, :cond_2

    .line 1797
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1800
    .end local p1
    :cond_2
    return-object p1
.end method

.method private loadAvatarData(Lcom/android/mms/data/Contact;)[B
    .locals 9
    .parameter "entry"

    .prologue
    .line 1684
    const/4 v2, 0x0

    .line 1687
    .local v2, data:[B
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->hasAvatarData()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1688
    :cond_0
    const/4 v5, 0x0

    .line 1716
    :goto_0
    return-object v5

    .line 1691
    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1693
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 1696
    .local v0, avatarDataStream:Ljava/io/InputStream;
    if-eqz v0, :cond_2

    .line 1697
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 1698
    .local v3, dataLength:I
    new-array v2, v3, [B

    .line 1699
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v0, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1700
    .local v4, readLength:I
    if-le v3, v4, :cond_2

    .line 1701
    const-string v5, "Mms/ContactsCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "avatar stream reading failed,dataLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",readLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1702
    const/4 v2, 0x0

    .line 1709
    .end local v3           #dataLength:I
    .end local v4           #readLength:I
    :cond_2
    if-eqz v0, :cond_3

    .line 1710
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_1
    move-object v5, v2

    .line 1716
    goto :goto_0

    .line 1705
    :catch_0
    move-exception v5

    .line 1709
    if-eqz v0, :cond_3

    .line 1710
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1712
    :catch_1
    move-exception v5

    goto :goto_1

    .line 1708
    :catchall_0
    move-exception v5

    .line 1709
    if-eqz v0, :cond_4

    .line 1710
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1713
    :cond_4
    :goto_2
    throw v5

    .line 1712
    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method private needE164Compare()Z
    .locals 3

    .prologue
    .line 1553
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1554
    .local v0, countryIso:Ljava/lang/String;
    const-string v2, "RU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KZ"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1555
    .local v1, result:Z
    :goto_0
    return v1

    .line 1554
    .end local v1           #result:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateContact(Lcom/android/mms/data/Contact;Z)V
    .locals 7
    .parameter "c"
    .parameter "isIdBase"

    .prologue
    .line 1178
    if-nez p1, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1182
    :cond_0
    const/4 v0, 0x0

    .line 1183
    .local v0, entry:Lcom/android/mms/data/Contact;
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isNumberCanAddToContact(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1187
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 1190
    monitor-enter p1

    .line 1191
    :try_start_0
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;J)J

    .line 1192
    const/4 v4, 0x0

    #setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$202(Lcom/android/mms/data/Contact;Z)Z

    .line 1193
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1194
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1199
    :cond_1
    if-eqz p2, :cond_5

    .line 1200
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRCS()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1201
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    #getter for: Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(JLjava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 1209
    :goto_1
    monitor-enter p1

    .line 1210
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/Contact$ContactsCache;->contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1212
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1213
    #getter for: Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1214
    #getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1215
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;J)J

    .line 1216
    #getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v4

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 1217
    #getter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1218
    #getter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)[B

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;[B)[B

    .line 1219
    #getter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1221
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRCS()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1222
    #getter for: Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1225
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1226
    #getter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mRingtonePath:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1234
    :cond_3
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1236
    #getter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Z

    move-result v4

    #setter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;Z)Z

    .line 1238
    #calls: Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1700(Lcom/android/mms/data/Contact;)V

    .line 1244
    invoke-static {}, Lcom/android/mms/data/Contact;->access$1800()Ljava/util/HashSet;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1245
    :try_start_2
    invoke-static {}, Lcom/android/mms/data/Contact;->access$1800()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1246
    .local v2, iterator:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Contact$UpdateListener;>;"
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1247
    :try_start_3
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact$UpdateListener;

    .line 1248
    .local v3, l:Lcom/android/mms/data/Contact$UpdateListener;
    const-string v4, "Mms/ContactsCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    invoke-interface {v3, p1}, Lcom/android/mms/data/Contact$UpdateListener;->onUpdate(Lcom/android/mms/data/Contact;)V

    goto :goto_2

    .line 1257
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #iterator:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Contact$UpdateListener;>;"
    .end local v3           #l:Lcom/android/mms/data/Contact$UpdateListener;
    :catchall_1
    move-exception v4

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 1203
    :cond_4
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto/16 :goto_1

    .line 1206
    :cond_5
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto/16 :goto_1

    .line 1246
    :catchall_2
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v4

    .line 1252
    :cond_6
    monitor-enter p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1253
    const/4 v4, 0x0

    :try_start_6
    #setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$202(Lcom/android/mms/data/Contact;Z)Z

    .line 1254
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1255
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1256
    :try_start_7
    invoke-static {p1}, Lcom/android/mms/data/RecipientIdCache;->updateNumber(Lcom/android/mms/data/Contact;)V

    .line 1257
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 1255
    :catchall_3
    move-exception v4

    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method


# virtual methods
.method dump()V
    .locals 8

    .prologue
    .line 957
    monitor-enter p0

    .line 958
    :try_start_0
    const-string v5, "Mms/ContactsCache"

    const-string v6, "**** Contact cache dump ****"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v5, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 960
    .local v4, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 961
    .local v0, alc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 962
    .local v1, c:Lcom/android/mms/data/Contact;
    const-string v5, "Mms/ContactsCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 965
    .end local v0           #alc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v1           #c:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 966
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 9
    .parameter "numberOrEmail"

    .prologue
    .line 1824
    monitor-enter p0

    .line 1827
    :try_start_0
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lcom/android/mms/data/Contact$ContactsCache;->containsAlpha(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 1829
    .local v3, isNotRegularPhoneNumber:Z
    :goto_0
    if-eqz v3, :cond_2

    move-object v4, p1

    .line 1832
    .local v4, key:Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1833
    .local v1, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    if-eqz v1, :cond_7

    .line 1834
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1835
    .local v5, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_8

    .line 1836
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1837
    .local v0, c:Lcom/android/mms/data/Contact;
    if-eqz v3, :cond_3

    .line 1838
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1839
    monitor-exit p0

    .line 1870
    .end local v2           #i:I
    .end local v5           #length:I
    :goto_3
    return-object v0

    .line 1827
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v3           #isNotRegularPhoneNumber:Z
    .end local v4           #key:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1829
    .restart local v3       #isNotRegularPhoneNumber:Z
    :cond_2
    sget-object v7, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    invoke-direct {p0, p1, v7}, Lcom/android/mms/data/Contact$ContactsCache;->key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1842
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2       #i:I
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #length:I
    :cond_3
    iget-boolean v7, p0, Lcom/android/mms/data/Contact$ContactsCache;->mUseContactMatchCliDigit:Z

    if-eqz v7, :cond_4

    .line 1843
    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1844
    .local v6, replaceNumberOrEmail:Ljava/lang/String;
    const-string v7, "."

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1845
    invoke-direct {p0, v6}, Lcom/android/mms/data/Contact$ContactsCache;->getContactMatchCliDigitNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1846
    monitor-exit p0

    goto :goto_3

    .line 1871
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v2           #i:I
    .end local v3           #isNotRegularPhoneNumber:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #length:I
    .end local v6           #replaceNumberOrEmail:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1849
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2       #i:I
    .restart local v3       #isNotRegularPhoneNumber:Z
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #length:I
    :cond_4
    :try_start_1
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/mms/data/Contact;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1850
    monitor-exit p0

    goto :goto_3

    .line 1858
    :cond_5
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1859
    monitor-exit p0

    goto :goto_3

    .line 1835
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1864
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #i:I
    .end local v5           #length:I
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1866
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    iget-object v7, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    :cond_8
    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v7, 0x0

    invoke-direct {v0, p1, v7}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1869
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1870
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 5
    .parameter "number"
    .parameter "canBlock"

    .prologue
    .line 1017
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1018
    const-string p1, ""

    .line 1026
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 1027
    .local v1, contact:Lcom/android/mms/data/Contact;
    const/4 v2, 0x0

    .line 1029
    .local v2, r:Ljava/lang/Runnable;
    monitor-enter v1

    .line 1032
    :goto_0
    if-eqz p2, :cond_1

    :try_start_0
    #getter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$200(Lcom/android/mms/data/Contact;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1034
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1035
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1042
    :cond_1
    :try_start_2
    #getter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$300(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_2

    #getter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$200(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1043
    const/4 v4, 0x0

    #setter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$302(Lcom/android/mms/data/Contact;Z)Z

    .line 1045
    move-object v0, v1

    .line 1046
    .local v0, c:Lcom/android/mms/data/Contact;
    new-instance v3, Lcom/android/mms/data/Contact$ContactsCache$1;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/data/Contact$ContactsCache$1;-><init>(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1063
    .end local v2           #r:Ljava/lang/Runnable;
    .local v3, r:Ljava/lang/Runnable;
    const/4 v4, 0x1

    :try_start_3
    #setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$202(Lcom/android/mms/data/Contact;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .line 1066
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #r:Ljava/lang/Runnable;
    .restart local v2       #r:Ljava/lang/Runnable;
    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1070
    if-eqz v2, :cond_3

    .line 1071
    if-eqz p2, :cond_4

    .line 1072
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1077
    :cond_3
    :goto_1
    return-object v1

    .line 1066
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 1074
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->pushTask(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1066
    .end local v2           #r:Ljava/lang/Runnable;
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v3       #r:Ljava/lang/Runnable;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #r:Ljava/lang/Runnable;
    .restart local v2       #r:Ljava/lang/Runnable;
    goto :goto_2
.end method

.method public getContactInfo(J)Lcom/android/mms/data/Contact;
    .locals 3
    .parameter "id"

    .prologue
    .line 1332
    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V

    .line 1333
    .local v0, entry:Lcom/android/mms/data/Contact;
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1337
    .end local v0           #entry:Lcom/android/mms/data/Contact;
    :goto_0
    return-object v0

    .restart local v0       #entry:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->queryContactInfoById(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method public getContactInfo(JLjava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 3
    .parameter "id"
    .parameter "lookupkey"

    .prologue
    .line 1342
    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, v2}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1343
    .local v0, entry:Lcom/android/mms/data/Contact;
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1347
    .end local v0           #entry:Lcom/android/mms/data/Contact;
    :goto_0
    return-object v0

    .restart local v0       #entry:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->queryContactInfoById(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 2
    .parameter "numberOrEmail"

    .prologue
    .line 1318
    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1319
    .local v0, entry:Lcom/android/mms/data/Contact;
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1326
    .end local v0           #entry:Lcom/android/mms/data/Contact;
    :goto_0
    return-object v0

    .line 1323
    .restart local v0       #entry:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1324
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0

    .line 1326
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method invalidate()V
    .locals 6

    .prologue
    .line 1875
    const-string v4, "Mms/ContactsCache"

    const-string v5, "invalidate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    monitor-enter p0

    .line 1879
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1880
    .local v0, alc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 1881
    .local v1, c:Lcom/android/mms/data/Contact;
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1882
    const/4 v4, 0x1

    :try_start_1
    #setter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$302(Lcom/android/mms/data/Contact;Z)Z

    .line 1883
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 1886
    .end local v0           #alc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v1           #c:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1887
    const-string v4, "Mms/ContactsCache"

    const-string v5, "invalidate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    return-void
.end method

.method public pushTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->push(Ljava/lang/Runnable;)V

    .line 1013
    return-void
.end method

.method public queryContactInfoById(J)Lcom/android/mms/data/Contact;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 1593
    new-instance v7, Lcom/android/mms/data/Contact;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v7, v0, v3}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V

    .line 1595
    .local v7, entry:Lcom/android/mms/data/Contact;
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1597
    .local v1, Uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1598
    .local v6, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION_WITH_RINGTONE:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1603
    :goto_0
    if-nez v6, :cond_1

    .line 1604
    const-string v0, "Mms/ContactsCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryContactInfoById("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") returned NULL cursor!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contact uri used "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    :goto_1
    return-object v7

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 1610
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1611
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1612
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1614
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1615
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mNumberInContactDB:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1616
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$2402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1617
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getStatusIconResourceId(I)I

    move-result v0

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 1618
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1619
    const/16 v0, 0xa

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mThumbnailUri:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1621
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRCS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1622
    const/16 v0, 0x9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1625
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1626
    invoke-direct {p0, v7, v6}, Lcom/android/mms/data/Contact$ContactsCache;->getRingtoneFromContactCursor(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V

    .line 1629
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1632
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public updateContactList(Lcom/android/mms/data/ContactList;)V
    .locals 4
    .parameter "list"

    .prologue
    .line 1261
    const-string v2, "Mms/ContactsCache"

    const-string v3, "updateContactList()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 1265
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1266
    .local v0, c:Lcom/android/mms/data/Contact;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;Z)V

    goto :goto_0

    .line 1268
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_0
    return-void
.end method
