.class Lcom/android/mms/ui/ReservationMessageManager$8;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQueryDelayed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$8;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager$8;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQueryInternal(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$800(Lcom/android/mms/ui/ReservationMessageManager;Z)V

    .line 1284
    return-void
.end method
