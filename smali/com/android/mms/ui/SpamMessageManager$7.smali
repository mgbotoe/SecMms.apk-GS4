.class Lcom/android/mms/ui/SpamMessageManager$7;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SpamMessageManager;->startAsyncQueryDelayed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SpamMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SpamMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$7;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager$7;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/SpamMessageManager;->startAsyncQueryInternal(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/SpamMessageManager;->access$600(Lcom/android/mms/ui/SpamMessageManager;Z)V

    .line 1122
    return-void
.end method
