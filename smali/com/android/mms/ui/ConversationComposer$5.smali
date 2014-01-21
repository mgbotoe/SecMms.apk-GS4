.class Lcom/android/mms/ui/ConversationComposer$5;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mOldHeight:I

.field mOldWidth:I

.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 503
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput v0, p0, Lcom/android/mms/ui/ConversationComposer$5;->mOldWidth:I

    .line 506
    iput v0, p0, Lcom/android/mms/ui/ConversationComposer$5;->mOldHeight:I

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 510
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 511
    .local v2, newWidth:I
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 513
    .local v1, newHeight:I
    iget v3, p0, Lcom/android/mms/ui/ConversationComposer$5;->mOldWidth:I

    if-ne v3, v2, :cond_0

    iget v3, p0, Lcom/android/mms/ui/ConversationComposer$5;->mOldHeight:I

    if-eq v3, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 515
    .local v0, isSizeChanged:Z
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 516
    const-string v3, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addOnGlobalLayoutListener width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    .line 519
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 520
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer$5;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    .line 521
    iput v2, p0, Lcom/android/mms/ui/ConversationComposer$5;->mOldWidth:I

    .line 522
    iput v1, p0, Lcom/android/mms/ui/ConversationComposer$5;->mOldHeight:I

    .line 524
    :cond_1
    return-void

    .line 513
    .end local v0           #isSizeChanged:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
