.class public Lcom/android/mms/util/DirectCallingManager;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/DirectCallingManager$TTSListener;,
        Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;,
        Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;,
        Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;
    }
.end annotation


# static fields
.field private static final ACCELLEROMETER_OVER_THRESHOLD:F = 60.0f

.field private static final ACCELLEROMETER_UNDER_THRESHOLD:F = 20.0f

.field private static final AIR_MOTION_CHANGE:Ljava/lang/String; = "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

.field private static CALL_CONNECT_TONE:Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field private static final MOVING_THRESHOLD_TIME:I = 0x12c

.field public static final NORMAL:I = 0x0

.field private static final PROXIMITY_CLOSE_DISTANCE:I = 0x40

.field public static final PROXIMITY_DISABLE:I = 0x0

.field public static final PROXIMITY_ENABLE:I = 0x1

.field private static final PROXIMITY_FALSE:F = 5.0f

.field public static final PROXIMITY_FORCE_STOP:I = 0x2

.field private static final PROXIMITY_TRUE:F = 0.0f

.field private static final ROCOGNITION_ERROR_KEY:Ljava/lang/String; = "recognition_error"

.field private static final SPEECH_RECOGNITION_PARTIAL:I = 0x30

.field private static final SPEECH_RECORGNITION_COMPLETE:I = 0x20

.field private static final SPEECH_ROCORGNITION_ERROR:I = 0x50

.field private static final SPEECH_YES:Ljava/lang/String; = "yes"

.field private static final SRC_TAGS:[Ljava/lang/String; = null

.field private static final START_RPOXIMITY_SENSOR:I = 0x60

.field private static final STOP_PROXIMITY_SENSOR:I = 0x70

.field private static final TAG:Ljava/lang/String; = "Mms/DirectCallingManager"

.field private static final TEXT_TO_SPEECH_COMPLETE:I = 0x10

.field public static final TUTORIAL:I = 0x1

.field private static bErrorSpeech:Z = false

.field private static final checkCallConnectTone:Z = false

.field public static mCheckTwiceEvent:Z = false

.field private static mIsStartedProximitySensor:Z = false

.field private static final usingMotionRecognition:Z = true

.field private static final usingTTS:Z

.field private static final usingVoiceRecognizer:Z


# instance fields
.field private IsTTSInitiated:Z

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field mAcceleration:[F

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mAccelerormeterListener:Landroid/hardware/SensorEventListener;

.field private mActiveMode:I

.field private mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

.field private mFinishTutorial:Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;

.field mGravity:[F

.field private mHandler:Landroid/os/Handler;

.field public mIsProximityCloseDistance:Z

.field private mIsSpeechRecorgnizing:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastTime:J

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mPaused:Z

.field private mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mRecognitionListener:Landroid/speech/RecognitionListener;

.field private mRegisteredAccelerometer:Z

.field private mRegisteredMotionRecognition:Z

.field private mRegisteredProximity:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTextToSpeechListener:Lcom/android/mms/util/DirectCallingManager$TTSListener;

.field private mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

.field private mVoiceRecognizer:Landroid/speech/SpeechRecognizer;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    const-string v0, "call_conn_tone"

    sput-object v0, Lcom/android/mms/util/DirectCallingManager;->CALL_CONNECT_TONE:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "%s"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/util/DirectCallingManager;->SRC_TAGS:[Ljava/lang/String;

    .line 88
    sput-boolean v2, Lcom/android/mms/util/DirectCallingManager;->bErrorSpeech:Z

    .line 89
    sput-boolean v2, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 90
    sput-boolean v2, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    return-void
.end method

.method public constructor <init>(ILcom/android/mms/ui/DirectCallActivityInterface;)V
    .locals 2
    .parameter "activeMode"
    .parameter "directCallActivity"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->IsTTSInitiated:Z

    .line 123
    iput-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    .line 124
    iput-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    .line 126
    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mPaused:Z

    .line 128
    new-instance v0, Lcom/android/mms/util/DirectCallingManager$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DirectCallingManager$1;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;

    .line 907
    iput-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 908
    iput-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    .line 909
    iput-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 171
    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->mActiveMode:I

    .line 172
    iput-object p2, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    .line 173
    return-void
.end method

.method private SpeakCallQuestion()V
    .locals 0

    .prologue
    .line 931
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/DirectCallingManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->tryToCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/util/DirectCallingManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/util/DirectCallingManager;)Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;)Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/mms/util/DirectCallingManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->readyForCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/util/DirectCallingManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->isCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/util/DirectCallingManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/android/mms/util/DirectCallingManager;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/mms/util/DirectCallingManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/android/mms/util/DirectCallingManager;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->x:F

    return v0
.end method

.method static synthetic access$1702(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->x:F

    return p1
.end method

.method static synthetic access$1800(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->y:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->y:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->z:F

    return v0
.end method

.method static synthetic access$1902(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->z:F

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->lastX:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->lastX:F

    return p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    sput-boolean p0, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->lastY:F

    return v0
.end method

.method static synthetic access$2102(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->lastY:F

    return p1
.end method

.method static synthetic access$2200(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->lastZ:F

    return v0
.end method

.method static synthetic access$2202(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->lastZ:F

    return p1
.end method

.method static synthetic access$2300(Lcom/android/mms/util/DirectCallingManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mIsSpeechRecorgnizing:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->registerAccelerometer()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->unregisterAccelerometer()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/mms/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/mms/util/DirectCallingManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/mms/util/DirectCallingManager;->IsTTSInitiated:Z

    return p1
.end method

.method static synthetic access$2800()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/mms/util/DirectCallingManager;->bErrorSpeech:Z

    return v0
.end method

.method static synthetic access$2802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    sput-boolean p0, Lcom/android/mms/util/DirectCallingManager;->bErrorSpeech:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/mms/util/DirectCallingManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->updateProximitySensorMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/util/DirectCallingManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->registerMotionRecognition()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/util/DirectCallingManager;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->setTextToSpeech(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/util/DirectCallingManager;)Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;)Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/util/DirectCallingManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mPaused:Z

    return v0
.end method

.method private getWakeLockProximity(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 662
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 670
    .local v0, pm:Landroid/os/PowerManager;
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 672
    :cond_0
    return-void
.end method

.method private isCall()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1063
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1064
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return v1

    .line 1067
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1068
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSensorReadyForDirectCall(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1044
    const/4 v0, 0x1

    return v0
.end method

.method private makeVibrate()V
    .locals 3

    .prologue
    .line 811
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 813
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 814
    return-void
.end method

.method private proximitySensorModeEnabled()Z
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readyForCall(Ljava/lang/String;)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 771
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->tryToCall(Ljava/lang/String;)V

    .line 774
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    .line 775
    return-void
.end method

.method private registerAccelerometer()V
    .locals 4

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredAccelerometer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "registerAccelerometer"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_2

    .line 542
    new-instance v0, Lcom/android/mms/util/DirectCallingManager$4;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DirectCallingManager$4;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    .line 580
    :cond_2
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredAccelerometer:Z

    goto :goto_0
.end method

.method private registerMotionRecognition()V
    .locals 3

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "registerMotionRecognition"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-nez v0, :cond_2

    .line 481
    new-instance v0, Lcom/android/mms/util/DirectCallingManager$3;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DirectCallingManager$3;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 521
    :cond_2
    invoke-static {}, Lcom/android/mms/TimeChecker;->sStart()V

    .line 522
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 523
    const-string v0, "Mms/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListenerEvent,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/TimeChecker;->sEnd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    goto :goto_0
.end method

.method private registerProximitySensor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 596
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredProximity:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "registerProximitySensor"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_2

    .line 601
    new-instance v0, Lcom/android/mms/util/DirectCallingManager$5;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DirectCallingManager$5;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredProximity:Z

    .line 647
    iput-boolean v3, p0, Lcom/android/mms/util/DirectCallingManager;->mIsProximityCloseDistance:Z

    goto :goto_0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 179
    :cond_0
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    .line 181
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->setMotionSensor(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private setIsSpeechRecorgnizing(Z)V
    .locals 3
    .parameter "set"

    .prologue
    .line 986
    const-string v0, "Mms/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsSpeechRecorgnizing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iput-boolean p1, p0, Lcom/android/mms/util/DirectCallingManager;->mIsSpeechRecorgnizing:Z

    .line 988
    return-void
.end method

.method private setMotionSensor(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 265
    const-string v0, "motion_recognition"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 286
    return-void
.end method

.method private setTextToSpeech(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 464
    return-void
.end method

.method private setVoiceRecognizer(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRecognitionListener:Landroid/speech/RecognitionListener;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/android/mms/util/DirectCallingManager$2;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DirectCallingManager$2;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 251
    :cond_0
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mVoiceRecognizer:Landroid/speech/SpeechRecognizer;

    .line 252
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mVoiceRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 253
    return-void
.end method

.method private setVolumeForTTS()V
    .locals 4

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAudioManager:Landroid/media/AudioManager;

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 961
    :cond_1
    return-void
.end method

.method private speakText(Ljava/lang/String;)V
    .locals 7
    .parameter "textForSpeech"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 913
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 915
    .local v0, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "streamType"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const/4 v1, 0x0

    .line 918
    .local v1, nRet:I
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, p1, v6, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v1

    .line 919
    const-string v2, "Mms/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-string v2, "utteranceId"

    const-string v3, "DirectCalling ended"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4, v6, v0}, Landroid/speech/tts/TextToSpeech;->playSilence(JILjava/util/HashMap;)I

    move-result v1

    .line 922
    const-string v2, "Mms/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playSilence     ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    if-gez v1, :cond_0

    .line 924
    sput-boolean v5, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 925
    sput-boolean v5, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 927
    :cond_0
    return-void
.end method

.method private startSpeechRecognize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 964
    const-string v1, "Mms/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSpeechRecognize... recongnition Available : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mVoiceRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v1, :cond_0

    .line 983
    :goto_0
    return-void

    .line 969
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/mms/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    .line 971
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 973
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 974
    .local v0, i:Landroid/content/Intent;
    const-string v1, "calling_package"

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    const-string v1, "android.speech.extra.LANGUAGE"

    const-string v2, "en-US"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 978
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "start Listening... "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mVoiceRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    goto :goto_0

    .line 981
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "stop listtening... "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopSpeechRecognition()V
    .locals 0

    .prologue
    .line 878
    return-void
.end method

.method private stopTTS()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 890
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "stopTTS"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 894
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 895
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 896
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeechListener:Lcom/android/mms/util/DirectCallingManager$TTSListener;

    if-eqz v1, :cond_1

    .line 903
    iput-object v3, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeechListener:Lcom/android/mms/util/DirectCallingManager$TTSListener;

    .line 905
    :cond_1
    return-void

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "TTS is shutdown"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private tryToCall(Ljava/lang/String;)V
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 778
    sput-boolean v4, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 780
    const/4 v0, 0x0

    .line 788
    .local v0, callConnectTone:I
    if-nez v0, :cond_0

    .line 789
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->makeVibrate()V

    .line 791
    :cond_0
    iget v2, p0, Lcom/android/mms/util/DirectCallingManager;->mActiveMode:I

    if-nez v2, :cond_2

    .line 792
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    if-eqz v2, :cond_1

    .line 793
    const-string v2, "Mms/DirectCallingManager"

    const-string v3, "tryToCall - makeCall"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    invoke-interface {v2}, Lcom/android/mms/ui/DirectCallActivityInterface;->hideSipForDirectCall()V

    .line 795
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    invoke-interface {v3}, Lcom/android/mms/ui/DirectCallActivityInterface;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :cond_1
    :goto_0
    sput-boolean v4, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 803
    return-void

    .line 797
    :cond_2
    iget v2, p0, Lcom/android/mms/util/DirectCallingManager;->mActiveMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 798
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/FakeCallActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 799
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 800
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mFinishTutorial:Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;

    invoke-interface {v2}, Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;->onFinishTutorial()V

    goto :goto_0
.end method

.method private unregisterAccelerometer()V
    .locals 2

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredAccelerometer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "unregisterAccelerometer"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredAccelerometer:Z

    goto :goto_0
.end method

.method private unregisterMotionRecognition()V
    .locals 2

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "unregisterMotionRecognition"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    goto :goto_0
.end method

.method private unregisterProximity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 651
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredProximity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "unregisterProximity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 656
    iput-boolean v2, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredProximity:Z

    .line 657
    iput-boolean v2, p0, Lcom/android/mms/util/DirectCallingManager;->mIsProximityCloseDistance:Z

    goto :goto_0
.end method

.method private updateProximitySensorMode(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 839
    const-string v0, "Mms/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProximitySensorMode(), proximitySensorModeEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->proximitySensorModeEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    packed-switch p1, :pswitch_data_0

    .line 870
    :goto_0
    return-void

    .line 848
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->registerProximitySensor()V

    goto :goto_0

    .line 852
    :pswitch_1
    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 853
    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 859
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->unregisterProximity()V

    goto :goto_0

    .line 863
    :pswitch_2
    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 864
    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 865
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->unregisterProximity()V

    goto :goto_0

    .line 841
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private wakeLockProximity()V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 684
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 682
    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "updateProximitySensorMode: lock already held."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private wakeUnlockProximity()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 693
    :goto_0
    return-void

    .line 691
    :cond_0
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "updateProximitySensorMode: lock already released."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected AnalizeRecorgnitionPartialResult(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 827
    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 828
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "Mms/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalizeRecorgnitionPartialResult, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/util/DirectCallingManager;->readyForCall(Ljava/lang/String;)V

    .line 831
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionPartialResult - makeCall"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :goto_0
    return-void

    .line 833
    :cond_0
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionPartialResult - makeCall fail : Say No"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected AnalizeRecorgnitionResult(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 744
    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 745
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "Mms/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalizeRecorgnitionResult, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/util/DirectCallingManager;->readyForCall(Ljava/lang/String;)V

    .line 748
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionResult - makeCall"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :goto_0
    return-void

    .line 750
    :cond_0
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionResult - makeCall fail : Say No"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPickupToCallOut(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 355
    if-eqz p1, :cond_0

    .line 360
    iget v4, p0, Lcom/android/mms/util/DirectCallingManager;->mActiveMode:I

    if-ne v4, v2, :cond_1

    .line 370
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 358
    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "master_motion"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 365
    .local v1, motionState:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 367
    .local v0, directCallState:I
    if-ne v1, v2, :cond_2

    if-ne v0, v2, :cond_2

    .line 369
    .local v2, state:Z
    :goto_1
    const-string v3, "Mms/DirectCallingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPickupToCallOut() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #state:Z
    :cond_2
    move v2, v3

    .line 367
    goto :goto_1
.end method

.method protected onResultErrorCode(I)V
    .locals 6
    .parameter "error"

    .prologue
    const/4 v5, 0x0

    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, msg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 699
    .local v1, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 728
    const-string v2, "Mms/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :goto_0
    const-string v2, "Mms/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResultErrorCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    if-eqz v0, :cond_0

    .line 735
    invoke-direct {p0, v0}, Lcom/android/mms/util/DirectCallingManager;->speakText(Ljava/lang/String;)V

    .line 736
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 738
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/util/DirectCallingManager;->bErrorSpeech:Z

    .line 739
    invoke-direct {p0, v5}, Lcom/android/mms/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    .line 740
    return-void

    .line 701
    :pswitch_0
    const v2, 0x7f0c0218

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 702
    goto :goto_0

    .line 704
    :pswitch_1
    const v2, 0x7f0c0219

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 705
    goto :goto_0

    .line 707
    :pswitch_2
    const v2, 0x7f0c021a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 708
    goto :goto_0

    .line 710
    :pswitch_3
    const v2, 0x7f0c021b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 711
    goto :goto_0

    .line 713
    :pswitch_4
    const v2, 0x7f0c021c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 714
    goto :goto_0

    .line 716
    :pswitch_5
    const v2, 0x7f0c021d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 717
    goto :goto_0

    .line 719
    :pswitch_6
    const v2, 0x7f0c021e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 720
    goto :goto_0

    .line 722
    :pswitch_7
    const v2, 0x7f0c021f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 723
    goto :goto_0

    .line 725
    :pswitch_8
    const v2, 0x7f0c0220

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 726
    goto :goto_0

    .line 699
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public pause(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->getPickupToCallOut(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mPaused:Z

    .line 404
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->stopTTS()V

    .line 405
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->stopSpeechRecognition()V

    .line 408
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->unregisterMotionRecognition()V

    goto :goto_0
.end method

.method public resume(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 416
    invoke-virtual {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->getPickupToCallOut(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    if-nez v2, :cond_2

    .line 417
    :cond_0
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    if-nez v2, :cond_1

    .line 418
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 419
    .local v0, airmotionReceiverfilter:Landroid/content/IntentFilter;
    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    new-instance v2, Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;-><init>(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$1;)V

    iput-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    .line 421
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 460
    .end local v0           #airmotionReceiverfilter:Landroid/content/IntentFilter;
    :cond_1
    :goto_0
    return-void

    .line 426
    :cond_2
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    invoke-interface {v2}, Lcom/android/mms/ui/DirectCallActivityInterface;->isAvailableDirectCall()Z

    move-result v2

    if-nez v2, :cond_3

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->pause(Landroid/content/Context;)V

    goto :goto_0

    .line 431
    :cond_3
    const-string v2, "Mms/DirectCallingManager"

    const-string v3, "resume"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iput-boolean v4, p0, Lcom/android/mms/util/DirectCallingManager;->mPaused:Z

    .line 433
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->setContext(Landroid/content/Context;)V

    .line 435
    sput-boolean v4, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 436
    sput-boolean v4, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 438
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v2, :cond_4

    .line 439
    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 441
    :cond_4
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 442
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    if-nez v2, :cond_1

    .line 443
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 444
    .local v1, unlockReceiverfilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    new-instance v2, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;-><init>(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$1;)V

    iput-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    .line 446
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->setRegistered(Z)V

    .line 447
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 455
    .end local v1           #unlockReceiverfilter:Landroid/content/IntentFilter;
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->registerMotionRecognition()V

    .line 459
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->setTextToSpeech(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setActiveMode(I)V
    .locals 0
    .parameter "activeMode"

    .prologue
    .line 189
    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->mActiveMode:I

    .line 190
    return-void
.end method

.method public setFinishTutorialListener(Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;)V
    .locals 0
    .parameter "finishEvent"

    .prologue
    .line 819
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager;->mFinishTutorial:Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;

    .line 820
    return-void
.end method

.method public setPickupToCallOut(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "set"

    .prologue
    .line 374
    if-nez p1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 381
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_pick_up_to_call_out"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 389
    const-string v0, "Mms/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPickupToCallOut() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
