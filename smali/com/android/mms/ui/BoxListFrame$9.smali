.class Lcom/android/mms/ui/BoxListFrame$9;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryDelayed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$9;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$9;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryInternal(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$1400(Lcom/android/mms/ui/BoxListFrame;Z)V

    .line 1112
    return-void
.end method
