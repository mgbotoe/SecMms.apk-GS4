.class final Lcom/android/mms/ui/IconWeightListAdapter$1;
.super Ljava/lang/Object;
.source "IconWeightListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/IconWeightListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/mms/ui/IconListAdapter$IconListItem;Lcom/android/mms/ui/IconListAdapter$IconListItem;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 44
    check-cast p1, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;->getWeight()J

    move-result-wide v0

    check-cast p2, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;->getWeight()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    check-cast p1, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    .end local p1
    check-cast p2, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/IconWeightListAdapter$1;->compare(Lcom/android/mms/ui/IconListAdapter$IconListItem;Lcom/android/mms/ui/IconListAdapter$IconListItem;)I

    move-result v0

    return v0
.end method
