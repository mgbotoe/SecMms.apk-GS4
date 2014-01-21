.class public Lcom/samsung/mms/data/SavedSmsMessage;
.super Ljava/lang/Object;
.source "SavedSmsMessage.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBody:Ljava/lang/String;

.field private mCanonicalAddress:Ljava/lang/String;

.field private mDate:J

.field private mId:J

.field private mLocked:I

.field private mRead:I

.field private mTotalCount:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v2, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mId:J

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mAddress:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mCanonicalAddress:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mBody:Ljava/lang/String;

    .line 20
    iput-wide v2, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mDate:J

    .line 21
    iput v1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mRead:I

    .line 22
    iput v1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mType:I

    .line 23
    iput v1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mLocked:I

    .line 24
    iput v1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mTotalCount:I

    .line 25
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIII)V
    .locals 0
    .parameter "id"
    .parameter "address"
    .parameter "canonicalAddress"
    .parameter "body"
    .parameter "date"
    .parameter "read"
    .parameter "type"
    .parameter "locked"
    .parameter "totalCount"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mId:J

    .line 29
    iput-object p3, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mAddress:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mCanonicalAddress:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mBody:Ljava/lang/String;

    .line 32
    iput-wide p6, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mDate:J

    .line 33
    iput p8, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mRead:I

    .line 34
    iput p9, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mType:I

    .line 35
    iput p10, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mLocked:I

    .line 36
    iput p11, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mTotalCount:I

    .line 37
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mCanonicalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mDate:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mId:J

    return-wide v0
.end method

.method public getLocked()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mLocked:I

    return v0
.end method

.method public getRead()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mRead:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mTotalCount:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mType:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mAddress:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mBody:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setCanonicalAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mCanonicalAddress:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mDate:J

    .line 94
    return-void
.end method

.method public setID(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mId:J

    .line 78
    return-void
.end method

.method public setLocked(I)V
    .locals 0
    .parameter "locked"

    .prologue
    .line 105
    iput p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mLocked:I

    .line 106
    return-void
.end method

.method public setRead(I)V
    .locals 0
    .parameter "read"

    .prologue
    .line 97
    iput p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mRead:I

    .line 98
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0
    .parameter "totalCount"

    .prologue
    .line 109
    iput p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mTotalCount:I

    .line 110
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 101
    iput p1, p0, Lcom/samsung/mms/data/SavedSmsMessage;->mType:I

    .line 102
    return-void
.end method
