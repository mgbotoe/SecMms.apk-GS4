.class Lcom/android/mms/util/DirectCallingManager$2;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/DirectCallingManager;->setVoiceRecognizer(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DirectCallingManager;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager$2;->this$0:Lcom/android/mms/util/DirectCallingManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    .prologue
    .line 229
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "onBeginningOfSpeech"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 247
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .prologue
    .line 215
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "onEndOfSpeech"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public onError(I)V
    .locals 4
    .parameter "error"

    .prologue
    .line 220
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 221
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "recognition_error"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager$2;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/util/DirectCallingManager;->access$400(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 223
    .local v1, message:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 224
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager$2;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/util/DirectCallingManager;->access$400(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 225
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "eventType"
    .parameter "params"

    .prologue
    .line 241
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "onEvent"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 3
    .parameter "partialResults"

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$2;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$400(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 235
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 236
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$2;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$400(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 209
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "onReadyForSpeech"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$2;->this$0:Lcom/android/mms/util/DirectCallingManager;

    const/4 v1, 0x1

    #calls: Lcom/android/mms/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/util/DirectCallingManager;->access$100(Lcom/android/mms/util/DirectCallingManager;Z)V

    .line 211
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 3
    .parameter "results"

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$2;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$400(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 203
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 204
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$2;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$400(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0
    .parameter "rmsdB"

    .prologue
    .line 198
    return-void
.end method
