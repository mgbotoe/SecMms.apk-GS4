.class Lcom/android/mms/ui/SpamMessageManager$5;
.super Landroid/os/Handler;
.source "SpamMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SpamMessageManager;->getDeleteEventHandler()Landroid/os/Handler;
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
    .line 824
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$5;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const v3, 0x7f0c027c

    const v2, 0x7f0c017d

    .line 827
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 841
    :goto_0
    return-void

    .line 829
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager$5;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$5;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SpamMessageManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SpamMessageManager;->onProgressDlgStart(Ljava/lang/String;)V

    goto :goto_0

    .line 832
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager$5;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$5;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SpamMessageManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SpamMessageManager;->onProgressDlgCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 835
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager$5;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$5;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SpamMessageManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SpamMessageManager;->onProgressDlgStart(Ljava/lang/String;)V

    goto :goto_0

    .line 838
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager$5;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$5;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SpamMessageManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SpamMessageManager;->onProgressDlgCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 827
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
