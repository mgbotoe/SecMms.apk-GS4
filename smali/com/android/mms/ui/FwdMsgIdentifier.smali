.class Lcom/android/mms/ui/FwdMsgIdentifier;
.super Ljava/lang/Object;
.source "CombineForwardMessage.java"


# static fields
.field public static final MSG_TYPE_MMS:I = 0x2

.field public static final MSG_TYPE_NONE:I = -0x1

.field public static final MSG_TYPE_SMS:I = 0x1

.field public static final MSG_TYPE_WPM:I = 0x3


# instance fields
.field private msgId:J

.field private msgType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 374
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/FwdMsgIdentifier;->msgId:J

    .line 376
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/FwdMsgIdentifier;->msgType:I

    .line 377
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 379
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-wide p1, p0, Lcom/android/mms/ui/FwdMsgIdentifier;->msgId:J

    .line 381
    iput p3, p0, Lcom/android/mms/ui/FwdMsgIdentifier;->msgType:I

    .line 382
    return-void
.end method


# virtual methods
.method public getMsgId()J
    .locals 2

    .prologue
    .line 385
    iget-wide v0, p0, Lcom/android/mms/ui/FwdMsgIdentifier;->msgId:J

    return-wide v0
.end method

.method public getMsgType()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/android/mms/ui/FwdMsgIdentifier;->msgType:I

    return v0
.end method

.method public setMsgId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 391
    iput-wide p1, p0, Lcom/android/mms/ui/FwdMsgIdentifier;->msgId:J

    .line 392
    return-void
.end method

.method public setMsgType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 394
    iput p1, p0, Lcom/android/mms/ui/FwdMsgIdentifier;->msgType:I

    .line 395
    return-void
.end method
