.class Lcom/android/mms/MmsApp$2;
.super Ljava/lang/Object;
.source "MmsApp.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/MmsApp;->initCountryIso()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/MmsApp;


# direct methods
.method constructor <init>(Lcom/android/mms/MmsApp;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/mms/MmsApp$2;->this$0:Lcom/android/mms/MmsApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCountryDetected(Landroid/location/Country;)V
    .locals 2
    .parameter "country"

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/MmsApp$2;->this$0:Lcom/android/mms/MmsApp;

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/mms/MmsApp;->access$302(Lcom/android/mms/MmsApp;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    const-string v0, "Mms/MmsApp"

    const-string v1, "country detected"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
