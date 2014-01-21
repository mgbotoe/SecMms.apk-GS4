.class Lcom/android/mms/util/HandleComposerAttachment$15;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->checkEmailBeforeMakeToButton(Lcom/android/mms/data/ContactList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$contacts:Lcom/android/mms/data/ContactList;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Lcom/android/mms/data/ContactList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$15;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$15;->val$contacts:Lcom/android/mms/data/ContactList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$15;->val$contacts:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$15;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$15;->val$contacts:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 1002
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$15;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$15;->val$contacts:Lcom/android/mms/data/ContactList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    .line 1004
    :cond_0
    return-void
.end method
