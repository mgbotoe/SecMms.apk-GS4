.class Lcom/android/mms/ui/ManageSimMessages$4;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages;->onClickDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;

.field final synthetic val$checkedList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$4;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iput-object p2, p0, Lcom/android/mms/ui/ManageSimMessages$4;->val$checkedList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 502
    const/4 v6, 0x0

    .line 503
    .local v6, copiedCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$4;->val$checkedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$4;->val$checkedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;

    .line 505
    .local v8, info:Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$4;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget v1, v8, Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;->mType:I

    iget-object v2, v8, Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;->mAddress:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;->mBody:Ljava/lang/String;

    iget-wide v4, v8, Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;->mDate:J

    #calls: Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(ILjava/lang/String;Ljava/lang/String;J)Z
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ManageSimMessages;->access$600(Lcom/android/mms/ui/ManageSimMessages;ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    add-int/lit8 v6, v6, 0x1

    .line 503
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 510
    .end local v8           #info:Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$4;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCompleteHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$700(Lcom/android/mms/ui/ManageSimMessages;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-static {v0, v1, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 511
    return-void
.end method
