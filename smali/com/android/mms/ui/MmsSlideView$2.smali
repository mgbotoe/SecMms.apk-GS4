.class Lcom/android/mms/ui/MmsSlideView$2;
.super Ljava/lang/Object;
.source "MmsSlideView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSlideView;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView$2;->this$0:Lcom/android/mms/ui/MmsSlideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView$2;->this$0:Lcom/android/mms/ui/MmsSlideView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSlideView;->onImageLoaded()V

    .line 528
    return-void
.end method
