.class Lcom/android/mms/ui/ComposeMessageFragment$99;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initMessageList()V
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
    .line 8506
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$99;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "event"

    .prologue
    .line 8510
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFlickThreadView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8511
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$99;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->onFlickingTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8512
    const/4 v0, 0x1

    .line 8514
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
