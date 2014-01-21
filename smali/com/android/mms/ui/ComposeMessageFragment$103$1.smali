.class Lcom/android/mms/ui/ComposeMessageFragment$103$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$103;->onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$103;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$103;)V
    .locals 0
    .parameter

    .prologue
    .line 9815
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$103$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$103;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 9818
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$103$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$103;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$103;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->checkPendingNotification()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7000(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 9819
    return-void
.end method
