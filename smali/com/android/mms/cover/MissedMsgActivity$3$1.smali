.class Lcom/android/mms/cover/MissedMsgActivity$3$1;
.super Ljava/lang/Object;
.source "MissedMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/cover/MissedMsgActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/cover/MissedMsgActivity$3;


# direct methods
.method constructor <init>(Lcom/android/mms/cover/MissedMsgActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/mms/cover/MissedMsgActivity$3$1;->this$1:Lcom/android/mms/cover/MissedMsgActivity$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$3$1;->this$1:Lcom/android/mms/cover/MissedMsgActivity$3;

    iget-object v0, v0, Lcom/android/mms/cover/MissedMsgActivity$3;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #calls: Lcom/android/mms/cover/MissedMsgActivity;->setClearCoverMode(Z)V
    invoke-static {v0, v4}, Lcom/android/mms/cover/MissedMsgActivity;->access$100(Lcom/android/mms/cover/MissedMsgActivity;Z)V

    .line 340
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$3$1;->this$1:Lcom/android/mms/cover/MissedMsgActivity$3;

    iget-object v0, v0, Lcom/android/mms/cover/MissedMsgActivity$3;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    iget-object v0, v0, Lcom/android/mms/cover/MissedMsgActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/cover/MissedMsgActivity$3$1$1;

    invoke-direct {v1, p0}, Lcom/android/mms/cover/MissedMsgActivity$3$1$1;-><init>(Lcom/android/mms/cover/MissedMsgActivity$3$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$3$1;->this$1:Lcom/android/mms/cover/MissedMsgActivity$3;

    iget-object v0, v0, Lcom/android/mms/cover/MissedMsgActivity$3;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-virtual {v0, v4, v4}, Lcom/android/mms/cover/MissedMsgActivity;->overridePendingTransition(II)V

    .line 347
    return-void
.end method
