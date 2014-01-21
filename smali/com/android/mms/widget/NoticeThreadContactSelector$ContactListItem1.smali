.class final Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;
.super Ljava/lang/Object;
.source "NoticeThreadContactSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/NoticeThreadContactSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContactListItem1"
.end annotation


# instance fields
.field public contactId:J

.field public itemImage:[B

.field public itemName:Ljava/lang/String;

.field public itemNamePrimary:Ljava/lang/String;

.field public itemNumber:Ljava/lang/String;

.field public phoneType:Ljava/lang/String;

.field public rawcontactId:J


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 512
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 513
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->contactId:J

    .line 515
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->rawcontactId:J

    .line 517
    iput-object v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemName:Ljava/lang/String;

    .line 519
    iput-object v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemNumber:Ljava/lang/String;

    .line 521
    iput-object v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemNamePrimary:Ljava/lang/String;

    .line 523
    iput-object v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemImage:[B

    .line 525
    iput-object v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->phoneType:Ljava/lang/String;

    return-void
.end method
