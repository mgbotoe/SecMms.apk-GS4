.class Lcom/android/mms/ui/MessageListItem$10;
.super Landroid/os/Handler;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 2399
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$10;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2402
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2408
    :goto_0
    return-void

    .line 2404
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$10;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$2700(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->performLongClick()Z

    .line 2405
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$10;->this$0:Lcom/android/mms/ui/MessageListItem;

    const-string v1, ""

    #setter for: Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageListItem;->access$2602(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2402
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
