.class final Lcom/android/mms/transaction/MessagingNotification$1;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isStatusMessage:Z

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Landroid/content/Context;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$threadId:J

    iput-boolean p4, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$isStatusMessage:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$threadId:J

    iget-boolean v3, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$isStatusMessage:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 430
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "nonBlockingUpdateNewMessageIndicator()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method
