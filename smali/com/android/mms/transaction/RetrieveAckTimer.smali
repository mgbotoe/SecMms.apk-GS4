.class public Lcom/android/mms/transaction/RetrieveAckTimer;
.super Ljava/lang/Object;
.source "RetrieveAckTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/RetrieveAckTimer"


# instance fields
.field private final mAckType:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mDelay:I

.field private mIsSpam:Z

.field private mMessageId:J

.field private mRetryAckCnt:I

.field private final mTransactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)V
    .locals 0
    .parameter "context"
    .parameter "messageId"
    .parameter "transactionId"
    .parameter "type"
    .parameter "isSpam"
    .parameter "retryAckCnt"
    .parameter "delay"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/mms/transaction/RetrieveAckTimer;->mContext:Landroid/content/Context;

    .line 39
    iput-wide p2, p0, Lcom/android/mms/transaction/RetrieveAckTimer;->mMessageId:J

    .line 40
    iput-object p5, p0, Lcom/android/mms/transaction/RetrieveAckTimer;->mAckType:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/android/mms/transaction/RetrieveAckTimer;->mTransactionId:Ljava/lang/String;

    .line 42
    iput-boolean p6, p0, Lcom/android/mms/transaction/RetrieveAckTimer;->mIsSpam:Z

    .line 43
    iput p7, p0, Lcom/android/mms/transaction/RetrieveAckTimer;->mRetryAckCnt:I

    .line 44
    iput p8, p0, Lcom/android/mms/transaction/RetrieveAckTimer;->mDelay:I

    .line 45
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 48
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v3, p0, Lcom/android/mms/transaction/RetrieveAckTimer;->mDelay:I

    if-ge v2, v3, :cond_0

    .line 49
    const-string v3, "Mms/RetrieveAckTimer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ack retry delay count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 56
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_ACKALARM"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveAckTimer;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, ackIntent:Landroid/content/Intent;
    const-string v3, "MsgType"

    iget-object v4, p0, Lcom/android/mms/transaction/RetrieveAckTimer;->mAckType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v3, "MsgId"

    iget-wide v4, p0, Lcom/android/mms/transaction/RetrieveAckTimer;->mMessageId:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 60
    const-string v3, "TansId"

    iget-object v4, p0, Lcom/android/mms/transaction/RetrieveAckTimer;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v3, "retryAckCnt"

    iget v4, p0, Lcom/android/mms/transaction/RetrieveAckTimer;->mRetryAckCnt:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v3, "isSpam"

    iget-boolean v4, p0, Lcom/android/mms/transaction/RetrieveAckTimer;->mIsSpam:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    iget-object v3, p0, Lcom/android/mms/transaction/RetrieveAckTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    return-void
.end method
