.class Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$1;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;)V
    .locals 0
    .parameter

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$1;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$1;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    #calls: Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->startSmilPlayer()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->access$900(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;)V

    .line 1124
    return-void
.end method
