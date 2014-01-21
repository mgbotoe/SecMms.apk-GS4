.class Lcom/android/mms/ui/ManageSimMessages$5$1;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ManageSimMessages$5;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages$5;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$5$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$5$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$5;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/ManageSimMessages;->setListMode(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->access$1000(Lcom/android/mms/ui/ManageSimMessages;I)V

    .line 608
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$5$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$5;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->refreshMessageList()V
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$300(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 609
    return-void
.end method
