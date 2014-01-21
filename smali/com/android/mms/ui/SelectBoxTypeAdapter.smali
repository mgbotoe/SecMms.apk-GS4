.class public Lcom/android/mms/ui/SelectBoxTypeAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "SelectBoxTypeAdapter.java"


# static fields
.field public static final MOVE_DRAFT:I = 0x3

.field public static final MOVE_INBOX:I = 0x0

.field public static final MOVE_OUTBOX:I = 0x2

.field public static final MOVE_SENTBOX:I = 0x1

.field public static final MOVE_WAPPUSH:I = 0x4


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-static {p1}, Lcom/android/mms/ui/SelectBoxTypeAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 26
    return-void
.end method

.method private static adjustBoxTypeString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "str"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    :cond_0
    const/4 v1, 0x0

    .line 70
    :cond_1
    :goto_0
    return-object v1

    .line 62
    :cond_2
    move-object v1, p1

    .line 63
    .local v1, newString:Ljava/lang/String;
    const-string v2, "SelectBoxTypeAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustBoxTypeString(),str="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    .line 65
    .local v0, fontSize:I
    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 66
    const-string v2, "Push message"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    const-string v2, "Push message"

    const-string v3, "Push msg"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    invoke-static {p0, v9, v8}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, inbox:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020191

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v0, v2, v6, v9}, Lcom/android/mms/ui/SelectBoxTypeAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 35
    invoke-static {p0, v8, v8}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, sentbox:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020193

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v0, v5, v6, v8}, Lcom/android/mms/ui/SelectBoxTypeAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 39
    invoke-static {p0, v10, v8}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, outbox:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020192

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v0, v3, v6, v10}, Lcom/android/mms/ui/SelectBoxTypeAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 43
    invoke-static {p0, v11, v8}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, draft:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020190

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v0, v1, v6, v11}, Lcom/android/mms/ui/SelectBoxTypeAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 48
    invoke-static {p0, v12, v8}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, push:Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/android/mms/ui/SelectBoxTypeAdapter;->adjustBoxTypeString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020194

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v0, v4, v6, v12}, Lcom/android/mms/ui/SelectBoxTypeAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 54
    return-object v0
.end method
