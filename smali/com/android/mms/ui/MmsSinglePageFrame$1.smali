.class Lcom/android/mms/ui/MmsSinglePageFrame$1;
.super Landroid/database/ContentObserver;
.source "MmsSinglePageFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsSinglePageFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$1;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfUpdate"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$1;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$000(Lcom/android/mms/ui/MmsSinglePageFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$1;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$000(Lcom/android/mms/ui/MmsSinglePageFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$1;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$100(Lcom/android/mms/ui/MmsSinglePageFrame;)Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$1;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$000(Lcom/android/mms/ui/MmsSinglePageFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$1;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$100(Lcom/android/mms/ui/MmsSinglePageFrame;)Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$1;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$000(Lcom/android/mms/ui/MmsSinglePageFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setFailedeIcon(Z)V

    .line 208
    :cond_0
    return-void
.end method
