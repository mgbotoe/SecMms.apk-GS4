.class Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;
.super Ljava/lang/Object;
.source "GroupMessagingRecipientListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/GroupMessagingRecipientListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidRecipientsKeyListener"
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
    .line 568
    iput-object p1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;->mInvalidRecipients:Ljava/lang/String;

    .line 570
    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 574
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 575
    packed-switch p2, :pswitch_data_0

    .line 586
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 577
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 578
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    #getter for: Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->access$500(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->requestFocus()Z

    .line 579
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    #getter for: Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->access$500(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;->mInvalidRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    #getter for: Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->access$500(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;->mInvalidRecipients:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->setSelection(I)V

    .line 581
    const/4 v0, 0x1

    goto :goto_0

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
