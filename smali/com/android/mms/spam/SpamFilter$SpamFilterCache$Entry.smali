.class public Lcom/android/mms/spam/SpamFilter$SpamFilterCache$Entry;
.super Ljava/lang/Object;
.source "SpamFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SpamFilter$SpamFilterCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public id:J

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "number"

    .prologue
    .line 218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-wide p1, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache$Entry;->id:J

    .line 220
    iput-object p3, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache$Entry;->number:Ljava/lang/String;

    .line 221
    return-void
.end method
