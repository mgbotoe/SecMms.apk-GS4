.class Lcom/android/mms/widget/UpdateContactDBTask;
.super Landroid/os/AsyncTask;
.source "MmsWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/mms/widget/UpdateFavoriteDBData;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String; = null

.field static final PRIMARY_DISPLAY_NAME_ALTERNATIVE_COLUMN_INDEX:I = 0x9

.field static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field static final SUMMARY_DISPLAY_NAME_ALTERNATIVE_COLUMN_INDEX:I = 0x1

.field static final SUMMARY_PHOTO_ID_COLUMN_INDEX:I = 0x4

.field public static final TAG:Ljava/lang/String; = "UpdateContactDBTask"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 536
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "account_type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/widget/UpdateContactDBTask;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 542
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name_alt"

    aput-object v1, v0, v3

    const-string v1, "starred"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "photo_id"

    aput-object v2, v0, v1

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

    sput-object v0, Lcom/android/mms/widget/UpdateContactDBTask;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 529
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 5
    .parameter "$bitmap"

    .prologue
    .line 771
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 773
    .local v1, stream:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_0

    .line 774
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 775
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 776
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 777
    .local v0, byteArray:[B
    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/mms/widget/UpdateFavoriteDBData;)Ljava/lang/Boolean;
    .locals 54
    .parameter "params"

    .prologue
    .line 559
    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget-object v0, v4, Lcom/android/mms/widget/UpdateFavoriteDBData;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 560
    .local v21, context:Landroid/content/Context;
    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget-object v0, v4, Lcom/android/mms/widget/UpdateFavoriteDBData;->dbControll:Lcom/android/mms/widget/NoticeDBControl;

    move-object/from16 v23, v0

    .line 561
    .local v23, dbControll:Lcom/android/mms/widget/NoticeDBControl;
    sget-object v14, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 562
    .local v14, contactUri:Landroid/net/Uri;
    const-string v18, "display_name_alt COLLATE LOCALIZED ASC"

    .line 563
    .local v18, sortOrder:Ljava/lang/String;
    const/16 v49, 0x0

    .line 565
    .local v49, result:Z
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .local v36, mStringBuilder:Ljava/lang/StringBuilder;
    new-instance v23, Lcom/android/mms/widget/NoticeDBControl;

    .end local v23           #dbControll:Lcom/android/mms/widget/NoticeDBControl;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/mms/widget/NoticeDBControl;-><init>(Landroid/content/Context;)V

    .line 567
    .restart local v23       #dbControll:Lcom/android/mms/widget/NoticeDBControl;
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/widget/NoticeDBControl;->query()Landroid/database/Cursor;

    move-result-object v22

    .line 569
    .local v22, cursor:Landroid/database/Cursor;
    if-eqz v22, :cond_e

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 571
    :cond_0
    const/16 v32, 0x0

    .line 572
    .local v32, imageTemp:Landroid/graphics/Bitmap;
    const/16 v33, 0x0

    .line 573
    .local v33, input:Ljava/io/InputStream;
    const/16 v51, 0x0

    .line 574
    .local v51, strNumberType:Ljava/lang/String;
    const-string v4, "display_number"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 575
    .local v28, display_number:Ljava/lang/String;
    const-string v4, "raw_contact_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 577
    .local v46, raw_contact_id:J
    const-string v4, "contact_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 579
    .local v9, contactId:J
    const-string v4, "data_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 580
    .local v11, dataId:J
    const-string v4, "position"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 581
    .local v42, pos:J
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 583
    .local v3, cr:Landroid/content/ContentResolver;
    const-wide/16 v4, -0x1

    cmp-long v4, v46, v4

    if-eqz v4, :cond_2

    .line 584
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/widget/UpdateContactDBTask;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v46

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v48

    .line 587
    .local v48, rawcursor:Landroid/database/Cursor;
    if-eqz v48, :cond_1

    invoke-interface/range {v48 .. v48}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 588
    const-string v4, "contact_id"

    move-object/from16 v0, v48

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v48

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v9, v4

    .line 591
    :cond_1
    if-eqz v48, :cond_2

    .line 592
    invoke-interface/range {v48 .. v48}, Landroid/database/Cursor;->close()V

    .line 595
    .end local v48           #rawcursor:Landroid/database/Cursor;
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 596
    const-string v4, "_id"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    const-string v4, " == \'"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    move-object/from16 v0, v36

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 599
    const-string v4, "\' "

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 602
    .local v6, selection:Ljava/lang/String;
    sget-object v5, Lcom/android/mms/widget/UpdateContactDBTask;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object v4, v14

    move-object/from16 v8, v18

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .local v20, contactCursor:Landroid/database/Cursor;
    move-object/from16 v7, p0

    move-object/from16 v8, v21

    .line 605
    invoke-virtual/range {v7 .. v12}, Lcom/android/mms/widget/UpdateContactDBTask;->queryPhoneNumbers(Landroid/content/Context;JJ)Landroid/database/Cursor;

    move-result-object v39

    .line 607
    .local v39, phoneCursor:Landroid/database/Cursor;
    if-eqz v39, :cond_7

    .line 608
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 610
    :cond_3
    const-string v4, "is_super_primary"

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    .line 612
    .local v44, primaryIndex:I
    const/4 v4, 0x1

    move/from16 v0, v44

    if-ne v0, v4, :cond_4

    .line 613
    const-string v4, "data2"

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 615
    .local v38, numberType:I
    const-string v4, "data3"

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 617
    .local v35, label:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v38

    move-object/from16 v1, v35

    invoke-static {v4, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v51

    .end local v51           #strNumberType:Ljava/lang/String;
    check-cast v51, Ljava/lang/String;

    .line 621
    .end local v35           #label:Ljava/lang/String;
    .end local v38           #numberType:I
    .restart local v51       #strNumberType:Ljava/lang/String;
    :cond_4
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 623
    .end local v44           #primaryIndex:I
    :cond_5
    if-nez v51, :cond_6

    .line 624
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToFirst()Z

    .line 625
    const-string v4, "data2"

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 627
    .restart local v38       #numberType:I
    const-string v4, "data3"

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 629
    .restart local v35       #label:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v38

    move-object/from16 v1, v35

    invoke-static {v4, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v51

    .end local v51           #strNumberType:Ljava/lang/String;
    check-cast v51, Ljava/lang/String;

    .line 631
    .end local v35           #label:Ljava/lang/String;
    .end local v38           #numberType:I
    .restart local v51       #strNumberType:Ljava/lang/String;
    :cond_6
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 684
    :goto_0
    if-eqz v20, :cond_d

    .line 685
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v31

    .line 686
    .local v31, flag:Z
    :goto_1
    if-eqz v31, :cond_c

    .line 687
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 689
    .local v34, itemName:Ljava/lang/String;
    const/16 v4, 0x9

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 691
    .local v45, primary_Name:Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 694
    .local v40, photoId:J
    new-instance v53, Landroid/content/ContentValues;

    invoke-direct/range {v53 .. v53}, Landroid/content/ContentValues;-><init>()V

    .line 695
    .local v53, values:Landroid/content/ContentValues;
    const-string v4, "raw_contact_id"

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 696
    const-string v4, "contact_id"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 697
    const-string v4, "display_name"

    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v4, "display_name_primary"

    move-object/from16 v0, v53

    move-object/from16 v1, v45

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "display_number = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND position = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v42

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    .line 706
    .local v50, selectionArg:Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, v40, v4

    if-nez v4, :cond_9

    .line 707
    const-string v4, "photo"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/widget/NoticeDBControl;->update(Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 749
    :goto_2
    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v31

    goto/16 :goto_1

    .line 653
    .end local v31           #flag:Z
    .end local v34           #itemName:Ljava/lang/String;
    .end local v40           #photoId:J
    .end local v45           #primary_Name:Ljava/lang/String;
    .end local v50           #selectionArg:Ljava/lang/String;
    .end local v53           #values:Landroid/content/ContentValues;
    :cond_7
    const-wide/16 v4, 0x0

    cmp-long v4, v9, v4

    if-eqz v4, :cond_8

    .line 654
    new-instance v53, Landroid/content/ContentValues;

    invoke-direct/range {v53 .. v53}, Landroid/content/ContentValues;-><init>()V

    .line 655
    .restart local v53       #values:Landroid/content/ContentValues;
    const-string v4, "raw_contact_id"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 656
    const-string v4, "contact_id"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    const-string v4, "display_name"

    move-object/from16 v0, v53

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v4, "display_name_primary"

    move-object/from16 v0, v53

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v4, "photo"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 661
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 662
    const-string v4, "contact_id"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const-string v4, " = \'"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    move-object/from16 v0, v36

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 665
    const-string v4, "\' AND "

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    const-string v4, "position"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const-string v4, " = \'"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    move-object/from16 v0, v36

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 669
    const-string v4, "\'"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v4}, Lcom/android/mms/widget/NoticeDBControl;->update(Landroid/content/ContentValues;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 673
    .end local v53           #values:Landroid/content/ContentValues;
    :cond_8
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeDBControl;->getContactId(Ljava/lang/String;)J

    move-result-wide v9

    .line 674
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 675
    const-string v4, "_id"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const-string v4, " == \'"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    move-object/from16 v0, v36

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 678
    const-string v4, "\' "

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    sget-object v15, Lcom/android/mms/widget/UpdateContactDBTask;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object v13, v3

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    goto/16 :goto_0

    .line 711
    .restart local v31       #flag:Z
    .restart local v34       #itemName:Ljava/lang/String;
    .restart local v40       #photoId:J
    .restart local v45       #primary_Name:Ljava/lang/String;
    .restart local v50       #selectionArg:Ljava/lang/String;
    .restart local v53       #values:Landroid/content/ContentValues;
    :cond_9
    const/16 v37, 0x0

    .line 712
    .local v37, newBitmap:Landroid/graphics/Bitmap;
    const-string v4, "photo_file_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 714
    .local v24, displayPhotoColumnIndex:I
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 716
    .local v25, displayPhotoId:J
    sget-object v4, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v25

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v27

    .line 720
    .local v27, displayPhotoUri:Landroid/net/Uri;
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v30

    .line 724
    .local v30, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {v30 .. v30}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v37

    .line 728
    .end local v30           #fd:Landroid/content/res/AssetFileDescriptor;
    :goto_3
    if-eqz v37, :cond_b

    .line 729
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/UpdateContactDBTask;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v19

    .line 731
    .local v19, byteArray:[B
    const-string v4, "photo"

    move-object/from16 v0, v53

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 745
    .end local v19           #byteArray:[B
    :cond_a
    :goto_4
    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/widget/NoticeDBControl;->update(Landroid/content/ContentValues;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 733
    :cond_b
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v52

    .line 735
    .local v52, uri:Landroid/net/Uri;
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-static {v4, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v33

    .line 737
    invoke-static/range {v33 .. v33}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 738
    if-eqz v32, :cond_a

    .line 739
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/UpdateContactDBTask;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v19

    .line 741
    .restart local v19       #byteArray:[B
    const-string v4, "photo"

    move-object/from16 v0, v53

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_4

    .line 750
    .end local v19           #byteArray:[B
    .end local v24           #displayPhotoColumnIndex:I
    .end local v25           #displayPhotoId:J
    .end local v27           #displayPhotoUri:Landroid/net/Uri;
    .end local v37           #newBitmap:Landroid/graphics/Bitmap;
    .end local v52           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v29

    .line 751
    .local v29, e:Ljava/lang/IllegalStateException;
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 754
    .end local v29           #e:Ljava/lang/IllegalStateException;
    .end local v34           #itemName:Ljava/lang/String;
    .end local v40           #photoId:J
    .end local v45           #primary_Name:Ljava/lang/String;
    .end local v50           #selectionArg:Ljava/lang/String;
    .end local v53           #values:Landroid/content/ContentValues;
    :cond_c
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 756
    .end local v31           #flag:Z
    :cond_d
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 760
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v6           #selection:Ljava/lang/String;
    .end local v9           #contactId:J
    .end local v11           #dataId:J
    .end local v20           #contactCursor:Landroid/database/Cursor;
    .end local v28           #display_number:Ljava/lang/String;
    .end local v32           #imageTemp:Landroid/graphics/Bitmap;
    .end local v33           #input:Ljava/io/InputStream;
    .end local v39           #phoneCursor:Landroid/database/Cursor;
    .end local v42           #pos:J
    .end local v46           #raw_contact_id:J
    .end local v51           #strNumberType:Ljava/lang/String;
    :cond_e
    if-eqz v22, :cond_f

    .line 761
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 762
    :cond_f
    if-eqz v23, :cond_10

    .line 763
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/widget/NoticeDBControl;->close()V

    .line 765
    :cond_10
    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/android/mms/widget/UpdateFavoriteDBData;->finisher:Ljava/lang/Runnable;

    if-eqz v4, :cond_11

    .line 766
    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/android/mms/widget/UpdateFavoriteDBData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 767
    :cond_11
    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 726
    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v9       #contactId:J
    .restart local v11       #dataId:J
    .restart local v20       #contactCursor:Landroid/database/Cursor;
    .restart local v24       #displayPhotoColumnIndex:I
    .restart local v25       #displayPhotoId:J
    .restart local v27       #displayPhotoUri:Landroid/net/Uri;
    .restart local v28       #display_number:Ljava/lang/String;
    .restart local v31       #flag:Z
    .restart local v32       #imageTemp:Landroid/graphics/Bitmap;
    .restart local v33       #input:Ljava/io/InputStream;
    .restart local v34       #itemName:Ljava/lang/String;
    .restart local v37       #newBitmap:Landroid/graphics/Bitmap;
    .restart local v39       #phoneCursor:Landroid/database/Cursor;
    .restart local v40       #photoId:J
    .restart local v42       #pos:J
    .restart local v45       #primary_Name:Ljava/lang/String;
    .restart local v46       #raw_contact_id:J
    .restart local v50       #selectionArg:Ljava/lang/String;
    .restart local v51       #strNumberType:Ljava/lang/String;
    .restart local v53       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 529
    check-cast p1, [Lcom/android/mms/widget/UpdateFavoriteDBData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/widget/UpdateContactDBTask;->doInBackground([Lcom/android/mms/widget/UpdateFavoriteDBData;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public queryPhoneNumbers(Landroid/content/Context;JJ)Landroid/database/Cursor;
    .locals 10
    .parameter "context"
    .parameter "contactId"
    .parameter "Dataid"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 781
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 782
    .local v6, baseUri:Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 784
    .local v1, dataUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 790
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 791
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    .end local v7           #c:Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 794
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v5

    .line 796
    goto :goto_0
.end method
