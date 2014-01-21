.class Lcom/android/mms/ui/ComposeMessageFragment$4;
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
    .line 954
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$4;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 957
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$4;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 958
    const-string v3, "Mms/ComposeMessageFragment"

    const-string v4, "mMessageListViewHandler Fragment was detached"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 965
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 966
    .local v1, targetFontInterval:I
    const/4 v0, 0x0

    .line 967
    .local v0, currentFontSize:I
    const/4 v2, 0x0

    .line 969
    .local v2, targetFontSize:I
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$4;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v3

    const/16 v4, 0xff

    if-eq v3, v4, :cond_3

    .line 970
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$4;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v0

    .line 974
    :goto_1
    add-int v2, v0, v1

    .line 976
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 977
    const/4 v3, 0x7

    if-le v2, v3, :cond_4

    .line 978
    const/4 v2, 0x7

    .line 988
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$4;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 989
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$4;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->changeThreadviewTextSizeTo(I)V
    invoke-static {v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    goto :goto_0

    .line 972
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$4;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    goto :goto_1

    .line 979
    :cond_4
    if-ge v2, v5, :cond_2

    .line 980
    const/4 v2, 0x1

    goto :goto_2

    .line 982
    :cond_5
    const/4 v3, 0x5

    if-le v2, v3, :cond_6

    .line 983
    const/4 v2, 0x5

    goto :goto_2

    .line 984
    :cond_6
    if-ge v2, v5, :cond_2

    .line 985
    const/4 v2, 0x1

    goto :goto_2

    .line 962
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
