.class Lcom/android/mms/ui/ConversationComposer$13;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Lcom/android/mms/ui/OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0
    .parameter

    .prologue
    .line 2309
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2311
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "onComposerStateChanged"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #calls: Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$700(Lcom/android/mms/ui/ConversationComposer;)I

    move-result v0

    .line 2315
    .local v0, state:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2343
    :goto_0
    return-void

    .line 2318
    :cond_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2320
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 2321
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto :goto_0

    .line 2324
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2326
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 2328
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 2330
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    const-string v2, "FromSearchView"

    invoke-virtual {v1, v2, v4}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2331
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 2335
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$800(Lcom/android/mms/ui/ConversationComposer;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #setter for: Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z
    invoke-static {v1, v4}, Lcom/android/mms/ui/ConversationComposer;->access$802(Lcom/android/mms/ui/ConversationComposer;Z)Z

    .line 2337
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto :goto_0

    .line 2333
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    goto :goto_1

    .line 2318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
