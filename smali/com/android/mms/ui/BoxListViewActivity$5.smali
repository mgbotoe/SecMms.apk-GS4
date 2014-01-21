.class Lcom/android/mms/ui/BoxListViewActivity$5;
.super Ljava/lang/Object;
.source "BoxListViewActivity.java"

# interfaces
.implements Lcom/android/mms/ui/OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListViewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/android/mms/ui/BoxListViewActivity$5;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1340
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "onViewerClose"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$5;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z
    invoke-static {v1}, Lcom/android/mms/ui/BoxListViewActivity;->access$400(Lcom/android/mms/ui/BoxListViewActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1344
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$5;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListViewActivity;->finish()V

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1347
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$5;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListViewActivity;->getNextSplitMode()I

    move-result v0

    .line 1348
    .local v0, splitMode:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1349
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$5;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListViewActivity;->finish()V

    goto :goto_0

    .line 1352
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$5;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListViewActivity;->access$000(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/SplitManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1364
    if-eq v0, v4, :cond_3

    .line 1365
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$5;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListViewActivity;->access$300(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/BoxListFrame;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/BoxListFrame;->setVisibility(I)V

    .line 1368
    :cond_3
    if-nez v0, :cond_0

    .line 1369
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$5;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity$5;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    iget v2, v2, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    #calls: Lcom/android/mms/ui/BoxListViewActivity;->showEmptyScreen(IZ)V
    invoke-static {v1, v2, v4}, Lcom/android/mms/ui/BoxListViewActivity;->access$500(Lcom/android/mms/ui/BoxListViewActivity;IZ)V

    .line 1370
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$5;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity$5;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    iget v2, v2, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 1372
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$5;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListViewActivity;->access$300(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/BoxListFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onStart()V

    .line 1373
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$5;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListViewActivity;->access$300(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/BoxListFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onResume()V

    goto :goto_0
.end method
