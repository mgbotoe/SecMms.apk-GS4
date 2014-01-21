.class Lcom/android/mms/cover/MissedMsgActivity$2;
.super Ljava/lang/Object;
.source "MissedMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/cover/MissedMsgActivity;->initActivity()V
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
    .line 267
    iput-object p1, p0, Lcom/android/mms/cover/MissedMsgActivity$2;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$2;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/mms/cover/MissedMsgActivity;->setClearCoverMode(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->access$100(Lcom/android/mms/cover/MissedMsgActivity;Z)V

    .line 271
    return-void
.end method
