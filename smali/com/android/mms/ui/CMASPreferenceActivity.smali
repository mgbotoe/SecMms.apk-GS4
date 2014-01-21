.class public Lcom/android/mms/ui/CMASPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CMASPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static HIDDENMENU_ENABLE_PATH:Ljava/lang/String; = null

.field private static final HIDDEN_MENU_OFF:Ljava/lang/String; = "OFF"

.field private static final HIDDEN_MENU_ON:Ljava/lang/String; = "ON"

.field private static final SYSTEM_PROP_HIDDENMENU_ENABLE_KEY:Ljava/lang/String; = "sys.hiddenmenu.enable"

.field static final TAG:Ljava/lang/String; = "Mms/CMASPreferenceActivity"


# instance fields
.field amber:Landroid/preference/CheckBoxPreference;

.field extreme:Landroid/preference/CheckBoxPreference;

.field private isFirsttime:Z

.field private mEnableHiddenMenuForSprint:Z

.field mVibrator:Landroid/os/Vibrator;

.field private mplayer:Landroid/media/MediaPlayer;

.field prefs:Landroid/content/SharedPreferences;

.field presidential:Landroid/preference/CheckBoxPreference;

.field severe:Landroid/preference/CheckBoxPreference;

.field test:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "/efs/carrier/HiddenMenu"

    sput-object v0, Lcom/android/mms/ui/CMASPreferenceActivity;->HIDDENMENU_ENABLE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    .line 62
    iput-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mEnableHiddenMenuForSprint:Z

    return-void
.end method

.method public static CheckCMASChannelInfo(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "prefs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, bCmasChannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 535
    const-string v0, "Mms/CMASPreferenceActivity"

    const-string v1, "getCMASConfig()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 539
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isExtremeAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :goto_0
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isSeverityAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    :goto_1
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isAmberAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :goto_2
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 558
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    :goto_3
    return-void

    .line 542
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 554
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 560
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private addSharedPref(Ljava/lang/String;Z)V
    .locals 6
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 283
    const-string v3, "Mms/CMASPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " saved "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 287
    .local v0, Prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 288
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v0           #Prefs:Landroid/content/SharedPreferences;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkHiddenMenuEnable()Z
    .locals 6

    .prologue
    .line 571
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/android/mms/ui/CMASPreferenceActivity;->HIDDENMENU_ENABLE_PATH:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .local v1, f:Ljava/io/File;
    const/4 v2, 0x0

    .line 575
    .local v2, hiddenMenuEnable:Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 577
    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/mms/ui/CMASPreferenceActivity;->HIDDENMENU_ENABLE_PATH:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/mms/ui/CMASPreferenceActivity;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, result:Ljava/lang/String;
    const-string v4, "ON"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 579
    const/4 v2, 0x1

    .line 587
    .end local v3           #result:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 580
    .restart local v3       #result:Ljava/lang/String;
    :cond_2
    const-string v4, "OFF"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 581
    const/4 v2, 0x0

    goto :goto_0

    .line 582
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 584
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Mms/CMASPreferenceActivity"

    const-string v5, "Exception in reading file"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 438
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 439
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c01b3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 440
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 441
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 442
    const v1, 0x7f0c00ea

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 443
    const v1, 0x7f0c00eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 444
    const v1, 0x7f0c01b4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 446
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 447
    return-void
.end method

.method public static getCMASChannels(Landroid/content/SharedPreferences;)[S
    .locals 10
    .parameter "prefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0x1112

    const/4 v8, 0x0

    .line 481
    const-string v5, "Mms/CMASPreferenceActivity"

    const-string v6, "getCMASConfig()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/16 v5, 0xe

    new-array v1, v5, [S

    .line 483
    .local v1, fakemsgId:[S
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 485
    aput-short v8, v1, v2

    .line 483
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    :cond_0
    aput-short v9, v1, v8

    .line 488
    const/4 v3, 0x1

    .line 489
    .local v3, len:I
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isExtremeAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 491
    add-int/lit8 v3, v3, 0x2

    .line 492
    const/4 v5, 0x1

    const/16 v6, 0x1113

    aput-short v6, v1, v5

    .line 493
    const/4 v5, 0x2

    const/16 v6, 0x1114

    aput-short v6, v1, v5

    .line 495
    :cond_1
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isSeverityAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 497
    add-int/lit8 v3, v3, 0x6

    .line 498
    const/4 v5, 0x3

    const/16 v6, 0x1115

    aput-short v6, v1, v5

    .line 499
    const/4 v5, 0x4

    const/16 v6, 0x1116

    aput-short v6, v1, v5

    .line 500
    const/4 v5, 0x5

    const/16 v6, 0x1117

    aput-short v6, v1, v5

    .line 501
    const/4 v5, 0x6

    const/16 v6, 0x1118

    aput-short v6, v1, v5

    .line 502
    const/4 v5, 0x7

    const/16 v6, 0x1119

    aput-short v6, v1, v5

    .line 503
    const/16 v5, 0x8

    const/16 v6, 0x111a

    aput-short v6, v1, v5

    .line 505
    :cond_2
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isAmberAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 507
    add-int/lit8 v3, v3, 0x1

    .line 508
    const/16 v5, 0x9

    const/16 v6, 0x111b

    aput-short v6, v1, v5

    .line 510
    :cond_3
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 512
    add-int/lit8 v3, v3, 0x4

    .line 513
    const/16 v5, 0xa

    const/16 v6, 0x111c

    aput-short v6, v1, v5

    .line 514
    const/16 v5, 0xb

    const/16 v6, 0x111d

    aput-short v6, v1, v5

    .line 515
    const/16 v5, 0xc

    const/16 v6, 0x111e

    aput-short v6, v1, v5

    .line 516
    const/16 v5, 0xd

    const/16 v6, 0x111f

    aput-short v6, v1, v5

    .line 518
    :cond_4
    const-string v5, "Mms/CMASPreferenceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    new-array v4, v3, [S

    .line 520
    .local v4, msgId:[S
    aput-short v9, v4, v8

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, count:I
    const/4 v2, 0x1

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_6

    .line 524
    aget-short v5, v1, v2

    if-eqz v5, :cond_5

    .line 526
    add-int/lit8 v0, v0, 0x1

    .line 527
    aget-short v5, v1, v2

    aput-short v5, v4, v0

    .line 522
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 531
    :cond_6
    return-object v4
.end method

.method public static read(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "path"

    .prologue
    .line 591
    const-string v5, "Mms/CMASPreferenceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read file path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v4, 0x0

    .line 594
    .local v4, value:Ljava/lang/String;
    const/4 v2, 0x0

    .line 596
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    if-eqz v3, :cond_0

    .line 598
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 600
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 611
    .end local v1           #line:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 613
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    move-object v2, v3

    .line 621
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    const-string v5, "Mms/CMASPreferenceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-object v4

    .line 602
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_3
    :try_start_3
    const-string v4, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 606
    .end local v1           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 607
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 608
    const-string v5, "Mms/CMASPreferenceActivity"

    const-string v6, "Exception in reading file"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 611
    if-eqz v2, :cond_2

    .line 613
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 615
    :catch_1
    move-exception v0

    .line 616
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 617
    const-string v5, "Mms/CMASPreferenceActivity"

    const-string v6, "Exception in closing file"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 611
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_4

    .line 613
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 611
    :cond_4
    :goto_5
    throw v5

    .line 615
    :catch_2
    move-exception v0

    .line 616
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 617
    const-string v6, "Mms/CMASPreferenceActivity"

    const-string v7, "Exception in closing file"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 615
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .line 616
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 617
    const-string v5, "Mms/CMASPreferenceActivity"

    const-string v6, "Exception in closing file"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 611
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 606
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0
    .parameter "pref"
    .parameter "removePref"

    .prologue
    .line 565
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 566
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 568
    :cond_0
    return-void
.end method

.method private resetPreferences(Z)V
    .locals 15
    .parameter "IsRestore"

    .prologue
    .line 104
    const-string v11, "pref_key_cmas_settings_alert"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 106
    .local v0, cmasSettingsAlert:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasAllInOneThreaded()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 107
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "pref_key_cmas_settings_ui"

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 151
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialOPTOUTPref()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 152
    const-string v11, "#cmas#type##presidential#enabled"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 153
    .local v2, cmas_recv:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    .end local v2           #cmas_recv:Landroid/preference/CheckBoxPreference;
    :cond_1
    const-string v11, "Mms/CMASPreferenceActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HiddenMenu value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "sys.hiddenmenu.enable"

    const-string v14, "0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v11, "Mms/CMASPreferenceActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkHiddenMenuEnable() value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/mms/ui/CMASPreferenceActivity;->checkHiddenMenuEnable()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestSPRFeature()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestMessageWithHiddenMenu()Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasAllInOneThreaded()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 160
    :cond_2
    const-string v11, "sys.hiddenmenu.enable"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/android/mms/ui/CMASPreferenceActivity;->checkHiddenMenuEnable()Z

    move-result v11

    if-nez v11, :cond_3

    .line 161
    const-string v11, "#cmas#type##test#enabled"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 163
    .restart local v2       #cmas_recv:Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_3

    .line 164
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    .end local v2           #cmas_recv:Landroid/preference/CheckBoxPreference;
    :cond_3
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->isFirsttime:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "#cmas#type##extreme#enabled"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->extreme:Landroid/preference/CheckBoxPreference;

    .line 172
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "#cmas#type##severe#enabled"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    .line 173
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "#cmas#type##amber#enabled"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->amber:Landroid/preference/CheckBoxPreference;

    .line 174
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "#cmas#type##test#enabled"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->test:Landroid/preference/CheckBoxPreference;

    .line 175
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "#cmas#type##presidential#enabled"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->presidential:Landroid/preference/CheckBoxPreference;

    .line 176
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    iput-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    .line 178
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_4

    .line 179
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 180
    .local v6, lc:Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 181
    .local v8, mLaguage:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, mCountry:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->presidential:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f0c01c5

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    const-string v11, "en"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "us"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 186
    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->extreme:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f0c01c6

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->amber:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f0c01c8

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f0c01c7

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    .end local v6           #lc:Ljava/util/Locale;
    .end local v7           #mCountry:Ljava/lang/String;
    .end local v8           #mLaguage:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getmCmasMessageTMOMenuTextFeature()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 194
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 195
    .restart local v6       #lc:Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 196
    .restart local v8       #mLaguage:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 198
    .restart local v7       #mCountry:Ljava/lang/String;
    const-string v11, "en"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "us"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 200
    const v11, 0x7f0c02d6

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, tmoExtreamTitle:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->extreme:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v9}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    const v11, 0x7f0c02d7

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 203
    .local v10, tmoSevereTitle:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    .end local v9           #tmoExtreamTitle:Ljava/lang/String;
    .end local v10           #tmoSevereTitle:Ljava/lang/String;
    :cond_5
    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->extreme:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 209
    .end local v6           #lc:Ljava/util/Locale;
    .end local v7           #mCountry:Ljava/lang/String;
    .end local v8           #mLaguage:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasMessageServereBelongToExtreme()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 210
    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "#cmas#type##extreme#enabled"

    invoke-virtual {p0, v11, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 211
    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "#cmas#type##severe#enabled"

    invoke-virtual {p0, v11, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 212
    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "#cmas#type##amber#enabled"

    invoke-virtual {p0, v11, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 213
    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "#cmas#type##test#enabled"

    invoke-virtual {p0, v11, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 214
    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v11, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 217
    :cond_7
    const/4 v5, 0x0

    .line 218
    .local v5, hiddenMenuForSpr:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 219
    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "pref_cdma_cmas_over_lte_menu"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mEnableHiddenMenuForSprint:Z

    .line 220
    iget-boolean v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mEnableHiddenMenuForSprint:Z

    if-eqz v11, :cond_8

    .line 221
    const/4 v5, 0x1

    .line 225
    :cond_8
    if-nez v5, :cond_9

    .line 226
    const-string v11, "pref_cmas_exercise"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 227
    const-string v11, "pref_cmas_operator_defined"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 229
    :cond_9
    return-void

    .line 109
    .end local v5           #hiddenMenuForSpr:Z
    :cond_a
    const-string v11, "pref_key_cmas_settings_ui"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 111
    .local v1, cmasSettingsUI:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasFontSizePref()Z

    move-result v11

    if-nez v11, :cond_b

    .line 112
    const-string v11, "#cmas#pref##font#size"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 113
    .local v2, cmas_recv:Landroid/preference/ListPreference;
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 116
    .end local v2           #cmas_recv:Landroid/preference/ListPreference;
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasNotificationPref()Z

    move-result v11

    if-nez v11, :cond_c

    .line 117
    const-string v11, "pref_key_emergency_alert"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 118
    .local v3, cmas_recv_alert:Landroid/preference/Preference;
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    .end local v3           #cmas_recv_alert:Landroid/preference/Preference;
    :cond_c
    const-string v11, "pref_key_emergency_vibrateWhen"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 128
    .local v4, cmas_recv_vib:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasAlertSoundMenu()Z

    move-result v11

    if-nez v11, :cond_d

    .line 132
    const-string v11, "pref_key_emergency_alertWhen"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 133
    .restart local v3       #cmas_recv_alert:Landroid/preference/Preference;
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    .end local v3           #cmas_recv_alert:Landroid/preference/Preference;
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasVibrationPreviewPref()Z

    move-result v11

    if-nez v11, :cond_e

    .line 137
    const-string v11, "pref_key_emergency_vibrate"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 138
    .local v2, cmas_recv:Landroid/preference/Preference;
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 145
    .end local v2           #cmas_recv:Landroid/preference/Preference;
    :cond_e
    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v11

    if-nez v11, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "pref_key_cmas_settings_ui"

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_0
.end method

.method public static setCMASConfig(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 469
    const-string v2, "Mms/CMASPreferenceActivity"

    const-string v3, "setCMASConfig()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 473
    .local v1, sharedpref:Landroid/content/SharedPreferences;
    invoke-static {p0, v1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v1           #sharedpref:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Mms/CMASPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in setCMAS config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 298
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 304
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->addPreferencesFromResource(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 82
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 85
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->resetPreferences(Z)V

    .line 86
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 415
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 348
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 349
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 351
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 422
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 434
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 431
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->finish()V

    .line 432
    const/4 v0, 0x1

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 308
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 310
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0203

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, str:Ljava/lang/String;
    const-string v2, "pref_key_emergency_alert"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 314
    .local v0, emergency_alert:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 319
    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 320
    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 321
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_2

    .line 325
    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 326
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    .line 357
    const-string v3, "pref_key_emergency_alert"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_3

    .line 358
    const-string v2, "android.resource://com.android.mms/raw/cmas_ringtone"

    .line 359
    .local v2, ringtoneStr:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 361
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    .line 362
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 363
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 364
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    .line 365
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0203

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v2           #ringtoneStr:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 370
    .restart local v2       #ringtoneStr:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    .line 371
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 372
    .local v1, mediaURI:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 373
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 374
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 375
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 376
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0207

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    const-string v3, "Mms/CMASPreferenceActivity"

    const-string v4, "Am now in playing"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 384
    .end local v1           #mediaURI:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 385
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "Mms/CMASPreferenceActivity"

    const-string v4, "Exception in tree click"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    const-string v3, "Mms/CMASPreferenceActivity"

    const-string v4, "Ringtone str not found"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    .end local v2           #ringtoneStr:Ljava/lang/String;
    :cond_3
    const-string v3, "pref_key_emergency_vibrate"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_0

    .line 391
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    if-nez v3, :cond_4

    .line 394
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    .line 397
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    const/16 v4, 0xc

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 399
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0208

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 403
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    .line 404
    iput-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    .line 405
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0206

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 397
    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    iget-boolean v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mEnableHiddenMenuForSprint:Z

    const-string v2, "pref_cdma_cmas_over_lte_menu"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 93
    const-string v1, "Mms/CMASPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hidden menu status is changed for Sprint mEnableHiddenMenuForSprint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mEnableHiddenMenuForSprint:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 95
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->addPreferencesFromResource(I)V

    .line 96
    invoke-direct {p0, v4}, Lcom/android/mms/ui/CMASPreferenceActivity;->resetPreferences(Z)V

    .line 100
    .end local v0           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 101
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8
    .parameter "sp"
    .parameter "s"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 232
    const-string v4, "#cmas#type##amber#enabled"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    const-string v4, "#cmas#type##amber#enabled"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 234
    .local v1, bool:Z
    const-string v4, "Mms/CMASPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value amber "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v4, "#cmas#type##amber#enabled"

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->addSharedPref(Ljava/lang/String;Z)V

    .line 280
    .end local v1           #bool:Z
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const-string v4, "#cmas#type##extreme#enabled"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 237
    const-string v4, "#cmas#type##extreme#enabled"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 238
    .restart local v1       #bool:Z
    const-string v4, "Mms/CMASPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " value extreme "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    if-nez v1, :cond_2

    .line 242
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 243
    const-string v4, "#cmas#type##severe#enabled"

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->addSharedPref(Ljava/lang/String;Z)V

    .line 244
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 245
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 247
    :cond_2
    const-string v4, "#cmas#type##extreme#enabled"

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->addSharedPref(Ljava/lang/String;Z)V

    goto :goto_0

    .line 249
    .end local v1           #bool:Z
    :cond_3
    const-string v4, "#cmas#type##severe#enabled"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 251
    const-string v4, "#cmas#type##severe#enabled"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 253
    .restart local v1       #bool:Z
    const/4 v3, 0x1

    .line 256
    .local v3, extreme:Z
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 257
    .local v0, Prefs:Landroid/content/SharedPreferences;
    const-string v4, "#cmas#type##extreme#enabled"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 262
    .end local v0           #Prefs:Landroid/content/SharedPreferences;
    :goto_1
    const-string v4, "Mms/CMASPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=extreme value severe= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    if-eqz v3, :cond_4

    .line 264
    const-string v4, "#cmas#type##severe#enabled"

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->addSharedPref(Ljava/lang/String;Z)V

    .line 278
    :goto_2
    iput-boolean v7, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->isFirsttime:Z

    goto/16 :goto_0

    .line 258
    :catch_0
    move-exception v2

    .line 260
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 267
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 268
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 269
    const-string v4, "#cmas#type##severe#enabled"

    invoke-direct {p0, v4, v7}, Lcom/android/mms/ui/CMASPreferenceActivity;->addSharedPref(Ljava/lang/String;Z)V

    .line 270
    iget-boolean v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->isFirsttime:Z

    if-nez v4, :cond_5

    .line 273
    const v4, 0x7f0c0400

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 276
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_2
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 330
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 331
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 333
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 334
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 341
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->setCMASConfig(Landroid/content/Context;)V

    .line 344
    :cond_3
    return-void
.end method
