.class final Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ToButtonMenuClickListener"
.end annotation


# instance fields
.field private mExistInContact:Z

.field private mId:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;IZ)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "existInContact"

    .prologue
    .line 12053
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mExistInContact:Z

    .line 12054
    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mId:I

    .line 12055
    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mExistInContact:Z

    .line 12056
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    .line 12059
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ToButton;

    .line 12060
    .local v1, toButton:Lcom/android/mms/ui/ToButton;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 12094
    :cond_0
    :goto_0
    return-void

    .line 12063
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 12064
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V

    .line 12067
    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 12093
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsOpenToButtonMenu:Z
    invoke-static {v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9702(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto :goto_0

    .line 12069
    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDeleteHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ToButton;->delete(Landroid/os/Handler;)V

    goto :goto_1

    .line 12072
    :pswitch_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZZ)Z
    invoke-static {v3, v4, v6, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3200(Lcom/android/mms/ui/ComposeMessageFragment;ZZZ)Z

    .line 12073
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 12074
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->moveCursorToEnd()V

    .line 12075
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mId:I

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->RemoveToButton(I)V
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9600(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    goto :goto_1

    .line 12078
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mExistInContact:Z

    if-nez v3, :cond_3

    .line 12079
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    .line 12080
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 12081
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    const/16 v5, 0x1d

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 12083
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 12084
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 12085
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.jcontacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12086
    const-string v3, "com.android.jcontacts"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 12088
    :cond_4
    const/high16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 12089
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 12067
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
