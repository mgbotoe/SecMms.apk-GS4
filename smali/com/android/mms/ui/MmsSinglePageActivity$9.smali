.class Lcom/android/mms/ui/MmsSinglePageActivity$9;
.super Ljava/lang/Object;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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
    .line 1777
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$9;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$9;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->setScrollPosition(I)V

    .line 1780
    return-void
.end method
