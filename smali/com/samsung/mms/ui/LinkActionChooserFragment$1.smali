.class Lcom/samsung/mms/ui/LinkActionChooserFragment$1;
.super Ljava/lang/Object;
.source "LinkActionChooserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/LinkActionChooserFragment;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/LinkActionChooserFragment;

.field final synthetic val$action:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

.field final synthetic val$m_Text:Ljava/lang/String;

.field final synthetic val$m_Url:Ljava/lang/String;

.field final synthetic val$urlActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/LinkActionChooserFragment;Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;->this$0:Lcom/samsung/mms/ui/LinkActionChooserFragment;

    iput-object p2, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;->val$action:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    iput-object p3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;->val$urlActivity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;->val$m_Url:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;->val$m_Text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;->this$0:Lcom/samsung/mms/ui/LinkActionChooserFragment;

    #getter for: Lcom/samsung/mms/ui/LinkActionChooserFragment;->urlcheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment;->access$000(Lcom/samsung/mms/ui/LinkActionChooserFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;->val$action:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    iget-object v2, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;->val$urlActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;->val$m_Url:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;->val$m_Text:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;->execute(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 170
    return-void

    .line 158
    :cond_1
    const/4 v0, 0x0

    .line 159
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableTabSetting()Z

    move-result v1

    if-nez v1, :cond_2

    .line 160
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;->val$urlActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/MessagingPreferenceTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_1
    if-eqz v0, :cond_0

    .line 165
    const-string v1, "URLinkCall"

    const-string v2, "URL_LINK_SETTING"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;->val$urlActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 162
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;->val$urlActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1
.end method
