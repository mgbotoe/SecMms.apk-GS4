.class public Lcom/android/mms/ui/ChooseContactSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "ChooseContactSelectorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V
    .locals 1
    .parameter "context"
    .parameter "contactList"

    .prologue
    .line 33
    invoke-static {p1, p2}, Lcom/android/mms/ui/ChooseContactSelectorAdapter;->getData(Landroid/content/Context;Lcom/android/mms/data/ContactList;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 34
    return-void
.end method

.method protected static getData(Landroid/content/Context;Lcom/android/mms/data/ContactList;)Ljava/util/List;
    .locals 6
    .parameter "context"
    .parameter "contactList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mms/data/ContactList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .local v1, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const/4 v2, 0x0

    .line 39
    .local v2, i:I
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 40
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v2}, Lcom/android/mms/ui/ChooseContactSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 43
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_1
    return-object v1
.end method
