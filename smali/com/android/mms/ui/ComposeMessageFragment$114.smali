.class Lcom/android/mms/ui/ComposeMessageFragment$114;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtons(Ljava/lang/String;Z)I
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
    .line 11369
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$114;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x42

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 11371
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    .line 11372
    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    move v2, v4

    .line 11404
    .end local p1
    :goto_1
    return v2

    .restart local p1
    :sswitch_0
    move-object v1, p1

    .line 11374
    check-cast v1, Lcom/android/mms/ui/ToButton;

    .line 11375
    .local v1, toButton:Lcom/android/mms/ui/ToButton;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$114;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDeleteHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ToButton;->delete(Landroid/os/Handler;)V

    move v2, v3

    .line 11376
    goto :goto_1

    .line 11379
    .end local v1           #toButton:Lcom/android/mms/ui/ToButton;
    :sswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$114;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnPreToButton()Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9400(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x13

    if-ne p2, v2, :cond_1

    .line 11380
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$114;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    .line 11381
    .local v0, splitMode:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 11382
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$114;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    .line 11387
    .end local v0           #splitMode:I
    :cond_1
    check-cast p1, Lcom/android/mms/ui/ToButton;

    .end local p1
    const/16 v2, 0x11

    invoke-static {v2}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/mms/ui/ToButton;->playSoundEffect(I)V

    move v2, v3

    .line 11388
    goto :goto_1

    .restart local v0       #splitMode:I
    .restart local p1
    :cond_2
    move v2, v4

    .line 11384
    goto :goto_1

    .line 11391
    .end local v0           #splitMode:I
    :sswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$114;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnNextToButton()Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x14

    if-ne p2, v2, :cond_3

    .line 11392
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$114;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 11393
    :cond_3
    check-cast p1, Lcom/android/mms/ui/ToButton;

    .end local p1
    invoke-static {v5}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/mms/ui/ToButton;->playSoundEffect(I)V

    move v2, v3

    .line 11394
    goto :goto_1

    .restart local p1
    :sswitch_3
    move v2, v3

    .line 11396
    goto :goto_1

    .line 11398
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 11399
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v2, v3

    .line 11401
    goto :goto_1

    .line 11372
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3e -> :sswitch_3
        0x43 -> :sswitch_0
    .end sparse-switch

    .line 11399
    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch
.end method
