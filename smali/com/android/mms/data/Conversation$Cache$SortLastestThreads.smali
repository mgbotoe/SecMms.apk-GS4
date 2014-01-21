.class Lcom/android/mms/data/Conversation$Cache$SortLastestThreads;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Conversation$Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SortLastestThreads"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1512
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 1515
    move-object v0, p1

    check-cast v0, Lcom/android/mms/data/Conversation;

    .local v0, conv1:Lcom/android/mms/data/Conversation;
    move-object v1, p2

    .line 1516
    check-cast v1, Lcom/android/mms/data/Conversation;

    .line 1518
    .local v1, conv2:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
