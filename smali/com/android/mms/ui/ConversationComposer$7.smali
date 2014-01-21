.class Lcom/android/mms/ui/ConversationComposer$7;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationComposer;->initSplitManager()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDownX:I

.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0
    .parameter

    .prologue
    .line 1809
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$7;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1813
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 1839
    :goto_0
    return v1

    .line 1815
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer$7;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitBarLine:Landroid/view/View;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationComposer;->access$300(Lcom/android/mms/ui/ConversationComposer;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f02029e

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1816
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/ConversationComposer$7;->mDownX:I

    .line 1818
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer$7;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #setter for: Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z
    invoke-static {v2, v1}, Lcom/android/mms/ui/ConversationComposer;->access$402(Lcom/android/mms/ui/ConversationComposer;Z)Z

    .line 1819
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer$7;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessageTouchPointer()V

    goto :goto_0

    .line 1824
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    .line 1825
    .local v0, x:I
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer$7;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/ConversationComposer$7;->mDownX:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->UpdateSplitPosition(I)Z

    .line 1826
    iput v0, p0, Lcom/android/mms/ui/ConversationComposer$7;->mDownX:I

    goto :goto_0

    .line 1831
    .end local v0           #x:I
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$7;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitBarLine:Landroid/view/View;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$300(Lcom/android/mms/ui/ConversationComposer;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f02029b

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1832
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$7;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->saveSplitPosition()V

    .line 1834
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$7;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #setter for: Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ConversationComposer;->access$402(Lcom/android/mms/ui/ConversationComposer;Z)Z

    .line 1835
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$7;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->drawMessageTouchPointer()V

    move v1, v2

    .line 1836
    goto :goto_0

    .line 1813
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
