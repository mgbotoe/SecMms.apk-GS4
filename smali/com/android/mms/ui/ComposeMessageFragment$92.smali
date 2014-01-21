.class Lcom/android/mms/ui/ComposeMessageFragment$92;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mOldHeight:I

.field mOldWidth:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 8000
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8001
    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->mOldWidth:I

    .line 8002
    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->mOldHeight:I

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 8007
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 8008
    .local v2, newWidth:I
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 8010
    .local v1, newHeight:I
    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->mOldWidth:I

    if-ne v4, v2, :cond_0

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->mOldHeight:I

    if-eq v4, v1, :cond_2

    :cond_0
    move v0, v3

    .line 8011
    .local v0, isSizeChanged:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/SortedMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8012
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel(Z)V
    invoke-static {v4, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3800(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    .line 8013
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->mOldWidth:I

    .line 8014
    iput v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->mOldHeight:I

    .line 8016
    :cond_1
    return-void

    .line 8010
    .end local v0           #isSizeChanged:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
