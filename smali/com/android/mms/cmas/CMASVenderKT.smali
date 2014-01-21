.class public Lcom/android/mms/cmas/CMASVenderKT;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderKT.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    .line 9
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCMASEnableMenuTestCategory:Z

    .line 10
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCMASSyncToServer4ExtremePriority:Z

    .line 11
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasPresidentialThreaded:Z

    .line 12
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasPresidentialOnTop:Z

    .line 13
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasAllInOneThreaded:Z

    .line 14
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasAlertTopUnlessRead:Z

    .line 15
    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderKT;->mCmasWhichMsgOnTop:I

    .line 16
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasFontSizePref:Z

    .line 17
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasPresidentialOPTOUTPref:Z

    .line 18
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasNotificationPref:Z

    .line 19
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasVibrationPreviewPref:Z

    .line 20
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasNotiDateDescription:Z

    .line 21
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderKT;->mCmasTestMessageWithHiddenMenu:Z

    .line 22
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasAlertSoundMenu:Z

    .line 23
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasMessageTMOMenuTextFeature:Z

    .line 24
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderKT;->mCMASDisplayNextMsg:Z

    .line 25
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderKT;->mCmasMessageDuplicateMessageCheckFeature:Z

    .line 26
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderKT;->mEnableCmas:Z

    .line 27
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasTestMode:Z

    .line 28
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCDMACMASEnable:Z

    .line 29
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderKT;->mGSMCMASEnable:Z

    .line 30
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderKT;->mCMASDisplayLatest:Z

    .line 31
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCMASDialogOKisDismiss:Z

    .line 32
    const/16 v0, 0x9

    sput v0, Lcom/android/mms/cmas/CMASVenderKT;->mCmasProvider:I

    .line 33
    return-void
.end method
