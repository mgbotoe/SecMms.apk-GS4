.class public Lcom/android/mms/ui/CMASPreviewDialog;
.super Landroid/app/AlertDialog;
.source "CMASPreviewDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMASPreview/Dialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVibrator:Landroid/os/Vibrator;

.field private mplayer:Landroid/media/MediaPlayer;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 76
    const-string v1, "CMASPreview/Dialog"

    const-string v2, "dismiss"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 79
    .local v0, mStatusbarManager:Landroid/app/StatusBarManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreviewDialog;->stopCmasAlert()V

    .line 81
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreviewDialog;->stopCmasVibrator()V

    .line 83
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 49
    const-string v4, "CMASPreview/Dialog"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 52
    .local v3, sp:Landroid/content/SharedPreferences;
    const v4, 0x7f0c033d

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/CMASPreviewDialog;->setTitle(I)V

    .line 53
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c033e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/CMASPreviewDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 54
    const/4 v5, -0x2

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f0c033f

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v6, v4}, Lcom/android/mms/ui/CMASPreviewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 55
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/CMASPreviewDialog;->setCancelable(Z)V

    .line 57
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 58
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 60
    .local v2, ringerMode:I
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 61
    .local v1, mStatusbarManager:Landroid/app/StatusBarManager;
    const/high16 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreviewDialog;->playCmasAlert()V

    .line 63
    const-string v4, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreviewDialog;->playCmasVibrator()V

    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected playCmasAlert()V
    .locals 5

    .prologue
    .line 87
    const-string v2, "android.resource://com.android.mms/raw/cmas_ringtone"

    .line 88
    .local v2, ringtoneStr:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 90
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 92
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 93
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    .line 113
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    .line 97
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 98
    .local v1, mediaURI:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 99
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 100
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 101
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 102
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 104
    const-string v3, "CMASPreview/Dialog"

    const-string v4, "Am now in playing"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v1           #mediaURI:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 107
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "CMASPreview/Dialog"

    const-string v4, "Exception in tree click"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    const-string v3, "CMASPreview/Dialog"

    const-string v4, "Ringtone str not found"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected playCmasVibrator()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0xc

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0

    .line 132
    nop

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

.method protected stopCmasAlert()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method protected stopCmasVibrator()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method
