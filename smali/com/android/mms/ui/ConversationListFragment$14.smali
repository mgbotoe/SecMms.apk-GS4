.class Lcom/android/mms/ui/ConversationListFragment$14;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->startSearchMenu()V
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
    .line 1388
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$14;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$14;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDelayForSearch:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1702(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    .line 1393
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1202(Z)Z

    .line 1394
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$14;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1395
    return-void
.end method
