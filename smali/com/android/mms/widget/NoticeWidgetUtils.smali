.class public Lcom/android/mms/widget/NoticeWidgetUtils;
.super Ljava/lang/Object;
.source "NoticeWidgetUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormattedDate(J)Ljava/lang/String;
    .locals 4
    .parameter "time"

    .prologue
    .line 10
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 12
    .local v1, date:Ljava/util/Date;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 13
    .local v0, currentLanguage:Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy.MM.dd  aa hh:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 19
    .local v2, outSDF:Ljava/text/SimpleDateFormat;
    :goto_0
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 16
    .end local v2           #outSDF:Ljava/text/SimpleDateFormat;
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy.MM.dd  hh:mm aa"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v2       #outSDF:Ljava/text/SimpleDateFormat;
    goto :goto_0
.end method
