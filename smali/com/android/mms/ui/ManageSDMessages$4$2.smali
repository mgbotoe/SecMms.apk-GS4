.class Lcom/android/mms/ui/ManageSDMessages$4$2;
.super Ljava/lang/Object;
.source "ManageSDMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSDMessages$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ManageSDMessages$4;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSDMessages$4;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages$4$2;->this$1:Lcom/android/mms/ui/ManageSDMessages$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$4$2;->this$1:Lcom/android/mms/ui/ManageSDMessages$4;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$4;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    const/4 v1, 0x1

    #calls: Lcom/android/mms/ui/ManageSDMessages;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSDMessages;->access$800(Lcom/android/mms/ui/ManageSDMessages;I)V

    .line 292
    return-void
.end method
