.class Lcom/android/mms/ui/ComposeMessageFragment$137;
.super Landroid/os/Handler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 15104
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$137;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 15106
    iget v0, p1, Landroid/os/Message;->what:I

    .line 15107
    .local v0, what:I
    packed-switch v0, :pswitch_data_0

    .line 15116
    :goto_0
    return-void

    .line 15109
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$137;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->showHideActionbar()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 15110
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$137;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->showHideAttachButtonDiable()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11900(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0

    .line 15107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
