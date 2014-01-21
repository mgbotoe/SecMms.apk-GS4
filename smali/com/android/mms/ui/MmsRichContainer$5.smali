.class Lcom/android/mms/ui/MmsRichContainer$5;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsRichContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 1599
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$5;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1601
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 1603
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1604
    .local v3, parent:Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    .line 1605
    const-string v5, "Mms/MmsRichContainer"

    const-string v6, "parent is null !!!"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return v7

    .line 1609
    .restart local v3       #parent:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1610
    .local v2, page:Landroid/view/ViewGroup;
    if-nez v2, :cond_2

    .line 1611
    const-string v5, "Mms/MmsRichContainer"

    const-string v6, "page is null !!!"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1615
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1616
    .local v4, richContainer:Landroid/view/ViewGroup;
    if-nez v4, :cond_3

    .line 1617
    const-string v5, "Mms/MmsRichContainer"

    const-string v6, "richContainer is null !!!"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1621
    :cond_3
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1622
    .local v0, curPage:I
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$5;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v5, v0, v6}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 1624
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$5;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1625
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$5;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1628
    :cond_4
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v1

    .line 1629
    .local v1, isSipVisible:Z
    if-nez v1, :cond_0

    .line 1630
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$5;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v5}, Lcom/android/mms/ui/MmsRichContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1631
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$5;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;
    invoke-static {v5}, Lcom/android/mms/ui/MmsRichContainer;->access$1100(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/OnEventListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1632
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$5;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;
    invoke-static {v5}, Lcom/android/mms/ui/MmsRichContainer;->access$1100(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/OnEventListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    goto :goto_0
.end method
