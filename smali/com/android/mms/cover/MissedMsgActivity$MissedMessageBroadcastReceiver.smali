.class Lcom/android/mms/cover/MissedMsgActivity$MissedMessageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MissedMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/cover/MissedMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MissedMessageBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/cover/MissedMsgActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/cover/MissedMsgActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/mms/cover/MissedMsgActivity$MissedMessageBroadcastReceiver;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/cover/MissedMsgActivity;Lcom/android/mms/cover/MissedMsgActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 708
    invoke-direct {p0, p1}, Lcom/android/mms/cover/MissedMsgActivity$MissedMessageBroadcastReceiver;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 711
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 713
    .local v4, extras:Landroid/os/Bundle;
    const-string v7, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 714
    const/4 v1, 0x1

    .line 715
    .local v1, bCoverOpened:Z
    if-eqz v4, :cond_2

    const-string v7, "coverOpen"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 716
    const-string v7, "coverOpen"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 717
    if-eqz v1, :cond_2

    .line 718
    const-string v7, "Mms/MissedMsgActivity"

    const-string v8, "Cover open!!!!"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const/4 v5, 0x0

    .line 721
    .local v5, open_intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/cover/MissedMsgActivity;->access$300()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/cover/MissedMsgActivity$MissedMessageBroadcastReceiver;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mIsEnterConvList:Z
    invoke-static {v7}, Lcom/android/mms/cover/MissedMsgActivity;->access$1000(Lcom/android/mms/cover/MissedMsgActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/cover/MissedMsgActivity$MissedMessageBroadcastReceiver;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z
    invoke-static {v7}, Lcom/android/mms/cover/MissedMsgActivity;->access$400(Lcom/android/mms/cover/MissedMsgActivity;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 722
    :cond_0
    const-wide/16 v2, 0x0

    .line 723
    .local v2, enterThreadId:J
    invoke-static {}, Lcom/android/mms/cover/MissedMsgActivity;->access$300()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/cover/MissedMsgActivity$MissedMessageBroadcastReceiver;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z
    invoke-static {v7}, Lcom/android/mms/cover/MissedMsgActivity;->access$400(Lcom/android/mms/cover/MissedMsgActivity;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 724
    :cond_1
    iget-object v7, p0, Lcom/android/mms/cover/MissedMsgActivity$MissedMessageBroadcastReceiver;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J
    invoke-static {v7}, Lcom/android/mms/cover/MissedMsgActivity;->access$1100(Lcom/android/mms/cover/MissedMsgActivity;)J

    move-result-wide v2

    .line 728
    :goto_0
    iget-object v7, p0, Lcom/android/mms/cover/MissedMsgActivity$MissedMessageBroadcastReceiver;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->isCmas:Z
    invoke-static {v7}, Lcom/android/mms/cover/MissedMsgActivity;->access$1300(Lcom/android/mms/cover/MissedMsgActivity;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 729
    const-string v6, ""

    .line 730
    .local v6, presidentialCMAS:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    .line 731
    const v7, 0x7f0c01c5

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 736
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/mms/cover/MissedMsgActivity$MissedMessageBroadcastReceiver;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mCmasType:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/cover/MissedMsgActivity;->access$1400(Lcom/android/mms/cover/MissedMsgActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 737
    invoke-static {p1, v2, v3}, Lcom/android/mms/ui/CMASViewer;->createIntentForNoti(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v5

    .line 748
    .end local v2           #enterThreadId:J
    .end local v6           #presidentialCMAS:Ljava/lang/String;
    :goto_2
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/mms/cover/MissedMsgActivity;->access$202(Z)Z

    .line 749
    iget-object v7, p0, Lcom/android/mms/cover/MissedMsgActivity$MissedMessageBroadcastReceiver;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    const/4 v8, 0x0

    #calls: Lcom/android/mms/cover/MissedMsgActivity;->setClearCoverMode(Z)V
    invoke-static {v7, v8}, Lcom/android/mms/cover/MissedMsgActivity;->access$100(Lcom/android/mms/cover/MissedMsgActivity;Z)V

    .line 750
    iget-object v7, p0, Lcom/android/mms/cover/MissedMsgActivity$MissedMessageBroadcastReceiver;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-virtual {v7, v5}, Lcom/android/mms/cover/MissedMsgActivity;->startActivity(Landroid/content/Intent;)V

    .line 751
    iget-object v7, p0, Lcom/android/mms/cover/MissedMsgActivity$MissedMessageBroadcastReceiver;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-virtual {v7}, Lcom/android/mms/cover/MissedMsgActivity;->finish()V

    .line 755
    .end local v1           #bCoverOpened:Z
    .end local v5           #open_intent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 726
    .restart local v1       #bCoverOpened:Z
    .restart local v2       #enterThreadId:J
    .restart local v5       #open_intent:Landroid/content/Intent;
    :cond_3
    iget-object v7, p0, Lcom/android/mms/cover/MissedMsgActivity$MissedMessageBroadcastReceiver;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mLaunchThreadId:J
    invoke-static {v7}, Lcom/android/mms/cover/MissedMsgActivity;->access$1200(Lcom/android/mms/cover/MissedMsgActivity;)J

    move-result-wide v2

    goto :goto_0

    .line 733
    .restart local v6       #presidentialCMAS:Ljava/lang/String;
    :cond_4
    const v7, 0x7f0c01e9

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 739
    :cond_5
    invoke-static {p1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v5

    goto :goto_2

    .line 742
    .end local v6           #presidentialCMAS:Ljava/lang/String;
    :cond_6
    invoke-static {p1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v5

    goto :goto_2

    .line 745
    .end local v2           #enterThreadId:J
    :cond_7
    new-instance v5, Landroid/content/Intent;

    .end local v5           #open_intent:Landroid/content/Intent;
    const-class v7, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v5, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 746
    .restart local v5       #open_intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method
