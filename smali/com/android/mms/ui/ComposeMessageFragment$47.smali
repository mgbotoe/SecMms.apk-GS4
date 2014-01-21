.class Lcom/android/mms/ui/ComposeMessageFragment$47;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->updateSendFailedNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5035
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-wide p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->val$threadId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5037
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->val$threadId:J

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotificationForThread(Landroid/content/Context;J)V

    .line 5038
    return-void
.end method
