.class Lcom/android/mms/ui/ManageSDMessages$4;
.super Ljava/lang/Object;
.source "ManageSDMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSDMessages;->initSDLists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSDMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSDMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages$4;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$4;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #calls: Lcom/android/mms/ui/ManageSDMessages;->getSDList()V
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$600(Lcom/android/mms/ui/ManageSDMessages;)V

    .line 275
    const-string v0, "Mms/ManageSDMessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "park arMsgItem.size() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$4;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$700(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$4;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$700(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$4;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$900(Lcom/android/mms/ui/ManageSDMessages;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ManageSDMessages$4$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSDMessages$4$1;-><init>(Lcom/android/mms/ui/ManageSDMessages$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$4;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$900(Lcom/android/mms/ui/ManageSDMessages;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ManageSDMessages$4$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSDMessages$4$2;-><init>(Lcom/android/mms/ui/ManageSDMessages$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
