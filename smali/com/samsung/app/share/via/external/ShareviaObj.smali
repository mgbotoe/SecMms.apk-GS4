.class public Lcom/samsung/app/share/via/external/ShareviaObj;
.super Ljava/lang/Object;
.source "ShareviaObj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/share/via/external/ShareviaObj$TranscodeMode;,
        Lcom/samsung/app/share/via/external/ShareviaObj$codecType;,
        Lcom/samsung/app/share/via/external/ShareviaObj$videoResType;
    }
.end annotation


# instance fields
.field OutFileResolution:I

.field assetmngr:Landroid/content/res/AssetManager;

.field audioCodecType:I

.field audioLength:I

.field audioOffset:I

.field endTime:I

.field iconFileName:Ljava/lang/String;

.field inputFileName:Ljava/lang/String;

.field maxOutFileDuration:I

.field maxOutFileSize:I

.field outputFileName:Ljava/lang/String;

.field outputHeight:I

.field outputWidth:I

.field startTime:I

.field transcodeMode:I

.field version:I

.field videoCodecType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->version:I

    .line 8
    iput v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->version:I

    .line 9
    return-void
.end method


# virtual methods
.method public getShareViaAudioLength()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->audioLength:I

    return v0
.end method

.method public getShareViaAudioOffset()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->audioOffset:I

    return v0
.end method

.method public getShareViaHeight()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->outputHeight:I

    return v0
.end method

.method public getShareViaTranscodeMode()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->transcodeMode:I

    return v0
.end method

.method public getShareViaVersion()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->version:I

    return v0
.end method

.method public getShareViaWidth()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->outputWidth:I

    return v0
.end method

.method public setShareViaAssetmngr(Landroid/content/res/AssetManager;)V
    .locals 0
    .parameter "assetmngr"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->assetmngr:Landroid/content/res/AssetManager;

    .line 73
    return-void
.end method

.method public setShareViaAudioCodec(I)V
    .locals 0
    .parameter "audiocodec"

    .prologue
    .line 111
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->audioCodecType:I

    .line 112
    return-void
.end method

.method public setShareViaAudioLength(I)V
    .locals 0
    .parameter "audioLength"

    .prologue
    .line 84
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->audioLength:I

    .line 85
    return-void
.end method

.method public setShareViaAudioOffset(I)V
    .locals 0
    .parameter "audioOffset"

    .prologue
    .line 78
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->audioOffset:I

    .line 79
    return-void
.end method

.method public setShareViaEndTime(I)V
    .locals 0
    .parameter "endtime"

    .prologue
    .line 99
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->endTime:I

    .line 100
    return-void
.end method

.method public setShareViaHeight(I)V
    .locals 0
    .parameter "mHeight"

    .prologue
    .line 69
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->outputHeight:I

    .line 70
    return-void
.end method

.method public setShareViaIconFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "outfilename"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->iconFileName:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setShareViaInputFilename(Ljava/lang/String;)V
    .locals 0
    .parameter "inputfilename"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->inputFileName:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setShareViaOutputFileResolution(I)V
    .locals 0
    .parameter "OutfileResolution"

    .prologue
    .line 120
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->OutFileResolution:I

    .line 121
    return-void
.end method

.method public setShareViaOutputFilename(Ljava/lang/String;)V
    .locals 0
    .parameter "outfilename"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->outputFileName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setShareViaStartTime(I)V
    .locals 0
    .parameter "starttime"

    .prologue
    .line 96
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->startTime:I

    .line 97
    return-void
.end method

.method public setShareViaTranscodeMode(I)V
    .locals 0
    .parameter "transcodeMode"

    .prologue
    .line 93
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->transcodeMode:I

    .line 94
    return-void
.end method

.method public setShareViaVideoCodec(I)V
    .locals 0
    .parameter "vtVideoCodec"

    .prologue
    .line 108
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->videoCodecType:I

    .line 109
    return-void
.end method

.method public setShareViaWidth(I)V
    .locals 0
    .parameter "mWidth"

    .prologue
    .line 63
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->outputWidth:I

    .line 64
    return-void
.end method

.method public setShareViamaxDuration(I)V
    .locals 0
    .parameter "maxduration"

    .prologue
    .line 102
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->maxOutFileDuration:I

    .line 103
    return-void
.end method

.method public setShareViamaxSize(I)V
    .locals 0
    .parameter "maxsize"

    .prologue
    .line 105
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->maxOutFileSize:I

    .line 106
    return-void
.end method
