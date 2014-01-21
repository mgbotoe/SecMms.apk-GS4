.class Lcom/android/mms/ui/SlideshowFrame$DrmCancelListener;
.super Ljava/lang/Object;
.source "SlideshowFrame.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrmCancelListener"
.end annotation


# instance fields
.field final mCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/mms/ui/SlideshowFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowFrame;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "callback"

    .prologue
    .line 1670
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame$DrmCancelListener;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1671
    iput-object p2, p0, Lcom/android/mms/ui/SlideshowFrame$DrmCancelListener;->mCallback:Ljava/lang/Runnable;

    .line 1673
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1675
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1676
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$DrmCancelListener;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1677
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$DrmCancelListener;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1679
    :cond_0
    return-void
.end method
