.class Lcom/android/mms/ui/MmsSinglePageFrame$19;
.super Ljava/lang/Object;
.source "MmsSinglePageFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageFrame;->onUpdate(Lcom/android/mms/data/Contact;)V
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
    .line 3140
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$19;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$19;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->drawTitle_Subject()V
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1700(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    .line 3148
    return-void
.end method
