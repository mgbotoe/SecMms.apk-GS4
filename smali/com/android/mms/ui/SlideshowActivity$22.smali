.class Lcom/android/mms/ui/SlideshowActivity$22;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2554
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$22;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2556
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$22;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->drawTitle()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$3000(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 2557
    return-void
.end method
