.class Lcom/android/mms/ui/SlideshowActivity$10;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->moveSmsView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$10;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$10;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$10;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$2400(Lcom/android/mms/ui/SlideshowActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->startActivity(Landroid/content/Intent;)V

    .line 1914
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$10;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 1915
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$10;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$10;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mStartSlideAnim:I
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$2500(Lcom/android/mms/ui/SlideshowActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$10;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mEndSlideAnim:I
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$2600(Lcom/android/mms/ui/SlideshowActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowActivity;->overridePendingTransition(II)V

    .line 1916
    return-void
.end method
