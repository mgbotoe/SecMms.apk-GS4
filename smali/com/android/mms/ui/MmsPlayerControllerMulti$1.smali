.class Lcom/android/mms/ui/MmsPlayerControllerMulti$1;
.super Ljava/lang/Object;
.source "MmsPlayerControllerMulti.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsPlayerControllerMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$1;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$1;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    #getter for: Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z
    invoke-static {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->access$000(Lcom/android/mms/ui/MmsPlayerControllerMulti;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$1;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->hide()V

    .line 158
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
