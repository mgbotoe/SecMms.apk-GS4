.class Lcom/android/mms/ui/ConversationListFragment$8;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->onSaveCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$8;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 920
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$8;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsSaveMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1000(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$8;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    .line 922
    :cond_0
    return-void
.end method
