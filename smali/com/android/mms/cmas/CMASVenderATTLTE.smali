.class public Lcom/android/mms/cmas/CMASVenderATTLTE;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderATTLTE.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    .line 8
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCMASEnableMenuTestCategory:Z

    .line 9
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCMASSyncToServer4ExtremePriority:Z

    .line 10
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasPresidentialThreaded:Z

    .line 11
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasPresidentialOnTop:Z

    .line 12
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasAllInOneThreaded:Z

    .line 13
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasAlertTopUnlessRead:Z

    .line 14
    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasWhichMsgOnTop:I

    .line 15
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasFontSizePref:Z

    .line 16
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasPresidentialOPTOUTPref:Z

    .line 17
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasNotificationPref:Z

    .line 18
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasVibrationPreviewPref:Z

    .line 19
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasNotiDateDescription:Z

    .line 20
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasTestMessageWithHiddenMenu:Z

    .line 21
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasAlertSoundMenu:Z

    .line 22
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasMessageTMOMenuTextFeature:Z

    .line 23
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCMASDisplayNextMsg:Z

    .line 24
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasMessageDuplicateMessageCheckFeature:Z

    .line 25
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATTLTE;->mEnableCmas:Z

    .line 26
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasTestMode:Z

    .line 27
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCDMACMASEnable:Z

    .line 28
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATTLTE;->mGSMCMASEnable:Z

    .line 29
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCMASDisplayLatest:Z

    .line 30
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCMASDialogOKisDismiss:Z

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasProvider:I

    .line 32
    return-void
.end method
