.class Lcom/android/mms/ui/SlideView$11;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->setVideoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 1614
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$11;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$11;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$3600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/ui/TestVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$11;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$3600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/ui/TestVideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/TestVideoView;->setBackgroundColor(I)V

    .line 1618
    :cond_0
    return-void
.end method
