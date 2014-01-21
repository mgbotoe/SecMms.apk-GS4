.class public Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;
.super Ljava/lang/Object;
.source "ConversationListRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/ConversationListRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConversationSms"
.end annotation


# instance fields
.field mAddress:Ljava/lang/String;

.field mDate:Ljava/lang/String;

.field mReadCount:I

.field mText:Ljava/lang/String;

.field mTotalCount:I

.field final synthetic this$0:Lcom/samsung/mms/ui/ConversationListRestore;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/ui/ConversationListRestore;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 408
    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p2, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mAddress:Ljava/lang/String;

    .line 410
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mDate:Ljava/lang/String;

    .line 411
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mText:Ljava/lang/String;

    .line 412
    iput v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mReadCount:I

    .line 413
    iput v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mTotalCount:I

    .line 414
    return-void
.end method

.method public constructor <init>(Lcom/samsung/mms/ui/ConversationListRestore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter "address"
    .parameter "date"
    .parameter "text"
    .parameter "readCount"
    .parameter "totalCount"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p2, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mAddress:Ljava/lang/String;

    .line 402
    iput-object p3, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mDate:Ljava/lang/String;

    .line 403
    iput-object p4, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mText:Ljava/lang/String;

    .line 404
    iput p5, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mReadCount:I

    .line 405
    iput p6, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mTotalCount:I

    .line 406
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getReadCount()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mReadCount:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->mTotalCount:I

    return v0
.end method
