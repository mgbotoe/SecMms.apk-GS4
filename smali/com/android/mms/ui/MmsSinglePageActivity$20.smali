.class Lcom/android/mms/ui/MmsSinglePageActivity$20;
.super Ljava/lang/Object;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;->moveSmsView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3491
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$20;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3493
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$20;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$20;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    #getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$1400(Lcom/android/mms/ui/MmsSinglePageActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V

    .line 3495
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$20;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$20;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    #getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mStartSlideAnim:I
    invoke-static {v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$1500(Lcom/android/mms/ui/MmsSinglePageActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity$20;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    #getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mEndSlideAnim:I
    invoke-static {v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$1600(Lcom/android/mms/ui/MmsSinglePageActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->overridePendingTransition(II)V

    .line 3496
    return-void
.end method
