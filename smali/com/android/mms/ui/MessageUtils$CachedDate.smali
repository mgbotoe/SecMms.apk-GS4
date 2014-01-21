.class Lcom/android/mms/ui/MessageUtils$CachedDate;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedDate"
.end annotation


# static fields
.field private static mLocale:Ljava/lang/String;

.field private static s24HR:Z

.field private static sDateTime:Ljava/lang/String;

.field private static sFormatFlags:I

.field private static sOrder:[C

.field private static sWhen:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4426
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/mms/ui/MessageUtils$CachedDate;->sWhen:J

    .line 4427
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/MessageUtils$CachedDate;->sFormatFlags:I

    .line 4428
    const/4 v0, 0x3

    new-array v0, v0, [C

    sput-object v0, Lcom/android/mms/ui/MessageUtils$CachedDate;->sOrder:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4424
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(JI[C)Z
    .locals 5
    .parameter "when"
    .parameter "formatFlags"
    .parameter "order"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4434
    sget-wide v3, Lcom/android/mms/ui/MessageUtils$CachedDate;->sWhen:J

    cmp-long v3, p0, v3

    if-eqz v3, :cond_1

    .line 4456
    :cond_0
    :goto_0
    return v1

    .line 4436
    :cond_1
    if-nez p3, :cond_2

    .line 4437
    sget-object v3, Lcom/android/mms/ui/MessageUtils$CachedDate;->sOrder:[C

    if-nez v3, :cond_0

    move v1, v2

    .line 4438
    goto :goto_0

    .line 4443
    :cond_2
    sget v3, Lcom/android/mms/ui/MessageUtils$CachedDate;->sFormatFlags:I

    if-ne p2, v3, :cond_0

    .line 4445
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p3

    if-ge v0, v3, :cond_3

    .line 4446
    aget-char v3, p3, v0

    sget-object v4, Lcom/android/mms/ui/MessageUtils$CachedDate;->sOrder:[C

    aget-char v4, v4, v0

    if-ne v3, v4, :cond_0

    .line 4445
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4451
    :cond_3
    sget-boolean v3, Lcom/android/mms/ui/MessageUtils$CachedDate;->s24HR:Z

    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 4454
    sget-object v3, Lcom/android/mms/ui/MessageUtils$CachedDate;->mLocale:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 4456
    goto :goto_0
.end method

.method public static getDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4469
    sget-object v0, Lcom/android/mms/ui/MessageUtils$CachedDate;->sDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public static update(JI[CLjava/lang/String;)V
    .locals 1
    .parameter "when"
    .parameter "formatFlags"
    .parameter "order"
    .parameter "dateTime"

    .prologue
    .line 4460
    sput-wide p0, Lcom/android/mms/ui/MessageUtils$CachedDate;->sWhen:J

    .line 4461
    sput p2, Lcom/android/mms/ui/MessageUtils$CachedDate;->sFormatFlags:I

    .line 4462
    sput-object p3, Lcom/android/mms/ui/MessageUtils$CachedDate;->sOrder:[C

    .line 4463
    sput-object p4, Lcom/android/mms/ui/MessageUtils$CachedDate;->sDateTime:Ljava/lang/String;

    .line 4464
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/ui/MessageUtils$CachedDate;->s24HR:Z

    .line 4465
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils$CachedDate;->mLocale:Ljava/lang/String;

    .line 4466
    return-void
.end method
