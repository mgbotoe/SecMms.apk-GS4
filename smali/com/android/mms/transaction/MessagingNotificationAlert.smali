.class public Lcom/android/mms/transaction/MessagingNotificationAlert;
.super Landroid/app/Service;
.source "MessagingNotificationAlert.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# static fields
.field private static final ALERTONCALL_MODE:Ljava/lang/String; = "alertoncall_mode"

.field private static final ALERTONCALL_OFF:I = 0x0

.field private static final ALERTONCALL_SOUND:I = 0x1

.field private static final ALERTONCALL_VIBRATE:I = 0x3

.field private static final ALERTONCALL_VOICE:I = 0x2

.field private static final DB_KEY_DRIVING_MODE_ON:Ljava/lang/String; = "driving_mode_on"

.field private static final DRIVINGMODE_ON:I = 0x1

.field private static final NOTIFICATION_VIBRATE:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "Mms/MessagingNotificationAlert"

.field private static final TONE_RELATIVE_VOLUME_HIPRI:I = 0x50

.field private static final TONE_TIMEOUT_BUFFER:I = 0x14

.field private static final VLINGO_SVOICE_PACKAGE_NAME:Ljava/lang/String; = "com.vlingo.midas"

.field private static final VLINGO_TALKBACK_PACKAGE_NAME:Ljava/lang/String; = "com.vlingo.client.samsung"

.field public static mMediaPlayer:Landroid/media/MediaPlayer;


# instance fields
.field private final ALERTONCALL_VOLUME_SIZE:F

.field private IsCMASType:Z

.field private initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mServiceStartId:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private senderRingtonePath:Ljava/lang/String;

.field private speechInfoText:Ljava/lang/String;

.field private toneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    .line 62
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->ALERTONCALL_VOLUME_SIZE:F

    .line 65
    iput-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->IsCMASType:Z

    .line 77
    iput-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->senderRingtonePath:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/android/mms/transaction/MessagingNotificationAlert$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotificationAlert$1;-><init>(Lcom/android/mms/transaction/MessagingNotificationAlert;)V

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 382
    new-instance v0, Lcom/android/mms/transaction/MessagingNotificationAlert$2;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotificationAlert$2;-><init>(Lcom/android/mms/transaction/MessagingNotificationAlert;)V

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/MessagingNotificationAlert;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->setVolume(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/MessagingNotificationAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->speakNewMessageInfo()V

    return-void
.end method

.method private checkVlingoAccepted(Z)Z
    .locals 10
    .parameter "sVoice"

    .prologue
    .line 504
    const/4 v8, 0x0

    .line 505
    .local v8, isAccepted:Z
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 506
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 507
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 509
    .local v6, c:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    .line 510
    const-string v2, "content://com.vlingo.client.vlingoconfigprovider/tos_accepted"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 516
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 517
    if-nez v6, :cond_2

    .line 518
    const-string v2, "Mms/MessagingNotificationAlert"

    const-string v3, "Vlingo can\'t send content provider yet"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    const/4 v2, 0x0

    .line 528
    if-eqz v6, :cond_0

    .line 529
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 530
    const/4 v6, 0x0

    .line 533
    :cond_0
    :goto_1
    return v2

    .line 512
    :cond_1
    const-string v2, "content://com.vlingo.client.vlingoconfigprovider/readback_enabled"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 521
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 522
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 523
    .local v9, value:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 528
    .end local v9           #value:Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 529
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 530
    const/4 v6, 0x0

    :cond_4
    :goto_2
    move v2, v8

    .line 533
    goto :goto_1

    .line 525
    :catch_0
    move-exception v7

    .line 526
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "Mms/MessagingNotificationAlert"

    const-string v3, "checkVlingoAccepted exception error"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    if-eqz v6, :cond_4

    .line 529
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 530
    const/4 v6, 0x0

    goto :goto_2

    .line 528
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_5

    .line 529
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 530
    const/4 v6, 0x0

    :cond_5
    throw v2
.end method

.method private makeAlertSoundOnCall()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 231
    const/4 v5, 0x0

    .line 232
    .local v5, ringtoneStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 233
    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->senderRingtonePath:Ljava/lang/String;

    .line 238
    :cond_0
    const-string v10, "audio"

    invoke-virtual {p0, v10}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 240
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 241
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v10

    if-nez v10, :cond_3

    move v1, v8

    .line 242
    .local v1, bNowSilent:Z
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v10

    if-ne v10, v8, :cond_4

    move v2, v8

    .line 244
    .local v2, bNowVibrate:Z
    :goto_1
    if-nez v1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v10, "pref_key_vibrateWhen_checkbox"

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "vibrator"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/SystemVibrator;

    .line 248
    .local v7, vibrator:Landroid/os/SystemVibrator;
    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/os/SystemVibrator;->vibrateNotification(I)V

    .line 252
    .end local v7           #vibrator:Landroid/os/SystemVibrator;
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_5

    .line 287
    .end local v1           #bNowSilent:Z
    .end local v2           #bNowVibrate:Z
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v1, v9

    .line 241
    goto :goto_0

    .restart local v1       #bNowSilent:Z
    :cond_4
    move v2, v9

    .line 242
    goto :goto_1

    .line 258
    .end local v1           #bNowSilent:Z
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 259
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 260
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v8, "pref_key_ringtone"

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 263
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 264
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/mms/ui/MessageUtils;->checkRingtoneIsValid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 267
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 269
    .local v4, messageSoundUri:Landroid/net/Uri;
    :goto_3
    :try_start_0
    sget-object v8, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v8, :cond_8

    .line 270
    sget-object v8, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->release()V

    .line 271
    const/4 v8, 0x0

    sput-object v8, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 274
    :cond_8
    new-instance v8, Landroid/media/MediaPlayer;

    invoke-direct {v8}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v8, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 276
    sget-object v8, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v8, :cond_2

    .line 277
    sget-object v8, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 278
    sget-object v8, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 279
    sget-object v8, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->prepare()V

    .line 280
    sget-object v8, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v8}, Lcom/android/mms/transaction/MessagingNotificationAlert;->setVolume(Landroid/media/MediaPlayer;)V

    .line 281
    sget-object v8, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->start()V

    .line 282
    const-string v8, "Mms/MessagingNotificationAlert"

    const-string v9, "makeAlertSoundOnCall success"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 284
    :catch_0
    move-exception v3

    .line 285
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "Mms/MessagingNotificationAlert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "makeAlertSound() cated Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 267
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #messageSoundUri:Landroid/net/Uri;
    :cond_9
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_3
.end method

.method private makeAlertType()V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVibration4NotiDuringCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeVibrateOnCall()V

    .line 198
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 187
    :cond_1
    const/16 v0, 0x63

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeTone(I)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 189
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeTone(I)V

    goto :goto_0

    .line 195
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeAlertSoundOnCall()V

    goto :goto_0
.end method

.method private makeTone(I)V
    .locals 8
    .parameter "toneType"

    .prologue
    .line 328
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 330
    .local v0, audioManager:Landroid/media/AudioManager;
    const/16 v5, 0x50

    .line 331
    .local v5, toneVolume:I
    const/16 v4, 0x1f4

    .line 332
    .local v4, toneLengthMillis:I
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 335
    .local v2, ringerMode:I
    const/4 v3, 0x5

    .line 336
    .local v3, stream:I
    :try_start_0
    new-instance v6, Landroid/media/ToneGenerator;

    invoke-direct {v6, v3, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v6, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    .line 338
    if-eqz v2, :cond_0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_0

    .line 340
    iget-object v6, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v6, p1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 341
    const-string v6, "Mms/MessagingNotificationAlert"

    const-string v7, "makeTone success"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/16 v6, 0x208

    int-to-long v6, v6

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 350
    :cond_0
    :goto_0
    iget v6, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v6}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    .line 351
    return-void

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, e:Ljava/lang/RuntimeException;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 346
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 347
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeTts()V
    .locals 3

    .prologue
    .line 375
    :try_start_0
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, p0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    goto :goto_0
.end method

.method private makeVibrate()V
    .locals 4

    .prologue
    .line 355
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 356
    .local v1, notification:Landroid/app/Notification;
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 357
    .local v0, nm:Landroid/app/NotificationManager;
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->priority:I

    .line 359
    const/16 v2, 0x11

    iput v2, v1, Landroid/app/Notification;->haptic:I

    .line 360
    const/16 v2, 0x7b

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 361
    const-string v2, "Mms/MessagingNotificationAlert"

    const-string v3, "makeVibrate success"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method private makeVibrateOnCall()V
    .locals 3

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 370
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 371
    return-void
.end method

.method private maybeUpdateTtsLanguage(Ljava/lang/String;)V
    .locals 7
    .parameter "currentEngine"

    .prologue
    .line 537
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_0

    .line 538
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v4, p1}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, localeString:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 540
    invoke-static {v2}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, locale:[Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .local v3, newLocale:Ljava/util/Locale;
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 544
    .local v0, engineLocale:Ljava/util/Locale;
    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 545
    const-string v4, "Mms/MessagingNotificationAlert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading language ahead of sample check : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 550
    .end local v0           #engineLocale:Ljava/util/Locale;
    .end local v1           #locale:[Ljava/lang/String;
    .end local v2           #localeString:Ljava/lang/String;
    .end local v3           #newLocale:Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method private registerVolumeIntentReceiver()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, intentFilterVolume:Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method private setVolume(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    .line 297
    if-nez p1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 303
    .local v0, am:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 304
    const/high16 v2, -0x4080

    .line 309
    .local v2, volume:F
    const v2, 0x3dcccccd

    .line 312
    :try_start_0
    invoke-virtual {p1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v1

    .line 315
    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v3, "Mms/MessagingNotificationAlert"

    const-string v4, "setVolume() - IllegalStateException"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private speakNewMessageInfo()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x2

    const/4 v10, 0x0

    .line 409
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 410
    .local v4, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnCall()Z

    move-result v6

    .line 411
    .local v6, onCall:Z
    if-eqz v6, :cond_6

    .line 412
    const-string v8, "streamType"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :goto_0
    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 423
    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v8}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, currentEngine:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 426
    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v8}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v1

    .line 429
    :cond_0
    new-instance v8, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 430
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->maybeUpdateTtsLanguage(Ljava/lang/String;)V

    .line 431
    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v8}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v2

    .line 432
    .local v2, currentLocale:Ljava/util/Locale;
    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v8, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 434
    .local v0, CurlanguageResult:I
    if-eqz v2, :cond_1

    if-ne v0, v11, :cond_3

    .line 435
    :cond_1
    const-string v8, "Mms/MessagingNotificationAlert"

    const-string v9, "mTts.getLanguage() returns null"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v3

    .line 438
    .local v3, languageResult:I
    if-eq v3, v11, :cond_2

    const/4 v8, -0x1

    if-ne v3, v8, :cond_3

    .line 440
    :cond_2
    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 441
    const-string v8, "Mms/MessagingNotificationAlert"

    const-string v9, "TTS cannot use system language, using Locale.US instead"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .end local v3           #languageResult:I
    :cond_3
    const v8, 0x7f080035

    invoke-virtual {p0, v8}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v7

    .line 446
    .local v7, smsFrom:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 447
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDocomoAccountAsDefault()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v8}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v8

    const-string v9, "jpn"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 448
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;

    .line 454
    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v8, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 455
    const/4 v5, 0x0

    .line 456
    .local v5, nRet:I
    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v9, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;

    invoke-virtual {v8, v9, v12, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v5

    .line 457
    const-string v8, "Mms/MessagingNotificationAlert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ret:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v8, "utteranceId"

    const-string v9, "New message tts ended"

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v8, v9, v10, v12, v4}, Landroid/speech/tts/TextToSpeech;->playSilence(JILjava/util/HashMap;)I

    move-result v5

    .line 462
    const-string v8, "Mms/MessagingNotificationAlert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playSilence ret:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .end local v0           #CurlanguageResult:I
    .end local v1           #currentEngine:Ljava/lang/String;
    .end local v2           #currentLocale:Ljava/util/Locale;
    .end local v5           #nRet:I
    .end local v7           #smsFrom:Ljava/lang/String;
    :cond_5
    return-void

    .line 414
    :cond_6
    const-string v8, "audio"

    invoke-virtual {p0, v8}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 416
    const-string v8, "streamType"

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 418
    :cond_7
    const-string v8, "streamType"

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 450
    .restart local v0       #CurlanguageResult:I
    .restart local v1       #currentEngine:Ljava/lang/String;
    .restart local v2       #currentLocale:Ljava/util/Locale;
    .restart local v7       #smsFrom:Ljava/lang/String;
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public static stopAlertSoundOnCall()V
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 292
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 294
    :cond_0
    return-void
.end method

.method private unregisterVolumeIntentReceiver()V
    .locals 3

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/MessagingNotificationAlert"

    const-string v2, "onDestroy : mVolumeChangeReceiver is not registered."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getTtsLocalString(I)Ljava/lang/String;
    .locals 7
    .parameter "resId"

    .prologue
    .line 554
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, defaultMessageTTS:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 557
    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, currentLang:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, strings:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 561
    .local v3, langs:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 562
    aget-object v5, v3, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 563
    aget-object v5, v4, v2

    .line 567
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #langs:[Ljava/lang/String;
    .end local v4           #strings:[Ljava/lang/String;
    :goto_1
    return-object v5

    .line 561
    .restart local v0       #currentLang:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #langs:[Ljava/lang/String;
    .restart local v4       #strings:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #langs:[Ljava/lang/String;
    .end local v4           #strings:[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v1, v5

    goto :goto_1
.end method

.method public isVlingoAvailable()Z
    .locals 10

    .prologue
    .line 472
    const/4 v2, 0x0

    .line 473
    .local v2, isInstalledSvoice:Z
    const/4 v3, 0x0

    .line 474
    .local v3, isInstalledTalkback:Z
    const/4 v1, 0x0

    .line 476
    .local v1, isAccepted:Z
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 477
    .local v5, manager:Landroid/app/ActivityManager;
    if-eqz v5, :cond_1

    .line 478
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 479
    .local v4, liRunInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 481
    .local v6, objInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v7, "com.vlingo.midas"

    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 482
    const/4 v2, 0x1

    .line 492
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #liRunInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6           #objInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 493
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/MessagingNotificationAlert;->checkVlingoAccepted(Z)Z

    move-result v1

    .line 498
    :cond_2
    :goto_1
    const-string v7, "Mms/MessagingNotificationAlert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isInstalledSvoice="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isInstalledTalkback="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isAccepted="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return v1

    .line 484
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v4       #liRunInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v6       #objInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    const-string v7, "com.vlingo.client.samsung"

    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 485
    const/4 v3, 0x1

    .line 486
    goto :goto_0

    .line 494
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #liRunInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6           #objInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    if-eqz v3, :cond_2

    .line 495
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/MessagingNotificationAlert;->checkVlingoAccepted(Z)Z

    move-result v1

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 108
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->registerVolumeIntentReceiver()V

    .line 109
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 204
    sget-object v0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 206
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->unregisterVolumeIntentReceiver()V

    .line 211
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 213
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 218
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 220
    :cond_2
    const-string v0, "Mms/MessagingNotificationAlert"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 11
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 113
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "alertoncall_mode"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_2

    move v0, v7

    .line 115
    .local v0, alertOnCallOff:Z
    :goto_0
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->checkAlertOnCall()Z

    move-result v9

    if-nez v9, :cond_3

    move v1, v7

    .line 117
    .local v1, alertOnChatonCallOff:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_on"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 119
    .local v2, drivingMode:I
    iput p2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    .line 121
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->isVlingoAvailable()Z

    move-result v6

    .line 122
    .local v6, isVlingoAvailable:Z
    const/4 v5, 0x1

    .line 124
    .local v5, isTalkbackOn:Z
    :try_start_0
    invoke-static {p0}, Lcom/android/mms/util/PackageInfo;->isTalkBackAvailable(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 130
    :goto_2
    :try_start_1
    const-string v8, "TTS_INFO"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;

    .line 131
    const-string v8, "IsCMASTyep"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->IsCMASType:Z

    .line 133
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 134
    const-string v8, "SenderRingtonePath"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->senderRingtonePath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :cond_0
    :goto_3
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnCall()Z

    move-result v4

    .line 142
    .local v4, isOnCall:Z
    const-string v8, "Mms/MessagingNotificationAlert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Driving mode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Vlingo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Talkback = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isOnCall = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " alertOnCallMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isCmas = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->IsCMASType:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-eqz v4, :cond_5

    .line 152
    if-eqz v0, :cond_4

    .line 153
    iget v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    .line 180
    :cond_1
    :goto_4
    return-void

    .end local v0           #alertOnCallOff:Z
    .end local v1           #alertOnChatonCallOff:Z
    .end local v2           #drivingMode:I
    .end local v4           #isOnCall:Z
    .end local v5           #isTalkbackOn:Z
    .end local v6           #isVlingoAvailable:Z
    :cond_2
    move v0, v8

    .line 114
    goto/16 :goto_0

    .restart local v0       #alertOnCallOff:Z
    :cond_3
    move v1, v8

    .line 115
    goto/16 :goto_1

    .line 125
    .restart local v1       #alertOnChatonCallOff:Z
    .restart local v2       #drivingMode:I
    .restart local v5       #isTalkbackOn:Z
    .restart local v6       #isVlingoAvailable:Z
    :catch_0
    move-exception v3

    .line 126
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "Mms/MessagingNotificationAlert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "There have a Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 155
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v4       #isOnCall:Z
    :cond_4
    iget-boolean v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->IsCMASType:Z

    if-nez v7, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeAlertType()V

    goto :goto_4

    .line 159
    :cond_5
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnChatonCall()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 160
    if-eqz v1, :cond_6

    .line 161
    iget v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    goto :goto_4

    .line 163
    :cond_6
    iget-boolean v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->IsCMASType:Z

    if-nez v7, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeAlertType()V

    goto :goto_4

    .line 167
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVoLTE()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnVoLTECall()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 168
    if-eqz v0, :cond_8

    .line 169
    iget v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    goto :goto_4

    .line 172
    :cond_8
    iget-boolean v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->IsCMASType:Z

    if-nez v7, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeAlertSoundOnCall()V

    goto :goto_4

    .line 175
    :cond_9
    if-ne v2, v7, :cond_a

    if-nez v6, :cond_a

    if-nez v5, :cond_a

    .line 176
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeTts()V

    goto :goto_4

    .line 178
    :cond_a
    iget v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    goto :goto_4

    .line 137
    .end local v4           #isOnCall:Z
    :catch_1
    move-exception v8

    goto/16 :goto_3
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 468
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    .line 469
    return-void
.end method
