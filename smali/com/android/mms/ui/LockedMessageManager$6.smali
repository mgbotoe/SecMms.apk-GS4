.class Lcom/android/mms/ui/LockedMessageManager$6;
.super Landroid/os/Handler;
.source "LockedMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/LockedMessageManager;->getDeleteEventHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/LockedMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$6;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const v3, 0x7f0c017e

    const v2, 0x7f0c017d

    .line 1121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1135
    :goto_0
    return-void

    .line 1123
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$6;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$6;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/LockedMessageManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageManager;->onProgressDlgStart(Ljava/lang/String;)V

    goto :goto_0

    .line 1126
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$6;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$6;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/LockedMessageManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageManager;->onProgressDlgCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 1129
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$6;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$6;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/LockedMessageManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageManager;->onProgressDlgStart(Ljava/lang/String;)V

    goto :goto_0

    .line 1132
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$6;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$6;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/LockedMessageManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageManager;->onProgressDlgCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 1121
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
