.class Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;
.super Ljava/lang/Object;
.source "NoticeDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/NoticeDeleteActivity;
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

.field final synthetic this$0:Lcom/android/mms/widget/NoticeDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/widget/NoticeDeleteActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 433
    iput-object p1, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mId:I

    .line 435
    iput v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mMessageId:I

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mPhoto:[B

    .line 438
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mContactName:Ljava/lang/String;

    .line 439
    return-void
.end method

.method constructor <init>(Lcom/android/mms/widget/NoticeDeleteActivity;II[BLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "messageId"
    .parameter "photo"
    .parameter "contactName"

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput p2, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mId:I

    .line 427
    iput p3, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mMessageId:I

    .line 429
    iput-object p4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mPhoto:[B

    .line 430
    iput-object p5, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mContactName:Ljava/lang/String;

    .line 431
    return-void
.end method


# virtual methods
.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mContactName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mId:I

    return v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mMessageId:I

    return v0
.end method

.method public getPhoto()[B
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mPhoto:[B

    return-object v0
.end method
