.class public Lcom/android/mms/TimeChecker;
.super Ljava/lang/Object;
.source "TimeChecker.java"


# static fields
.field private static sStartT:J

.field private static sStrElapsed:Ljava/lang/String;


# instance fields
.field private startT:J

.field private strElapsed:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sEnd()Ljava/lang/String;
    .locals 9

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-wide v4, Lcom/android/mms/TimeChecker;->sStartT:J

    sub-long v0, v2, v4

    .line 34
    .local v0, elapsed:J
    const-string v2, "Elapsed time : %.3f ms"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    long-to-double v5, v0

    const-wide v7, 0x412e848000000000L

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/TimeChecker;->sStrElapsed:Ljava/lang/String;

    .line 35
    sget-object v2, Lcom/android/mms/TimeChecker;->sStrElapsed:Ljava/lang/String;

    return-object v2
.end method

.method public static sEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-wide v4, Lcom/android/mms/TimeChecker;->sStartT:J

    sub-long v0, v2, v4

    .line 41
    .local v0, elapsed:J
    const-string v2, "Elapsed time : %.3f ms"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    long-to-double v5, v0

    const-wide v7, 0x412e848000000000L

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/TimeChecker;->sStrElapsed:Ljava/lang/String;

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/TimeChecker;->sStrElapsed:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v2, Lcom/android/mms/TimeChecker;->sStrElapsed:Ljava/lang/String;

    return-object v2
.end method

.method public static sGetElapsed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/mms/TimeChecker;->sStrElapsed:Ljava/lang/String;

    return-object v0
.end method

.method public static sStart()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/mms/TimeChecker;->sStartT:J

    .line 30
    return-void
.end method


# virtual methods
.method public end()V
    .locals 9

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/mms/TimeChecker;->startT:J

    sub-long v0, v2, v4

    .line 61
    .local v0, elapsed:J
    const-string v2, "Elapsed time : %.3f ms"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    long-to-double v5, v0

    const-wide v7, 0x412e848000000000L

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/TimeChecker;->strElapsed:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public getElapsed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/mms/TimeChecker;->strElapsed:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/TimeChecker;->strElapsed:Ljava/lang/String;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/mms/TimeChecker;->strElapsed:Ljava/lang/String;

    return-object v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/TimeChecker;->startT:J

    .line 57
    return-void
.end method
