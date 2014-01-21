.class Lcom/android/mms/cover/MissedMsgActivity$8;
.super Ljava/lang/Object;
.source "MissedMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/cover/MissedMsgActivity;->moveToNextMessage(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/cover/MissedMsgActivity;

.field final synthetic val$currentIdx:I


# direct methods
.method constructor <init>(Lcom/android/mms/cover/MissedMsgActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/mms/cover/MissedMsgActivity$8;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    iput p2, p0, Lcom/android/mms/cover/MissedMsgActivity$8;->val$currentIdx:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$8;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    iget v1, p0, Lcom/android/mms/cover/MissedMsgActivity$8;->val$currentIdx:I

    add-int/lit8 v1, v1, -0x1

    #calls: Lcom/android/mms/cover/MissedMsgActivity;->setMissedMsgInfo(I)V
    invoke-static {v0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->access$900(Lcom/android/mms/cover/MissedMsgActivity;I)V

    .line 663
    return-void
.end method
