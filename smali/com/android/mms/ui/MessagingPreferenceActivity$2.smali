.class Lcom/android/mms/ui/MessagingPreferenceActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 466
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v3, "pref_key_manage_SD_messages"

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$202(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 469
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v3, "pref_key_manage_SD_messages"

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$202(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 473
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
