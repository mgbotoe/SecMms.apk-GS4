.class Lcom/android/mms/ui/MessageListItem$17;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 2900
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$17;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2902
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$17;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2904
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$17;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$3400(Lcom/android/mms/ui/MessageListItem;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->performClick()Z

    .line 2905
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$17;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$2400(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$17;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;)V

    .line 2921
    :goto_0
    return-void

    .line 2907
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$17;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$6500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/data/Contact;->getLocalProfileUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 2909
    .local v1, profileUri:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 2910
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2911
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2912
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.jcontacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2913
    const-string v2, "com.android.jcontacts"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2915
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$17;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$6600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 2917
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$17;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$6700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->createLocalProfileIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method
