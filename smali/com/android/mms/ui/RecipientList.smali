.class public Lcom/android/mms/ui/RecipientList;
.super Ljava/lang/Object;
.source "RecipientList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RecipientList$Recipient;
    }
.end annotation


# instance fields
.field private final mInvalidRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientList$Recipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientList$Recipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    .line 37
    return-void
.end method


# virtual methods
.method public add(Lcom/android/mms/ui/RecipientList$Recipient;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 48
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/RecipientList$Recipient;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/ui/RecipientList$Recipient;->filter()Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public containsBcc()Z
    .locals 3

    .prologue
    .line 262
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 263
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-boolean v2, v2, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-eqz v2, :cond_0

    .line 265
    const/4 v2, 0x1

    .line 268
    :goto_1
    return v2

    .line 263
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public containsEmail()Z
    .locals 3

    .prologue
    .line 272
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 273
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 274
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-object v2, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const/4 v2, 0x1

    .line 278
    :goto_1
    return v2

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public countInvalidRecipients()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getBccNumbers()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 282
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 284
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 285
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 286
    .local v3, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-boolean v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 287
    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v3           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getInvalidRecipientString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 330
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 331
    if-eqz v1, :cond_0

    .line 332
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 336
    .local v2, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-boolean v4, v2, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-eqz v4, :cond_1

    .line 337
    const-string v4, "%bcc%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_1
    iget-object v4, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v2           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getNumbers()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 294
    iget-object v3, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 295
    .local v0, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 297
    iget-object v3, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-object v3, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getSingleRecipient()Lcom/android/mms/ui/RecipientList$Recipient;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 240
    iget-object v1, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 241
    .local v0, count:I
    if-eq v0, v3, :cond_1

    .line 242
    iget-object v1, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 243
    if-eq v0, v3, :cond_0

    .line 244
    const/4 v1, 0x0

    .line 249
    :goto_0
    return-object v1

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/RecipientList$Recipient;

    goto :goto_0

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/RecipientList$Recipient;

    goto :goto_0
.end method

.method public getSingleRecipientNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientList;->getSingleRecipient()Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v0

    .line 255
    .local v0, first:Lcom/android/mms/ui/RecipientList$Recipient;
    if-nez v0, :cond_0

    .line 256
    const/4 v1, 0x0

    .line 258
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method public getToNumbers()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 225
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 226
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 227
    .local v3, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-boolean v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 228
    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v3           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public hasInvalidRecipient()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValidRecipient()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invaliditerator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/ui/RecipientList$Recipient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/ui/RecipientList$Recipient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 5

    .prologue
    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 305
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 306
    if-eqz v1, :cond_0

    .line 307
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 311
    .local v2, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-boolean v4, v2, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-eqz v4, :cond_1

    .line 312
    const-string v4, "%bcc%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_1
    iget-object v4, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    .end local v2           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public size()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
