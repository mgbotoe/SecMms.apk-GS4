.class Lcom/android/mms/cover/MissedMsgActivity$5;
.super Ljava/lang/Object;
.source "MissedMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/cover/MissedMsgActivity;->setMissedMsgInfo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/cover/MissedMsgActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/cover/MissedMsgActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/mms/cover/MissedMsgActivity$5;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$5;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    new-instance v1, Lcom/android/mms/cover/MissedMsgActivity$5$1;

    invoke-direct {v1, p0}, Lcom/android/mms/cover/MissedMsgActivity$5$1;-><init>(Lcom/android/mms/cover/MissedMsgActivity$5;)V

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity$5;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I
    invoke-static {v2}, Lcom/android/mms/cover/MissedMsgActivity;->access$500(Lcom/android/mms/cover/MissedMsgActivity;)I

    move-result v2

    const/4 v3, 0x0

    #calls: Lcom/android/mms/cover/MissedMsgActivity;->markAsRead(Ljava/lang/Runnable;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;Ljava/lang/Runnable;IZ)V

    .line 453
    return-void
.end method
