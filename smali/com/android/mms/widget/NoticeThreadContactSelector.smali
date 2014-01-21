.class public Lcom/android/mms/widget/NoticeThreadContactSelector;
.super Landroid/app/Activity;
.source "NoticeThreadContactSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;
    }
.end annotation


# static fields
.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String; = null

.field public static final DATA_PROJECTION:[Ljava/lang/String; = null

.field static final MODE_MASK_PICKER:I = -0x80000000

.field static final MODE_MASK_SHOW_NUMBER_OF_CONTACTS:I = 0x800000

.field static final MODE_MASK_SHOW_PHOTOS:I = 0x8000000

.field static final QUERY_TOKEN:I = 0x2a

.field static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field static final SUMMARY_DISPLAY_NAME_ALTERNATIVE_COLUMN_INDEX:I = 0x1

.field static final SUMMARY_DISPLAY_NAME_COLUMN_INDEX:I = 0x1

.field static final SUMMARY_HAS_EMAIL_COLUMN_INDEX:I = 0x6

.field static final SUMMARY_HAS_PHONE_NUMBER_COLUMN_INDEX:I = 0x5

.field static final SUMMARY_HAS_Phone_TYPE_COLUMN_INDEX:I = 0x7

.field static final SUMMARY_ID_COLUMN_INDEX:I = 0x0

.field static final SUMMARY_PHOTO_ID_COLUMN_INDEX:I = 0x4

.field static final SUMMARY_PRIMARY_DISPLAY_NAME_COLUMN_INDEX:I = 0x8

.field static final SUMMARY_RAW_CONTACTS_ACCOUNT_TYPE_COLUMN_INDEX:I = 0x2

.field private static mToastHandler:Landroid/os/Handler;


# instance fields
.field public IneractionCheck:Z

.field imageTemp:Landroid/graphics/Bitmap;

.field isPhoneNumber:Z

.field isPhotoAvaiable:Z

.field private mAppWidgetId:I

.field mContactUri:Landroid/net/Uri;

.field private mDbControll:Lcom/android/mms/widget/NoticeDBControl;

.field private mPosition:I

.field mSortOrder:Ljava/lang/String;

.field mStrNumber:Ljava/lang/String;

.field mStringBuilder:Ljava/lang/StringBuilder;

.field phoneNumberIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mToastHandler:Landroid/os/Handler;

    .line 85
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "mimetype"

    aput-object v1, v0, v5

    const-string v1, "is_super_primary"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->DATA_PROJECTION:[Ljava/lang/String;

    .line 89
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name_alt"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "contact_presence"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "has_email"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "in_visible_group"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_file_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 103
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "account_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->IneractionCheck:Z

    .line 80
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mContactUri:Landroid/net/Uri;

    .line 82
    const-string v0, "display_name_alt COLLATE LOCALIZED ASC"

    iput-object v0, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mSortOrder:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mStrNumber:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->isPhoneNumber:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->isPhotoAvaiable:Z

    .line 117
    iput-object v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->imageTemp:Landroid/graphics/Bitmap;

    .line 512
    return-void
.end method

.method public static byteToString([B)Ljava/lang/String;
    .locals 4
    .parameter "byteArray"

    .prologue
    .line 466
    const/4 v1, 0x0

    array-length v2, p0

    const-string v3, "Latin-1"

    invoke-static {p0, v1, v2, v3}, Lorg/apache/http/util/EncodingUtils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public static stringToByte(Ljava/lang/String;)[B
    .locals 3
    .parameter "byteString"

    .prologue
    .line 169
    if-eqz p0, :cond_0

    .line 170
    const-string v2, "Latin-1"

    invoke-static {p0, v2}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .local v0, byteArray:[B
    move-object v1, v0

    .line 174
    .end local v0           #byteArray:[B
    .local v1, byteArray:[B
    :goto_0
    return-object v1

    .line 173
    .end local v1           #byteArray:[B
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #byteArray:[B
    move-object v1, v0

    .line 174
    .end local v0           #byteArray:[B
    .restart local v1       #byteArray:[B
    goto :goto_0
.end method


# virtual methods
.method protected LoadUriData(Landroid/net/Uri;IIJ)V
    .locals 51
    .parameter "uri1"
    .parameter "widgetId"
    .parameter "position"
    .parameter "dataId"

    .prologue
    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    .line 263
    .local v15, contactId:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/mms/widget/NoticeThreadContactSelector;->queryPhoneNumbers(JJ)Landroid/database/Cursor;

    move-result-object v36

    .line 265
    .local v36, phoneCursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 266
    .local v3, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v5, " == \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-wide/16 v40, -0x1

    .line 272
    .local v40, rawcontactId:J
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v44, strb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 274
    .local v10, selection:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 275
    const-string v4, "_id"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v4, " == \'"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    move-object/from16 v0, v44

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 278
    const-string v4, "\'"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 280
    .local v6, rawselection:Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "raw_contact_id"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 283
    .local v42, rawcontactcursor:Landroid/database/Cursor;
    if-eqz v42, :cond_0

    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    const-string v4, "raw_contact_id"

    move-object/from16 v0, v42

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v42

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 286
    :cond_0
    if-eqz v42, :cond_1

    .line 287
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mContactUri:Landroid/net/Uri;

    sget-object v9, Lcom/android/mms/widget/NoticeThreadContactSelector;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mSortOrder:Ljava/lang/String;

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 290
    .local v19, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeThreadContactSelector;->startManagingCursor(Landroid/database/Cursor;)V

    .line 291
    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 292
    const/16 v35, -0x1

    .line 293
    .local v35, numberType:I
    const/16 v32, 0x0

    .line 294
    .local v32, mStrNumberType:Ljava/lang/String;
    const/16 v43, 0x0

    .line 296
    .local v43, strNumber:Ljava/lang/String;
    if-eqz v36, :cond_5

    .line 298
    :cond_2
    const-string v4, "is_super_primary"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 299
    .local v39, primaryIndex:I
    const/4 v4, 0x1

    move/from16 v0, v39

    if-ne v0, v4, :cond_3

    .line 300
    const-string v4, "data2"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 301
    const-string v4, "data3"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 302
    .local v29, label:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v35

    move-object/from16 v1, v29

    invoke-static {v4, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v32

    .end local v32           #mStrNumberType:Ljava/lang/String;
    check-cast v32, Ljava/lang/String;

    .line 303
    .restart local v32       #mStrNumberType:Ljava/lang/String;
    const-string v4, "data1"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    .line 307
    .end local v29           #label:Ljava/lang/String;
    :cond_3
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 309
    if-nez v32, :cond_4

    .line 310
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    .line 311
    const-string v4, "data2"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 312
    const-string v4, "data3"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 313
    .restart local v29       #label:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v35

    move-object/from16 v1, v29

    invoke-static {v4, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v32

    .end local v32           #mStrNumberType:Ljava/lang/String;
    check-cast v32, Ljava/lang/String;

    .line 314
    .restart local v32       #mStrNumberType:Ljava/lang/String;
    const-string v4, "data1"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    .line 317
    .end local v29           #label:Ljava/lang/String;
    :cond_4
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 318
    const/16 v36, 0x0

    .line 319
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->isPhoneNumber:Z

    .line 335
    .end local v39           #primaryIndex:I
    :cond_5
    new-instance v4, Lcom/android/mms/widget/NoticeDBControl;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/widget/NoticeDBControl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    .line 336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    if-eqz v4, :cond_8

    .line 337
    const-wide/16 v37, 0x0

    .line 338
    .local v37, photoId:J
    const/16 v27, 0x0

    .line 339
    .local v27, imageTemp:Landroid/graphics/Bitmap;
    const/16 v28, 0x0

    .line 340
    .local v28, input:Ljava/io/InputStream;
    new-instance v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;

    invoke-direct {v13}, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;-><init>()V

    .line 341
    .local v13, ContactItem:Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->contactId:J

    .line 342
    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->phoneType:Ljava/lang/String;

    .line 343
    move-wide/from16 v0, v40

    iput-wide v0, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->rawcontactId:J

    .line 344
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemName:Ljava/lang/String;

    .line 345
    move-object/from16 v0, v43

    iput-object v0, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemNumber:Ljava/lang/String;

    .line 346
    const-string v4, "display_name"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemNamePrimary:Ljava/lang/String;

    .line 347
    const/4 v4, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Lcom/android/mms/widget/NoticeDBControl;->getThreadId(Ljava/lang/String;)J

    move-result-wide v46

    .line 351
    .local v46, thread_id:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getBaseContext()Landroid/content/Context;

    move-result-object v16

    .line 354
    .local v16, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    move-wide/from16 v0, v46

    invoke-virtual {v4, v0, v1}, Lcom/android/mms/widget/NoticeDBControl;->queryReceiveMessage(J)Landroid/database/Cursor;

    move-result-object v31

    .line 356
    .local v31, mCursor:Landroid/database/Cursor;
    const-wide/16 v20, 0x0

    .line 357
    .local v20, date:J
    const/16 v45, 0x0

    .line 358
    .local v45, subject:Ljava/lang/String;
    const/16 v18, 0x0

    .line 359
    .local v18, current:I
    const/16 v17, 0x0

    .line 360
    .local v17, count:I
    const/16 v48, 0x0

    .line 361
    .local v48, type:Ljava/lang/String;
    const/16 v30, 0x0

    .line 362
    .local v30, locked:I
    const/16 v33, 0x0

    .line 365
    .local v33, message_id:I
    if-eqz v31, :cond_6

    .line 366
    :try_start_0
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 367
    const-string v4, "date"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 368
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 369
    const-string v4, "locked"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 370
    const-string v4, "_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 371
    const-string v4, "transport_type"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 373
    const-string v4, "sms"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 374
    const-string v4, "body"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v45

    .line 387
    :cond_6
    :goto_0
    if-eqz v31, :cond_7

    .line 388
    :goto_1
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_7
    new-instance v50, Landroid/content/ContentValues;

    invoke-direct/range {v50 .. v50}, Landroid/content/ContentValues;-><init>()V

    .line 392
    .local v50, values:Landroid/content/ContentValues;
    const-string v4, "thread_id"

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 393
    const-string v4, "contact_id"

    iget-wide v7, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->contactId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 394
    const-string v4, "display_name"

    iget-object v5, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemName:Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v4, "display_number"

    iget-object v5, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemNumber:Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v4, "date"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 397
    const-string v4, "subject"

    move-object/from16 v0, v50

    move-object/from16 v1, v45

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v4, "current"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    const-string v4, "count"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    const-string v4, "message_id"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    const-string v4, "type"

    move-object/from16 v0, v50

    move-object/from16 v1, v48

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v4, "data_id"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 403
    const-string v4, "position"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 404
    const-string v4, "widget_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    const-string v4, "display_name_primary"

    iget-object v5, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemNamePrimary:Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v4, "raw_contact_id"

    iget-wide v7, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->rawcontactId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 407
    const-string v4, "marked"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 408
    const-string v4, "NoticeThreadContactSelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", Number = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemNumber:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-wide/16 v4, 0x0

    cmp-long v4, v37, v4

    if-nez v4, :cond_f

    .line 411
    const-string v4, "photo"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Lcom/android/mms/widget/NoticeDBControl;->insert(Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v7, -0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_8

    .line 413
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/android/mms/widget/NoticeSettingManager;->addThreadCount(Landroid/content/Context;IZ)V

    .line 443
    .end local v13           #ContactItem:Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;
    .end local v16           #context:Landroid/content/Context;
    .end local v17           #count:I
    .end local v18           #current:I
    .end local v20           #date:J
    .end local v27           #imageTemp:Landroid/graphics/Bitmap;
    .end local v28           #input:Ljava/io/InputStream;
    .end local v30           #locked:I
    .end local v31           #mCursor:Landroid/database/Cursor;
    .end local v33           #message_id:I
    .end local v37           #photoId:J
    .end local v45           #subject:Ljava/lang/String;
    .end local v46           #thread_id:J
    .end local v48           #type:Ljava/lang/String;
    .end local v50           #values:Landroid/content/ContentValues;
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    if-eqz v4, :cond_9

    .line 444
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v4}, Lcom/android/mms/widget/NoticeDBControl;->close()V

    .line 446
    .end local v32           #mStrNumberType:Ljava/lang/String;
    .end local v35           #numberType:I
    .end local v43           #strNumber:Ljava/lang/String;
    :cond_9
    if-eqz v19, :cond_a

    .line 447
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 449
    :cond_a
    if-eqz v36, :cond_b

    .line 450
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 451
    const/16 v36, 0x0

    .line 453
    :cond_b
    return-void

    .line 377
    .restart local v13       #ContactItem:Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;
    .restart local v16       #context:Landroid/content/Context;
    .restart local v17       #count:I
    .restart local v18       #current:I
    .restart local v20       #date:J
    .restart local v27       #imageTemp:Landroid/graphics/Bitmap;
    .restart local v28       #input:Ljava/io/InputStream;
    .restart local v30       #locked:I
    .restart local v31       #mCursor:Landroid/database/Cursor;
    .restart local v32       #mStrNumberType:Ljava/lang/String;
    .restart local v33       #message_id:I
    .restart local v35       #numberType:I
    .restart local v37       #photoId:J
    .restart local v43       #strNumber:Ljava/lang/String;
    .restart local v45       #subject:Ljava/lang/String;
    .restart local v46       #thread_id:J
    .restart local v48       #type:Ljava/lang/String;
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    const-string v5, "_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/widget/NoticeDBControl;->queryMmsBody(I)Ljava/lang/String;

    move-result-object v45

    .line 378
    const-wide/16 v4, 0x3e8

    mul-long v20, v20, v4

    goto/16 :goto_0

    .line 381
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v45

    goto/16 :goto_0

    .line 387
    :catchall_0
    move-exception v4

    if-eqz v31, :cond_e

    .line 388
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_e
    throw v4

    .line 416
    .restart local v50       #values:Landroid/content/ContentValues;
    :cond_f
    const/16 v34, 0x0

    .line 417
    .local v34, newBitmap:Landroid/graphics/Bitmap;
    const-string v4, "photo_file_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 418
    .local v22, displayPhotoColumnIndex:I
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 419
    .local v23, displayPhotoId:J
    sget-object v4, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v23

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    .line 421
    .local v25, displayPhotoUri:Landroid/net/Uri;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v26

    .line 422
    .local v26, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v34

    .line 425
    .end local v26           #fd:Landroid/content/res/AssetFileDescriptor;
    :goto_3
    if-eqz v34, :cond_11

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeThreadContactSelector;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v14

    .line 427
    .local v14, byteArray:[B
    iput-object v14, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemImage:[B

    .line 437
    .end local v14           #byteArray:[B
    :cond_10
    :goto_4
    const-string v4, "photo"

    iget-object v5, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemImage:[B

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 438
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Lcom/android/mms/widget/NoticeDBControl;->insert(Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v7, -0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_8

    .line 439
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/android/mms/widget/NoticeSettingManager;->addThreadCount(Landroid/content/Context;IZ)V

    goto/16 :goto_2

    .line 429
    :cond_11
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->contactId:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v49

    .line 430
    .local v49, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-static {v4, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v28

    .line 431
    invoke-static/range {v28 .. v28}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 432
    if-eqz v27, :cond_10

    .line 433
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeThreadContactSelector;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v14

    .line 434
    .restart local v14       #byteArray:[B
    iput-object v14, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemImage:[B

    goto :goto_4

    .line 384
    .end local v14           #byteArray:[B
    .end local v22           #displayPhotoColumnIndex:I
    .end local v23           #displayPhotoId:J
    .end local v25           #displayPhotoUri:Landroid/net/Uri;
    .end local v34           #newBitmap:Landroid/graphics/Bitmap;
    .end local v49           #uri:Landroid/net/Uri;
    .end local v50           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 387
    if-eqz v31, :cond_7

    goto/16 :goto_1

    .line 423
    .restart local v22       #displayPhotoColumnIndex:I
    .restart local v23       #displayPhotoId:J
    .restart local v25       #displayPhotoUri:Landroid/net/Uri;
    .restart local v34       #newBitmap:Landroid/graphics/Bitmap;
    .restart local v50       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method public bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 5
    .parameter "$bitmap"

    .prologue
    .line 456
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 457
    .local v1, stream:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_0

    .line 458
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 459
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 460
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 461
    .local v0, byteArray:[B
    return-object v0
.end method

.method public byteArrayToBitmap([B)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "byteArray"

    .prologue
    .line 162
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 21
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 190
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->IneractionCheck:Z

    .line 191
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_1

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->finish()V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v1, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 198
    .local v19, rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 205
    .local v16, output:Ljava/lang/String;
    const/16 v1, 0x3b

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    const/4 v14, 0x1

    .line 210
    .local v14, hasDataId:Z
    :goto_1
    if-nez v14, :cond_7

    .line 211
    const-string v1, "phone_data_id"

    const-wide/16 v2, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v17

    .line 212
    .local v17, phoneDataId:J
    const-string v20, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 214
    .local v20, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 218
    .local v5, selectionArgs:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/widget/NoticeThreadContactSelector;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v4, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 219
    .local v12, cursor:Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 221
    .local v10, dataId:J
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 222
    const/4 v15, 0x0

    .line 224
    .local v15, isPrimary:Z
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 225
    :cond_2
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    :try_start_0
    const-string v1, "is_super_primary"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    const-string v1, "_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 229
    const/4 v15, 0x1

    .line 239
    :cond_3
    if-nez v15, :cond_4

    .line 240
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 241
    const-string v1, "_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 244
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 251
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v15           #isPrimary:Z
    .end local v17           #phoneDataId:J
    .end local v20           #selection:Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 253
    .local v7, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mAppWidgetId:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mPosition:I

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/mms/widget/NoticeThreadContactSelector;->LoadUriData(Landroid/net/Uri;IIJ)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;Z)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->finish()V

    goto/16 :goto_0

    .line 205
    .end local v7           #uri:Landroid/net/Uri;
    .end local v10           #dataId:J
    .end local v14           #hasDataId:Z
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 232
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local v10       #dataId:J
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v14       #hasDataId:Z
    .restart local v15       #isPrimary:Z
    .restart local v17       #phoneDataId:J
    .restart local v20       #selection:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 233
    .local v13, e:Ljava/lang/NumberFormatException;
    const/4 v15, 0x0

    .line 234
    goto :goto_2

    .line 247
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v10           #dataId:J
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .end local v15           #isPrimary:Z
    .end local v17           #phoneDataId:J
    .end local v20           #selection:Ljava/lang/String;
    :cond_7
    const-string v1, "phone_data_id"

    const-wide/16 v2, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .restart local v10       #dataId:J
    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 121
    if-eqz p1, :cond_0

    .line 122
    const-string v2, "InteractionCheck"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->IneractionCheck:Z

    .line 124
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "appWidgetId"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mAppWidgetId:I

    .line 130
    iput v4, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mAppWidgetId:I

    .line 133
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mAppWidgetId:I

    invoke-static {v2, v3}, Lcom/android/mms/widget/NoticeSettingManager;->getThreadCount(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mPosition:I

    .line 134
    iget v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mPosition:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    .line 135
    sget-object v2, Lcom/android/mms/widget/NoticeThreadContactSelector;->mToastHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/widget/NoticeThreadContactSelector$1;

    invoke-direct {v3, p0}, Lcom/android/mms/widget/NoticeThreadContactSelector$1;-><init>(Lcom/android/mms/widget/NoticeThreadContactSelector;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->finish()V

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    iget-boolean v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->IneractionCheck:Z

    if-eqz v2, :cond_1

    .line 146
    iput-boolean v5, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->IneractionCheck:Z

    .line 147
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_TAB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, pickerIntent:Landroid/content/Intent;
    const-string v2, "additional"

    const-string v3, "phone"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v2, "from_speed_dial"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    const-string v2, "has_result"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/mms/widget/NoticeThreadContactSelector;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c03e6

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 182
    const-string v0, "InteractionCheck"

    iget-boolean v1, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->IneractionCheck:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    return-void
.end method

.method public queryPhoneNumbers(J)Landroid/database/Cursor;
    .locals 10
    .parameter "contactId"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 492
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 493
    .local v6, baseUri:Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 495
    .local v1, dataUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "data1"

    aput-object v3, v2, v8

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "data3"

    aput-object v4, v2, v3

    const-string v3, "mimetype=?"

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 503
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 504
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    .end local v7           #c:Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 507
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v5

    .line 509
    goto :goto_0
.end method

.method public queryPhoneNumbers(JJ)Landroid/database/Cursor;
    .locals 10
    .parameter "contactId"
    .parameter "Dataid"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 471
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 472
    .local v6, baseUri:Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 474
    .local v1, dataUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "data1"

    aput-object v3, v2, v8

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "data3"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype=?AND _id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 482
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 483
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    .end local v7           #c:Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 486
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v5

    .line 488
    goto :goto_0
.end method
