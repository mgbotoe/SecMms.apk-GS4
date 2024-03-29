.class public Lcom/android/vcard/VCardEntry$NoteData;
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
    name = "NoteData"
.end annotation


# instance fields
.field public final mNote:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "note"

    .prologue
    .line 1274
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1275
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NoteData;->mNote:Ljava/lang/String;

    .line 1276
    return-void
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
    .line 1281
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1283
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1284
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1285
    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NoteData;->mNote:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1286
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1287
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 1296
    if-ne p0, p1, :cond_0

    .line 1297
    const/4 v1, 0x1

    .line 1303
    :goto_0
    return v1

    .line 1299
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$NoteData;

    if-nez v1, :cond_1

    .line 1300
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 1302
    check-cast v0, Lcom/android/vcard/VCardEntry$NoteData;

    .line 1303
    .local v0, noteData:Lcom/android/vcard/VCardEntry$NoteData;
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NoteData;->mNote:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/vcard/VCardEntry$NoteData;->mNote:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1318
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NOTE:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NoteData;->mNote:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NoteData;->mNote:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NoteData;->mNote:Ljava/lang/String;

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
    .line 1291
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NoteData;->mNote:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NoteData;->mNote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
