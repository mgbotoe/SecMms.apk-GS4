.class public Lcom/samsung/app/share/via/external/NativeAccess;
.super Ljava/lang/Object;
.source "NativeAccess.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "sharevia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    const-string v0, "sharevia_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    const-string v0, "Qdio"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-eqz p1, :cond_0

    .line 22
    const-string v0, "sharevia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    const-string v0, "sharevia_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    :goto_0
    const-string v0, "Qdio"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    return-void

    .line 27
    :cond_0
    const-string v0, "mediaConverter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    const-string v0, "mediaConverter_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public native getInputParamerterAnalysis(Ljava/lang/String;III)I
.end method

.method public native getInputParamerterAnalysis(Ljava/lang/String;IIII)I
.end method

.method public native getOutputFileSize(Lcom/samsung/app/share/via/external/ShareviaObj;)I
.end method

.method public native startProcessing(Lcom/samsung/app/share/via/external/ShareviaObj;)I
.end method

.method public native stopProcessing()I
.end method
