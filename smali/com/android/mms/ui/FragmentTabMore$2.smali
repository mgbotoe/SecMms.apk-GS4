.class Lcom/android/mms/ui/FragmentTabMore$2;
.super Ljava/lang/Object;
.source "FragmentTabMore.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FragmentTabMore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FragmentTabMore;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FragmentTabMore;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/mms/ui/FragmentTabMore$2;->this$0:Lcom/android/mms/ui/FragmentTabMore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPrefs"
    .parameter "key"

    .prologue
    .line 263
    const-string v0, "Mms/MessagingPreferenceTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v0, "pref_key_cb_settings_activation"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCDMACMASEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore$2;->this$0:Lcom/android/mms/ui/FragmentTabMore;

    #getter for: Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/FragmentTabMore;->access$000(Lcom/android/mms/ui/FragmentTabMore;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 273
    :cond_2
    const-string v0, "pref_key_service_loading_action"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore$2;->this$0:Lcom/android/mms/ui/FragmentTabMore;

    #calls: Lcom/android/mms/ui/FragmentTabMore;->setServiceLoadingSummary(Landroid/content/SharedPreferences;)V
    invoke-static {v0, p1}, Lcom/android/mms/ui/FragmentTabMore;->access$100(Lcom/android/mms/ui/FragmentTabMore;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 275
    :cond_3
    const-string v0, "pref_key_emergency_alert_reminder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 276
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore$2;->this$0:Lcom/android/mms/ui/FragmentTabMore;

    #calls: Lcom/android/mms/ui/FragmentTabMore;->setCmasReminderSummary(Landroid/content/SharedPreferences;)V
    invoke-static {v0, p1}, Lcom/android/mms/ui/FragmentTabMore;->access$200(Lcom/android/mms/ui/FragmentTabMore;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 279
    :cond_4
    const-string v0, "pref_key_msg_reminder_alert"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageReminderAlert()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore$2;->this$0:Lcom/android/mms/ui/FragmentTabMore;

    #calls: Lcom/android/mms/ui/FragmentTabMore;->setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V
    invoke-static {v0, p1}, Lcom/android/mms/ui/FragmentTabMore;->access$300(Lcom/android/mms/ui/FragmentTabMore;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method
