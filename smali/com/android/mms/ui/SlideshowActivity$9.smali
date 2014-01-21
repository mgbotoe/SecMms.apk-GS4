.class Lcom/android/mms/ui/SlideshowActivity$9;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->launchMessageViewer(ZJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;

.field final synthetic val$newer:Z

.field final synthetic val$runIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/content/Intent;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1681
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$9;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$9;->val$runIntent:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/android/mms/ui/SlideshowActivity$9;->val$newer:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$9;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$9;->val$runIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->startActivity(Landroid/content/Intent;)V

    .line 1684
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$9;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 1686
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity$9;->val$newer:Z

    if-eqz v0, :cond_0

    .line 1687
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$9;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const v1, 0x7f050003

    const v2, 0x7f050004

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowActivity;->overridePendingTransition(II)V

    .line 1691
    :goto_0
    return-void

    .line 1689
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$9;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const v1, 0x7f050005

    const v2, 0x7f050006

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
