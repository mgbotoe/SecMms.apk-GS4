.class Lcom/android/mms/ui/GroupMessagingRecipientListActivity$5;
.super Landroid/os/Handler;
.source "GroupMessagingRecipientListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/GroupMessagingRecipientListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$5;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 388
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 396
    :goto_0
    return-void

    .line 391
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$5;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    #calls: Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->AddNumberByRecipientEditor(ZZ)Z
    invoke-static {v0, v1, v1}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->access$400(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;ZZ)Z

    goto :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
