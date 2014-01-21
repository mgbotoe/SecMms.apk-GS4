.class public Lcom/android/mms/cmas/CMASVenderLGU;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderLGU.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    .line 9
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCMASEnableMenuTestCategory:Z

    .line 10
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCMASSyncToServer4ExtremePriority:Z

    .line 11
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasPresidentialThreaded:Z

    .line 12
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasPresidentialOnTop:Z

    .line 13
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasAllInOneThreaded:Z

    .line 14
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasAlertTopUnlessRead:Z

    .line 15
    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasWhichMsgOnTop:I

    .line 16
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasFontSizePref:Z

    .line 17
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasPresidentialOPTOUTPref:Z

    .line 18
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasNotificationPref:Z

    .line 19
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasVibrationPreviewPref:Z

    .line 20
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasNotiDateDescription:Z

    .line 21
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasTestMessageWithHiddenMenu:Z

    .line 22
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasAlertSoundMenu:Z

    .line 23
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasMessageTMOMenuTextFeature:Z

    .line 24
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLGU;->mCMASDisplayNextMsg:Z

    .line 25
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasMessageDuplicateMessageCheckFeature:Z

    .line 26
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLGU;->mEnableCmas:Z

    .line 27
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasTestMode:Z

    .line 28
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCDMACMASEnable:Z

    .line 29
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLGU;->mGSMCMASEnable:Z

    .line 30
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLGU;->mCMASDisplayLatest:Z

    .line 31
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCMASDialogOKisDismiss:Z

    .line 32
    const/16 v0, 0xa

    sput v0, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasProvider:I

    .line 33
    return-void
.end method
