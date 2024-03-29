.class public Lcom/android/vcard/VCardEntry$BirthdayData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BirthdayData"
.end annotation


# instance fields
.field private final mBirthday:Ljava/lang/String;

.field private mBirthdaySolaType:Ljava/lang/String;

.field private mBirthdaySolarDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "birthday"

    .prologue
    const/4 v0, 0x0

    .line 1389
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1386
    iput-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthdaySolaType:Ljava/lang/String;

    .line 1387
    iput-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthdaySolarDate:Ljava/lang/String;

    .line 1390
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    .line 1391
    return-void
.end method

.method static synthetic access$1800(Lcom/android/vcard/VCardEntry$BirthdayData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter "backReferenceIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1396
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1398
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1399
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1400
    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1401
    const-string v1, "data2"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1404
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthdaySolaType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1405
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1406
    const-string v1, "data15"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthdaySolaType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1407
    const-string v1, "data14"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthdaySolarDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1410
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1411
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 1420
    if-ne p0, p1, :cond_0

    .line 1421
    const/4 v1, 0x1

    .line 1427
    :goto_0
    return v1

    .line 1423
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$BirthdayData;

    if-nez v1, :cond_1

    .line 1424
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 1426
    check-cast v0, Lcom/android/vcard/VCardEntry$BirthdayData;

    .line 1427
    .local v0, birthdayData:Lcom/android/vcard/VCardEntry$BirthdayData;
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1442
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setBirthdaySolarDate(Ljava/lang/String;)V
    .locals 0
    .parameter "solarDate"

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthdaySolarDate:Ljava/lang/String;

    .line 1456
    return-void
.end method

.method public setBirthdayType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 1451
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthdaySolaType:Ljava/lang/String;

    .line 1452
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "birthday: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
