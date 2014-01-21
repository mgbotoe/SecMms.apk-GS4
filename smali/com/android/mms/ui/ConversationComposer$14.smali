.class Lcom/android/mms/ui/ConversationComposer$14;
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
    .line 2346
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2348
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onCmasViewStateChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2356
    :goto_0
    return-void

    .line 2352
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2354
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 2355
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto :goto_0
.end method
