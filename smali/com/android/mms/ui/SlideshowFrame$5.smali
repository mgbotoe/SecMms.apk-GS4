.class Lcom/android/mms/ui/SlideshowFrame$5;
.super Ljava/lang/Object;
.source "SlideshowFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame$5;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 704
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "++++++++++++++eunhee_mSmilControllerStart_run()before"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$5;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    #getter for: Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$1300(Lcom/android/mms/ui/SlideshowFrame;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "++++++++++++++eunhee_mSmilControllerStart_run()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$5;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    #getter for: Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$700(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$5;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    #getter for: Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$700(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    .line 712
    :cond_0
    return-void
.end method
