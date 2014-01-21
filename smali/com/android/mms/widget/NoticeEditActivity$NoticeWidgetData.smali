.class Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;
.super Ljava/lang/Object;
.source "NoticeEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/NoticeEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoticeWidgetData"
.end annotation


# instance fields
.field private mContactName:Ljava/lang/String;

.field private mId:I

.field private mMessageId:I

.field private mPhoto:[B

.field final synthetic this$0:Lcom/android/mms/widget/NoticeEditActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/widget/NoticeEditActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 384
    iput-object p1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->this$0:Lcom/android/mms/widget/NoticeEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->mId:I

    .line 386
    iput v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->mMessageId:I

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->mPhoto:[B

    .line 389
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->mContactName:Ljava/lang/String;

    .line 390
    return-void
.end method

.method constructor <init>(Lcom/android/mms/widget/NoticeEditActivity;II[BLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "messageId"
    .parameter "photo"
    .parameter "contactName"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->this$0:Lcom/android/mms/widget/NoticeEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput p2, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->mId:I

    .line 378
    iput p3, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->mMessageId:I

    .line 380
    iput-object p4, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->mPhoto:[B

    .line 381
    iput-object p5, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->mContactName:Ljava/lang/String;

    .line 382
    return-void
.end method


# virtual methods
.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->mContactName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->mId:I

    return v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->mMessageId:I

    return v0
.end method

.method public getPhoto()[B
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->mPhoto:[B

    return-object v0
.end method
