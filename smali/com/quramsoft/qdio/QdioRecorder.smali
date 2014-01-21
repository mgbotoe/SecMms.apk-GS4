.class public Lcom/quramsoft/qdio/QdioRecorder;
.super Ljava/lang/Object;
.source "QdioRecorder.java"


# static fields
.field private static QURAM_RECORDER_AUDIO_ENCODING:I = 0x0

.field private static QURAM_RECORDER_BPP:I = 0x0

.field private static final QURAM_RECORDER_BUFFERSIZE:I = 0x4000

.field private static QURAM_RECORDER_CHANNELS:I

.field private static QURAM_RECORDER_SAMPLERATE:I

.field private static qRecorder:Lcom/quramsoft/qdio/QdioRecorder;


# instance fields
.field private bufferSize:I

.field private mAudioSource:I

.field private recorder:Landroid/media/AudioRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 227
    new-instance v0, Lcom/quramsoft/qdio/QdioRecorder;

    invoke-direct {v0}, Lcom/quramsoft/qdio/QdioRecorder;-><init>()V

    sput-object v0, Lcom/quramsoft/qdio/QdioRecorder;->qRecorder:Lcom/quramsoft/qdio/QdioRecorder;

    .line 232
    sput v1, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_BPP:I

    .line 233
    const v0, 0xac44

    sput v0, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    .line 234
    sput v1, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    .line 235
    const/4 v0, 0x2

    sput v0, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    .line 230
    const/4 v0, 0x1

    iput v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    .line 231
    const/16 v0, 0x4000

    iput v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    .line 12
    return-void
.end method

.method public static getInstance()Lcom/quramsoft/qdio/QdioRecorder;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/quramsoft/qdio/QdioRecorder;->qRecorder:Lcom/quramsoft/qdio/QdioRecorder;

    return-object v0
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    return v0
.end method

.method public init(I)Z
    .locals 8
    .parameter "audioSource"

    .prologue
    const/16 v3, 0x4000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 16
    const v0, 0xac44

    sput v0, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    .line 18
    sget v0, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    .line 19
    sget v1, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    .line 20
    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    .line 18
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    .line 22
    iget v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    if-ge v0, v3, :cond_0

    .line 23
    iput v3, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    .line 25
    :cond_0
    iput p1, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    .line 26
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorder = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 28
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorder.getState() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    .line 54
    :goto_0
    return v0

    .line 34
    :cond_2
    const-string v0, "QURAM"

    const-string v1, "make new Recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAudioSource : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QURAM_RECORDER_SAMPLERATE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QURAM_RECORDER_CHANNELS : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QURAM_RECORDER_AUDIO_ENCODING : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bufferSize : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    .line 42
    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    .line 43
    sget v3, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    .line 44
    sget v4, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    .line 45
    iget v5, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 41
    iput-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    .line 46
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_3

    .line 47
    const-string v0, "QURAM"

    const-string v1, "===> recorder null!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 48
    goto/16 :goto_0

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v7

    .line 52
    goto/16 :goto_0

    :cond_4
    move v0, v6

    .line 54
    goto/16 :goto_0
.end method

.method public init(II)Z
    .locals 8
    .parameter "audioSource"
    .parameter "rate"

    .prologue
    const/16 v3, 0x4000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 59
    if-lez p2, :cond_0

    .line 60
    sput p2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    .line 62
    :cond_0
    sget v0, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    .line 63
    sget v1, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    .line 64
    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    .line 62
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    .line 66
    iget v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    if-ge v0, v3, :cond_1

    .line 67
    iput v3, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    .line 69
    :cond_1
    iput p1, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    .line 70
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorder = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    .line 72
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorder.getState() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    .line 98
    :goto_0
    return v0

    .line 78
    :cond_3
    const-string v0, "QURAM"

    const-string v1, "make new Recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAudioSource : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QURAM_RECORDER_SAMPLERATE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QURAM_RECORDER_CHANNELS : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QURAM_RECORDER_AUDIO_ENCODING : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bufferSize : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    .line 86
    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    .line 87
    sget v3, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    .line 88
    sget v4, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    .line 89
    iget v5, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 85
    iput-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    .line 90
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_4

    .line 91
    const-string v0, "QURAM"

    const-string v1, "===> recorder null!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 92
    goto/16 :goto_0

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v7

    .line 96
    goto/16 :goto_0

    :cond_5
    move v0, v6

    .line 98
    goto/16 :goto_0
.end method

.method public init(III)Z
    .locals 8
    .parameter "audioSource"
    .parameter "rate"
    .parameter "flag"

    .prologue
    const/16 v3, 0x4000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 103
    if-nez p3, :cond_3

    .line 104
    const/16 v0, 0x10

    sput v0, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    .line 108
    :goto_0
    if-lez p2, :cond_0

    .line 109
    sput p2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    .line 111
    :cond_0
    sget v0, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    .line 112
    sget v1, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    .line 113
    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    .line 111
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    .line 115
    iget v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    if-ge v0, v3, :cond_1

    .line 116
    iput v3, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    .line 118
    :cond_1
    iput p1, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    .line 119
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorder = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    .line 121
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorder.getState() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v6

    .line 148
    :goto_1
    return v0

    .line 106
    :cond_3
    const/16 v0, 0xc

    sput v0, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    goto :goto_0

    .line 127
    :cond_4
    const-string v0, "QURAM"

    const-string v1, "make new Recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioSource : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RECORDER_SAMPLERATE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RECORDER_CHANNELS : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RECORDER_AUDIO_ENCODING : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bufferSize : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    .line 135
    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    .line 136
    sget v3, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    .line 137
    sget v4, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    .line 138
    iget v5, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 134
    iput-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    .line 140
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_5

    .line 141
    const-string v0, "QURAM"

    const-string v1, "===> recorder null!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 142
    goto/16 :goto_1

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v7

    .line 146
    goto/16 :goto_1

    :cond_6
    move v0, v6

    .line 148
    goto/16 :goto_1
.end method

.method public read([B)I
    .locals 5
    .parameter "buffer"

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, ret:I
    iget-object v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-enter v2

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-nez v1, :cond_0

    .line 198
    monitor-exit v2

    const/4 v1, -0x3

    .line 203
    :goto_0
    return v1

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    const/4 v3, 0x0

    iget v4, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    invoke-virtual {v1, p1, v3, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 194
    monitor-exit v2

    move v1, v0

    .line 203
    goto :goto_0

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()Z
    .locals 3

    .prologue
    .line 158
    const-string v0, "QURAM"

    const-string v1, "qRecorder start start"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-enter v1

    .line 163
    :try_start_0
    const-string v0, "QURAM"

    const-string v2, "stop recorder in start"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    .line 161
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_0
    iget v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    sget v1, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/qdio/QdioRecorder;->init(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio Recorder init failed samplerate = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    .line 161
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-enter v1

    .line 181
    :try_start_2
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 183
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 184
    const-string v0, "QURAM"

    const-string v2, "record start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    const-string v0, "QURAM"

    const-string v1, "qrecorder start end"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x1

    goto :goto_0

    .line 179
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 208
    const-string v0, "QURAM"

    const-string v1, "qRecorder stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    .line 213
    monitor-exit v1

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 216
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    .line 209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    const-string v0, "QURAM"

    const-string v1, "qRecorder stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
