.class Lcom/android/mms/ui/MmsSinglePageFrame$16;
.super Ljava/lang/Object;
.source "MmsSinglePageFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageFrame;->exitMmsSinglePageFrame()V
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
    .line 2830
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$16;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2832
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$16;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1200(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2833
    return-void
.end method
