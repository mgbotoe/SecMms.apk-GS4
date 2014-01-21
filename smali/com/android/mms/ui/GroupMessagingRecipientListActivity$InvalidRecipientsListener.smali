.class Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsListener;
.super Ljava/lang/Object;
.source "GroupMessagingRecipientListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/GroupMessagingRecipientListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidRecipientsListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/InvalidRecipientsListener"


# instance fields
.field private mInvalidRecipients:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "invalidRecipients"

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsListener;->mInvalidRecipients:Ljava/lang/String;

    .line 560
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    #getter for: Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->access$500(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->requestFocus()Z

    .line 554
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    #getter for: Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->access$500(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsListener;->mInvalidRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    #getter for: Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->access$500(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsListener;->mInvalidRecipients:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->setSelection(I)V

    .line 556
    return-void
.end method
