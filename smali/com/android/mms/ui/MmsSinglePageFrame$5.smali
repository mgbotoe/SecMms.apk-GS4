.class Lcom/android/mms/ui/MmsSinglePageFrame$5;
.super Ljava/lang/Object;
.source "MmsSinglePageFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageFrame;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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
    .line 1309
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$5;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$5;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->setScrollPosition(I)V

    .line 1312
    return-void
.end method
