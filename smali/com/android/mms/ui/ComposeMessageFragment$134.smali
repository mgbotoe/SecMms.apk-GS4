.class Lcom/android/mms/ui/ComposeMessageFragment$134;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showPriorityLevel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 14544
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$134;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 14546
    if-nez p2, :cond_0

    .line 14547
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$134;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mPriorityLevel:I
    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11202(Lcom/android/mms/ui/ComposeMessageFragment;I)I

    .line 14548
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$134;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$134;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->isEditingMode()Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setEditingMode(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11300(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    .line 14554
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$134;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$134;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mPriorityLevel:I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11200(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setPriority(I)V

    .line 14555
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$134;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setPriorityIcon()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11400(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 14556
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 14557
    return-void

    .line 14550
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$134;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x2

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mPriorityLevel:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11202(Lcom/android/mms/ui/ComposeMessageFragment;I)I

    .line 14551
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$134;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setEditingMode(Z)V
    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11300(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    goto :goto_0
.end method
