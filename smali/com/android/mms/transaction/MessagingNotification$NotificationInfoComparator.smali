.class final Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotificationInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1284
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/MessagingNotification$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1284
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)I
    .locals 4
    .parameter "info1"
    .parameter "info2"

    .prologue
    .line 1286
    invoke-virtual {p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1284
    check-cast p1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .end local p1
    check-cast p2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;->compare(Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)I

    move-result v0

    return v0
.end method
