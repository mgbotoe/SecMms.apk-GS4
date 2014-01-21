.class Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;
.super Ljava/lang/Object;
.source "SlideshowFrame.java"

# interfaces
.implements Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmilPlayerController"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field final synthetic this$0:Lcom/android/mms/ui/SlideshowFrame;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideshowFrame;Lcom/android/mms/dom/smil/SmilPlayer;)V
    .locals 1
    .parameter
    .parameter "player"

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1137
    const-string v0, "Mms/SmilPlayerController"

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->TAG:Ljava/lang/String;

    .line 1140
    iput-object p2, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 1141
    return-void
.end method


# virtual methods
.method public SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter "showModel"

    .prologue
    .line 1212
    return-void
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 1189
    const/4 v0, 0x1

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 1145
    const/16 v0, 0x64

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 1216
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayed()Z
    .locals 1

    .prologue
    .line 1221
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartAction()Z
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 1226
    const/4 v0, 0x0

    return v0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 1202
    const-string v0, "Mms/SmilPlayerController"

    const-string v1, "next()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->next()V

    .line 1207
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    .line 1167
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    #calls: Lcom/android/mms/ui/SlideshowFrame;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$1500(Lcom/android/mms/ui/SlideshowFrame;)V

    .line 1169
    :cond_0
    return-void
.end method

.method public pauseSmilPlayer()V
    .locals 0

    .prologue
    .line 1232
    return-void
.end method

.method public prev()V
    .locals 2

    .prologue
    .line 1194
    const-string v0, "Mms/SmilPlayerController"

    const-string v1, "prev()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->prev()V

    .line 1199
    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1237
    return-void
.end method

.method public setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1242
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 1172
    const-string v0, "Mms/SmilPlayerController"

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isCallOffhook()Z

    move-result v1

    #setter for: Lcom/android/mms/ui/SlideshowFrame;->isOnCall:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowFrame;->access$1602(Lcom/android/mms/ui/SlideshowFrame;Z)Z

    .line 1177
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    #getter for: Lcom/android/mms/ui/SlideshowFrame;->isOnCall:Z
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$1600(Lcom/android/mms/ui/SlideshowFrame;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1178
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    #getter for: Lcom/android/mms/ui/SlideshowFrame;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$1700(Lcom/android/mms/ui/SlideshowFrame;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1183
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    #calls: Lcom/android/mms/ui/SlideshowFrame;->accquireWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$300(Lcom/android/mms/ui/SlideshowFrame;)V

    .line 1184
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->start()V

    .line 1186
    :cond_0
    return-void

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    #getter for: Lcom/android/mms/ui/SlideshowFrame;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowFrame;->access$1700(Lcom/android/mms/ui/SlideshowFrame;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    #setter for: Lcom/android/mms/ui/SlideshowFrame;->mVolumeLevel:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowFrame;->access$1802(Lcom/android/mms/ui/SlideshowFrame;I)I

    .line 1181
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    #getter for: Lcom/android/mms/ui/SlideshowFrame;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$1700(Lcom/android/mms/ui/SlideshowFrame;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    #getter for: Lcom/android/mms/ui/SlideshowFrame;->mVolumeLevel:I
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowFrame;->access$1800(Lcom/android/mms/ui/SlideshowFrame;)I

    move-result v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 1247
    return-void
.end method

.method public stopSmilPlayer()V
    .locals 0

    .prologue
    .line 1252
    return-void
.end method
