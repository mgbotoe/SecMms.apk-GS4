.class Lcom/android/mms/ui/MessageOptions$2;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageOptions;->forwardMessageWithCloseComposer(Lcom/android/mms/ui/ComposeMessageFragment;ZLcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;

.field final synthetic val$comp:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$2;->this$0:Lcom/android/mms/ui/MessageOptions;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$2;->val$comp:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1385
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->setSipStatus(Z)V

    .line 1386
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$2;->val$comp:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z

    if-nez v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$2;->val$comp:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardClose:Z

    .line 1388
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$2;->val$comp:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    .line 1390
    :cond_0
    return-void
.end method
