.class public Lcom/android/mms/cmas/CMASVenderSKT;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderSKT.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    .line 9
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSKT;->mCMASEnableMenuTestCategory:Z

    .line 10
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSKT;->mCMASSyncToServer4ExtremePriority:Z

    .line 11
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSKT;->mCmasPresidentialThreaded:Z

    .line 12
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSKT;->mCmasPresidentialOnTop:Z

    .line 13
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSKT;->mCmasAllInOneThreaded:Z

    .line 14
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSKT;->mCmasAlertTopUnlessRead:Z

    .line 15
    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderSKT;->mCmasWhichMsgOnTop:I

    .line 16
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSKT;->mCmasFontSizePref:Z

    .line 17
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSKT;->mCmasPresidentialOPTOUTPref:Z

    .line 18
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSKT;->mCmasNotificationPref:Z

    .line 19
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSKT;->mCmasVibrationPreviewPref:Z

    .line 20
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSKT;->mCmasNotiDateDescription:Z

    .line 21
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSKT;->mCmasTestMessageWithHiddenMenu:Z

    .line 22
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSKT;->mCmasAlertSoundMenu:Z

    .line 23
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSKT;->mCmasMessageTMOMenuTextFeature:Z

    .line 24
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSKT;->mCMASDisplayNextMsg:Z

    .line 25
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSKT;->mCmasMessageDuplicateMessageCheckFeature:Z

    .line 26
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSKT;->mEnableCmas:Z

    .line 27
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSKT;->mCmasTestMode:Z

    .line 28
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSKT;->mCDMACMASEnable:Z

    .line 29
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSKT;->mGSMCMASEnable:Z

    .line 30
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSKT;->mCMASDisplayLatest:Z

    .line 31
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSKT;->mCMASDialogOKisDismiss:Z

    .line 32
    const/16 v0, 0x8

    sput v0, Lcom/android/mms/cmas/CMASVenderSKT;->mCmasProvider:I

    .line 33
    return-void
.end method
