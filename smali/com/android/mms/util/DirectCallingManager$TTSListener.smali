.class Lcom/android/mms/util/DirectCallingManager$TTSListener;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DirectCallingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TTSListener"
.end annotation


# instance fields
.field mLocale:Ljava/util/Locale;

.field final synthetic this$0:Lcom/android/mms/util/DirectCallingManager;


# direct methods
.method private constructor <init>(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 990
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->this$0:Lcom/android/mms/util/DirectCallingManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 990
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager$TTSListener;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 8
    .parameter "status"

    .prologue
    const/4 v7, 0x1

    .line 993
    const-string v3, "Mms/DirectCallingManager"

    const-string v4, "onInit...TTS : "

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/util/DirectCallingManager;->access$500(Lcom/android/mms/util/DirectCallingManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tts_default_lang"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 996
    .local v1, mDefaultLanguage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/util/DirectCallingManager;->access$500(Lcom/android/mms/util/DirectCallingManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tts_default_country"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    .local v0, mDefaultCountry:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/util/DirectCallingManager;->access$500(Lcom/android/mms/util/DirectCallingManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tts_default_variant"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 999
    .local v2, mDefaultLocVariant:Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v3, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    .line 1000
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 1001
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    .line 1006
    :goto_0
    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v3}, Lcom/android/mms/util/DirectCallingManager;->access$2600(Lcom/android/mms/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1007
    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->this$0:Lcom/android/mms/util/DirectCallingManager;

    const/4 v4, 0x0

    #setter for: Lcom/android/mms/util/DirectCallingManager;->IsTTSInitiated:Z
    invoke-static {v3, v4}, Lcom/android/mms/util/DirectCallingManager;->access$2702(Lcom/android/mms/util/DirectCallingManager;Z)Z

    .line 1024
    :goto_1
    return-void

    .line 1003
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    goto :goto_0

    .line 1011
    :cond_1
    const-string v3, "Mms/DirectCallingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInit...TTS - isLanguageAvailable() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v5}, Lcom/android/mms/util/DirectCallingManager;->access$2600(Lcom/android/mms/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v3}, Lcom/android/mms/util/DirectCallingManager;->access$2600(Lcom/android/mms/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v3}, Lcom/android/mms/util/DirectCallingManager;->access$2600(Lcom/android/mms/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-eq v3, v7, :cond_2

    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v3}, Lcom/android/mms/util/DirectCallingManager;->access$2600(Lcom/android/mms/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1016
    :cond_2
    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v3}, Lcom/android/mms/util/DirectCallingManager;->access$2600(Lcom/android/mms/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 1023
    :goto_2
    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #setter for: Lcom/android/mms/util/DirectCallingManager;->IsTTSInitiated:Z
    invoke-static {v3, v7}, Lcom/android/mms/util/DirectCallingManager;->access$2702(Lcom/android/mms/util/DirectCallingManager;Z)Z

    goto :goto_1

    .line 1018
    :cond_3
    const-string v3, "Mms/DirectCallingManager"

    const-string v4, "onInit...TTS - set Locale.US , maybe not configured"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v3}, Lcom/android/mms/util/DirectCallingManager;->access$2600(Lcom/android/mms/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 1020
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v3, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    goto :goto_2
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 2
    .parameter "utteranceId"

    .prologue
    .line 1027
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "onUtteranceCompleted...TTS : "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-static {}, Lcom/android/mms/util/DirectCallingManager;->access$2800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/util/DirectCallingManager;->access$2802(Z)Z

    .line 1034
    :goto_0
    return-void

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$TTSListener;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/util/DirectCallingManager;->access$400(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
