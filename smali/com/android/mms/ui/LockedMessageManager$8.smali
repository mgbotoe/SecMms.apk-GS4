.class Lcom/android/mms/ui/LockedMessageManager$8;
.super Ljava/lang/Object;
.source "LockedMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/LockedMessageManager;->startAsyncQueryDelayed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/LockedMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$8;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$8;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/LockedMessageManager;->startAsyncQueryInternal(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/LockedMessageManager;->access$800(Lcom/android/mms/ui/LockedMessageManager;Z)V

    .line 1393
    return-void
.end method
