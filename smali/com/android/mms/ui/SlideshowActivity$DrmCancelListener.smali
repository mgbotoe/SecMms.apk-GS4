.class Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrmCancelListener"
.end annotation


# instance fields
.field final mCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "callback"

    .prologue
    .line 2006
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2007
    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;->mCallback:Ljava/lang/Runnable;

    .line 2008
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2011
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2012
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2015
    :cond_0
    return-void
.end method
