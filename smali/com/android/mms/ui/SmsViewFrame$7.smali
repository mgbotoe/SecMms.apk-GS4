.class Lcom/android/mms/ui/SmsViewFrame$7;
.super Ljava/util/LinkedHashMap;
.source "SmsViewFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsViewFrame;->getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Long;",
        "Lcom/android/mms/ui/MessageItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsViewFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsViewFrame;IFZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame$7;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter "eldest"

    .prologue
    .line 1499
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewFrame$7;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
