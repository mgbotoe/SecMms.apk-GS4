.class Lcom/android/mms/ui/ManageSimMessages$2;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->refreshMessageList()V
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$300(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 170
    return-void
.end method
