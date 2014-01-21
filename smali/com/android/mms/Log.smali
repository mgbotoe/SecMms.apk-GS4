.class public final Lcom/android/mms/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final DEBUG:I = 0x1

.field private static final ENABLE_STACK_INFO:Z = false

.field private static final ENDER:Ljava/lang/String; = "[end]    "

#the value of this static final field might be set in the static constructor
.field public static final ENG_VER:Z = false

.field public static final ERROR:I = 0x4

.field public static final FQCN:Ljava/lang/String; = null

.field public static final INFO:I = 0x2

.field private static final LINE_SEP:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final LINE_SEP_LEN:I = 0x0

.field private static final PRINT_CLASS_NAME_ON_CS:Z = false

.field private static final STARTER:Ljava/lang/String; = "[start]    "

.field private static final TAG:Ljava/lang/String; = "Mms/Log"

.field public static final TRACE:Z = false

.field public static final TSP:Z = false

.field public static final VERBOSE:I = 0x0

.field public static final WARN:I = 0x3

.field private static final mPrintThreadId:Z = false

.field private static sLevel:I = 0x0

.field private static sLevelNames:[Ljava/lang/String; = null

.field private static final sLogTrigger:Ljava/lang/String; = "*#log#"

.field private static sPrintSecured:Z

.field static sStartTime:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    sput v1, Lcom/android/mms/Log;->sLevel:I

    .line 28
    sput-boolean v1, Lcom/android/mms/Log;->sPrintSecured:Z

    .line 50
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/mms/Log;->ENG_VER:Z

    .line 282
    const-class v0, Lcom/android/mms/Log;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    .line 284
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/Log;->LINE_SEP:Ljava/lang/String;

    .line 286
    sget-object v0, Lcom/android/mms/Log;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/mms/Log;->LINE_SEP_LEN:I

    return-void

    :cond_0
    move v0, v1

    .line 50
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 0
    .parameter "msg"
    .parameter "fqcn"
    .parameter "bFindFqcnLast"
    .parameter "bSkip1StCs"

    .prologue
    .line 389
    if-nez p0, :cond_0

    .line 390
    const-string p0, ""

    .line 392
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 147
    sget v0, Lcom/android/mms/Log;->sLevel:I

    if-gt v0, v2, :cond_0

    .line 151
    sget-object v0, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 156
    sget v0, Lcom/android/mms/Log;->sLevel:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 160
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    :cond_0
    return-void
.end method

.method public static dumpCursor(Landroid/database/Cursor;)V
    .locals 12
    .parameter "cursor"

    .prologue
    .line 448
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 449
    .local v3, columnCount:I
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, cols:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .local v8, sb:Ljava/lang/StringBuilder;
    const-string v9, "Mms/Log"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "===============cursor dump, count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ============"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v1, v0, v5

    .line 454
    .local v1, col:Ljava/lang/String;
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " | "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 456
    .end local v1           #col:Ljava/lang/String;
    :cond_0
    const-string v9, "Mms/Log"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const/4 v9, -0x1

    invoke-interface {p0, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 459
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 460
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 461
    const-string v9, "No.:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " | "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const/4 v6, 0x0

    .local v6, idxCol:I
    :goto_2
    if-ge v6, v3, :cond_2

    .line 464
    invoke-interface {p0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 465
    const-string v9, "(n)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    :goto_3
    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 467
    :cond_1
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 471
    :cond_2
    const-string v9, "Mms/Log"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 474
    .end local v6           #idxCol:I
    :cond_3
    const-string v9, "Mms/Log"

    const-string v10, "===============cursor dump done ============"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 204
    sget v0, Lcom/android/mms/Log;->sLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 208
    sget-object v0, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 213
    sget v0, Lcom/android/mms/Log;->sLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 217
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    :cond_0
    return-void
.end method

.method public static end(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[end]    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public static filterOutDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "string"

    .prologue
    .line 486
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 487
    .local v1, len:I
    new-array v2, v1, [C

    .line 490
    .local v2, outChar:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 491
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 492
    .local v4, temp:C
    invoke-static {v4}, Lcom/android/mms/Log;->isSugar(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 493
    aput-char v4, v2, v0

    .line 490
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_0
    const/16 v5, 0x78

    aput-char v5, v2, v0

    goto :goto_1

    .line 499
    .end local v4           #temp:C
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    .line 500
    .local v3, result:Ljava/lang/String;
    return-object v3
.end method

.method public static filterOutDigits([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "dests"

    .prologue
    .line 504
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 505
    .local v3, sb:Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 506
    .local v4, str:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/Log;->filterOutDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getCsStr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "st"
    .parameter "idxEnd"

    .prologue
    .line 292
    const-string v2, ""

    .line 294
    .local v2, retString:Ljava/lang/String;
    const-string v3, "("

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 296
    .local v1, idxStart:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 297
    const-string v3, ""

    .line 315
    :goto_0
    return-object v3

    .line 300
    :cond_0
    const-string v3, "."

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 309
    :try_start_0
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    move-object v3, v2

    .line 315
    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "Mms/Log"

    const-string v4, "IndexOutOfBoundsException"

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    const-string v2, ""

    goto :goto_1
.end method

.method public static getCurrentLevel()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/android/mms/Log;->sLevel:I

    return v0
.end method

.method public static getCurrentLevelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/android/mms/Log;->getLevelNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/Log;->getCurrentLevel()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getCurrentThreadInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLengthString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 438
    if-nez p0, :cond_0

    .line 439
    const-string v0, "null"

    .line 441
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLevelNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/android/mms/Log;->sLevelNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/Log;->sLevelNames:[Ljava/lang/String;

    .line 68
    :cond_0
    sget-object v0, Lcom/android/mms/Log;->sLevelNames:[Ljava/lang/String;

    return-object v0
.end method

.method public static getLogTrigger()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "*#log#"

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .parameter "tr"

    .prologue
    .line 108
    invoke-static {p0}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 166
    sget v0, Lcom/android/mms/Log;->sLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 170
    sget-object v0, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 175
    sget v0, Lcom/android/mms/Log;->sLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 179
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    :cond_0
    return-void
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 1
    .parameter "TAG"
    .parameter "LEVEL"

    .prologue
    .line 101
    const-string v0, "Mms:transaction"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPrintSecured()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/android/mms/Log;->sPrintSecured:Z

    return v0
.end method

.method private static isSugar(C)Z
    .locals 1
    .parameter "chr"

    .prologue
    .line 513
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/mms/Log;->safeFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public static varargs logWithTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .parameter "TAG"
    .parameter "format"
    .parameter "args"

    .prologue
    const/4 v5, 0x7

    .line 224
    sget v6, Lcom/android/mms/Log;->sLevel:I

    if-gtz v6, :cond_3

    .line 225
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 226
    .local v0, current:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 227
    .local v4, stack:[Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v6, "] "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-static {p1, p2}, Lcom/android/mms/Log;->safeFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v6, " <- "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    array-length v6, v4

    if-le v6, v5, :cond_1

    .line 237
    .local v5, stop:I
    :goto_0
    const/4 v1, 0x3

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 238
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, methodName:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    add-int/lit8 v6, v1, 0x1

    if-eq v6, v5, :cond_0

    .line 242
    const-string v6, " <- "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 236
    .end local v1           #i:I
    .end local v2           #methodName:Ljava/lang/String;
    .end local v5           #stop:I
    :cond_1
    array-length v5, v4

    goto :goto_0

    .line 245
    .restart local v1       #i:I
    .restart local v5       #stop:I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v0           #current:Ljava/lang/Thread;
    .end local v1           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    .end local v4           #stack:[Ljava/lang/StackTraceElement;
    .end local v5           #stop:I
    :cond_3
    return-void
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 429
    sget v0, Lcom/android/mms/Log;->sLevel:I

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    sget-object v0, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 128
    sget-boolean v0, Lcom/android/mms/Log;->sPrintSecured:Z

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    return-void
.end method

.method private static varargs safeFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 266
    const-string v1, ""

    .line 268
    .local v1, formatted:Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 277
    :goto_0
    return-object v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, ex:Ljava/util/IllegalFormatException;
    const-string v2, "Mms/Log"

    invoke-virtual {v0}, Ljava/util/IllegalFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    move-object v1, p0

    .line 275
    goto :goto_0

    .line 272
    .end local v0           #ex:Ljava/util/IllegalFormatException;
    :catch_1
    move-exception v0

    .line 273
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "Mms/Log"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, ""

    goto :goto_0
.end method

.method public static setStartTime()V
    .locals 2

    .prologue
    .line 400
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    sput-wide v0, Lcom/android/mms/Log;->sStartTime:D

    .line 401
    return-void
.end method

.method public static start(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[start]    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public static t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 407
    return-void
.end method

.method public static toast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toast log:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 481
    return-void
.end method

.method public static usedTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 414
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-double v0, v4

    .line 416
    .local v0, currentTime:D
    sget-wide v4, Lcom/android/mms/Log;->sStartTime:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 417
    invoke-static {}, Lcom/android/mms/Log;->setStartTime()V

    .line 418
    sget-wide v0, Lcom/android/mms/Log;->sStartTime:D

    .line 421
    :cond_0
    sget-wide v4, Lcom/android/mms/Log;->sStartTime:D

    sub-double v4, v0, v4

    const-wide v6, 0x412e848000000000L

    div-double v2, v4, v6

    .line 422
    .local v2, diffTime:D
    sput-wide v0, Lcom/android/mms/Log;->sStartTime:D

    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " consume time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 425
    sget-object v4, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v4, v5, v6}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 117
    sget v0, Lcom/android/mms/Log;->sLevel:I

    if-gtz v0, :cond_0

    .line 121
    sget-object v0, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 137
    sget v0, Lcom/android/mms/Log;->sLevel:I

    if-gtz v0, :cond_0

    .line 141
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 185
    sget v0, Lcom/android/mms/Log;->sLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 189
    sget-object v0, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 194
    sget v0, Lcom/android/mms/Log;->sLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 198
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    :cond_0
    return-void
.end method
