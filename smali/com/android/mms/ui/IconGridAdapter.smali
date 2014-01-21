.class public Lcom/android/mms/ui/IconGridAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "IconGridAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const v0, 0x7f040041

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 33
    return-void
.end method
