.class public Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlickGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 14838
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 14841
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 14843
    .local v5, nWidth:I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v6, v7

    .line 14883
    :goto_0
    return v6

    .line 14846
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    sub-int v0, v6, v9

    .line 14847
    .local v0, deltaX:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 14848
    .local v2, distanceX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    sub-int v1, v6, v9

    .line 14849
    .local v1, deltaY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 14851
    .local v3, distanceY:I
    div-int/lit8 v4, v5, 0x3

    .line 14853
    .local v4, flickThreshold:I
    if-gt v2, v4, :cond_2

    move v6, v7

    .line 14854
    goto :goto_0

    .line 14856
    :cond_2
    if-gt v2, v3, :cond_3

    move v6, v7

    .line 14857
    goto :goto_0

    .line 14862
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    .line 14863
    goto :goto_0

    .line 14865
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsDeleteMode()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    .line 14866
    goto :goto_0

    .line 14868
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v7

    .line 14869
    goto :goto_0

    .line 14871
    :cond_6
    if-lez v0, :cond_7

    .line 14873
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v8}, Lcom/android/mms/ui/ConversationComposer;->flickMessage(Z)Z

    .line 14874
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    move v6, v8

    .line 14875
    goto :goto_0

    .line 14876
    :cond_7
    if-gez v0, :cond_8

    .line 14878
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/ConversationComposer;->flickMessage(Z)Z

    .line 14879
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    move v6, v8

    .line 14880
    goto :goto_0

    :cond_8
    move v6, v7

    .line 14883
    goto :goto_0
.end method
