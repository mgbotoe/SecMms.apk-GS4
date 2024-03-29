.class public Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;
.super Ljava/lang/Object;
.source "SettingsReservationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SettingsReservationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "settingStateReserver"
.end annotation


# instance fields
.field private isBackUp:Z

.field private isDataBntFocused:Z

.field private isOriginalCheckState:Z

.field private isTimeBntFocused:Z

.field private mSendTimeBakupReserver:J

.field private mState:Landroid/os/Bundle;

.field private settingSwitch:Z

.field final synthetic this$0:Lcom/android/mms/ui/SettingsReservationActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SettingsReservationActivity;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter "State"

    .prologue
    const/4 v1, 0x0

    .line 69
    iput-object p1, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->settingSwitch:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isDataBntFocused:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isTimeBntFocused:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isOriginalCheckState:Z

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mSendTimeBakupReserver:J

    .line 76
    return-void
.end method


# virtual methods
.method initSettingStateReserver()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isDataBntFocused:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isTimeBntFocused:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isBackUp:Z

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mSendTimeBakupReserver:J

    .line 84
    return-void
.end method

.method reStoreSettingState()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    #getter for: Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/SettingsReservationActivity;->access$000(Lcom/android/mms/ui/SettingsReservationActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v2, "buttonDateState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    #getter for: Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/SettingsReservationActivity;->access$100(Lcom/android/mms/ui/SettingsReservationActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v2, "buttonTimeState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v2, "SendTimeBakup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    #setter for: Lcom/android/mms/ui/SettingsReservationActivity;->mSendTimeBakup:J
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->access$202(Lcom/android/mms/ui/SettingsReservationActivity;J)J

    .line 104
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->initSettingStateReserver()V

    .line 105
    return-void
.end method

.method reserveSettingState()V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    #getter for: Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/SettingsReservationActivity;->access$000(Lcom/android/mms/ui/SettingsReservationActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isDataBntFocused:Z

    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    #getter for: Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/SettingsReservationActivity;->access$100(Lcom/android/mms/ui/SettingsReservationActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isTimeBntFocused:Z

    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    iget-boolean v0, v0, Lcom/android/mms/ui/SettingsReservationActivity;->bOriginalCheckState:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isOriginalCheckState:Z

    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    #getter for: Lcom/android/mms/ui/SettingsReservationActivity;->mSendTimeBakup:J
    invoke-static {v0}, Lcom/android/mms/ui/SettingsReservationActivity;->access$200(Lcom/android/mms/ui/SettingsReservationActivity;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mSendTimeBakupReserver:J

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isBackUp:Z

    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v1, "CheckBoxState"

    iget-boolean v2, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->settingSwitch:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v1, "buttonDateState"

    iget-boolean v2, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isDataBntFocused:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v1, "buttonTimeState"

    iget-boolean v2, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isTimeBntFocused:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v1, "OriginalCheckState"

    iget-boolean v2, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isOriginalCheckState:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v1, "SendTimeBakup"

    iget-wide v2, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mSendTimeBakupReserver:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v1, "isBackUpUIState"

    iget-boolean v2, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isBackUp:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    return-void
.end method
