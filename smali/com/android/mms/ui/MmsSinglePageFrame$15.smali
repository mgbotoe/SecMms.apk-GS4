.class Lcom/android/mms/ui/MmsSinglePageFrame$15;
.super Ljava/lang/Object;
.source "MmsSinglePageFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageFrame;->moveSmsView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 2813
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$15;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2815
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$15;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1200(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$15;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1400(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2816
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$15;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1200(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2817
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$15;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1200(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$15;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mStartSlideAnim:I
    invoke-static {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1500(Lcom/android/mms/ui/MmsSinglePageFrame;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame$15;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mEndSlideAnim:I
    invoke-static {v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1600(Lcom/android/mms/ui/MmsSinglePageFrame;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 2818
    return-void
.end method
