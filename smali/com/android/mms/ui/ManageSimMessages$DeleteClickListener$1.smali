.class Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, deletedCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    #getter for: Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->mCheckedList:[I
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->access$900(Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;)[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 561
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    iget-object v2, v2, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    #getter for: Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->mCheckedList:[I
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->access$900(Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;)[I

    move-result-object v3

    aget v3, v3, v1

    #calls: Lcom/android/mms/ui/ManageSimMessages;->deleteFromSim(I)I
    invoke-static {v2, v3}, Lcom/android/mms/ui/ManageSimMessages;->access$400(Lcom/android/mms/ui/ManageSimMessages;I)I

    move-result v2

    add-int/2addr v0, v2

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    iget-object v2, v2, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCompleteHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$700(Lcom/android/mms/ui/ManageSimMessages;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 565
    return-void
.end method
