.class Lcom/android/mms/ui/ComposeMessageFragment$101;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentLayout(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
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
    .line 8760
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$101;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 8762
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 8763
    packed-switch p2, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 8778
    :goto_0
    :pswitch_0
    return v0

    .line 8768
    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$101;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$101;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$101;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 8771
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$101;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 8774
    goto :goto_0

    .line 8763
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
