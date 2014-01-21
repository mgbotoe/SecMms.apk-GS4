.class Lcom/android/mms/ui/MessageListAdapter$3;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListAdapter;->setAnimation(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 526
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListAdapter;->access$000(Lcom/android/mms/ui/MessageListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 527
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListAdapter;->access$000(Lcom/android/mms/ui/MessageListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListAdapter;->access$000(Lcom/android/mms/ui/MessageListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 526
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/mms/ui/MessageListAdapter;->mAnimation:Landroid/view/animation/Animation;

    .line 532
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 522
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 518
    return-void
.end method
