.class Lcom/android/mms/ui/FragmentTabSmsMms$5;
.super Ljava/lang/Object;
.source "FragmentTabSmsMms.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FragmentTabSmsMms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FragmentTabSmsMms;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FragmentTabSmsMms;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/mms/ui/FragmentTabSmsMms$5;->this$0:Lcom/android/mms/ui/FragmentTabSmsMms;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "sharedPrefs"
    .parameter "key"

    .prologue
    .line 594
    const-string v1, "Mms/MessagingPreferenceTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSharedPreferenceChanged key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v1, "pref_key_mms_delivery_reports"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    const-string v1, "pref_key_mms_delivery_reports"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 600
    .local v0, dr:Z
    if-eqz v0, :cond_1

    .line 601
    const-string v1, "GATE"

    const-string v2, "<GATE-M>DELIVERY_REPORT_OFF</GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v0           #dr:Z
    :cond_0
    :goto_0
    return-void

    .line 603
    .restart local v0       #dr:Z
    :cond_1
    const-string v1, "GATE"

    const-string v2, "<GATE-M>DELIVERY_REPORT_ON</GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 607
    .end local v0           #dr:Z
    :cond_2
    const-string v1, "pref_key_mms_creation_mode"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms$5;->this$0:Lcom/android/mms/ui/FragmentTabSmsMms;

    #getter for: Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->access$000(Lcom/android/mms/ui/FragmentTabSmsMms;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "pref_key_mms_creation_mode"

    const-string v3, "free"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/MmsConfig;->setMaxMessageSize(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
