.class public Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;
.super Lcom/android/mms/ui/IconListAdapter$IconListItem;
.source "IconWeightListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/IconWeightListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "IconWeightListItem"
.end annotation


# instance fields
.field private mWeight:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V
    .locals 0
    .parameter "title"
    .parameter "resource"
    .parameter "command"
    .parameter "weight"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 82
    iput-wide p4, p0, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;->mWeight:J

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;J)V
    .locals 0
    .parameter "title"
    .parameter "resource"
    .parameter "weight"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 77
    iput-wide p3, p0, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;->mWeight:J

    .line 78
    return-void
.end method


# virtual methods
.method public getWeight()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;->mWeight:J

    return-wide v0
.end method
