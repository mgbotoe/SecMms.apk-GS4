.class Lcom/android/mms/ui/MmsNotification$2;
.super Ljava/lang/Object;
.source "MmsNotification.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsNotification;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/mms/ui/MmsNotification$2;->this$0:Lcom/android/mms/ui/MmsNotification;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "player"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 80
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 81
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Mms/MmsNotification"

    const-string v2, "onError"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
