.class Lcom/android/mms/ui/RecipientsEditor$2;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RecipientsEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientsEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor$2;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 123
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsEditor$2;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    #getter for: Lcom/android/mms/ui/RecipientsEditor;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/RecipientsEditor;->access$000(Lcom/android/mms/ui/RecipientsEditor;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsEditor$2;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, recipientsText:Ljava/lang/String;
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsEditor$2;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    #setter for: Lcom/android/mms/ui/RecipientsEditor;->isInvalidCharSelection:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->access$102(Lcom/android/mms/ui/RecipientsEditor;Z)Z

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsEditor$2;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    #getter for: Lcom/android/mms/ui/RecipientsEditor;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/RecipientsEditor;->access$000(Lcom/android/mms/ui/RecipientsEditor;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditorHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 131
    .end local v0           #recipientsText:Ljava/lang/String;
    :cond_2
    return-void
.end method
