.class public Lcom/android/mms/transaction/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final ACCEPT_LANG_FOR_US_LOCALE:Ljava/lang/String; = "en-US"

.field private static final HDR_KEY_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HDR_KEY_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HDR_VALUE_ACCEPT:Ljava/lang/String; = "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String; = null

.field public static final HTTP_GET_METHOD:I = 0x2

.field public static final HTTP_POST_METHOD:I = 0x1

.field public static final HTTP_TRANSACTION_FAIL_ID:I = 0x38d

.field public static final MESSAGE_HTTP_CONNECTION_ERROR:Ljava/lang/String; = "httperror"

.field private static final MMS_READ_BUFFER:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/HttpUtils;->getCurrentAcceptLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method private static addLGUHttpHeader(Landroid/content/Context;Lorg/apache/http/HttpRequest;)V
    .locals 14
    .parameter "context"
    .parameter "req"

    .prologue
    .line 559
    const-string v8, ""

    .line 560
    .local v8, line1Number:Ljava/lang/String;
    const-string v6, ""

    .line 562
    .local v6, korPhoneNum:Ljava/lang/String;
    :try_start_0
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 567
    :goto_0
    const/4 v11, 0x4

    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "+82"

    aput-object v12, v0, v11

    const/4 v11, 0x1

    const-string v12, "082"

    aput-object v12, v0, v11

    const/4 v11, 0x2

    const-string v12, "0082"

    aput-object v12, v0, v11

    const/4 v11, 0x3

    const-string v12, "82"

    aput-object v12, v0, v11

    .line 568
    .local v0, ROAMING_NUM:[Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 569
    move-object v2, v0

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v3, v2, v5

    .line 570
    .local v3, checkNum:Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_3

    .line 571
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 578
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #checkNum:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 579
    move-object v6, v8

    .line 582
    :cond_1
    const-string v11, "x-pcs-mdn"

    invoke-interface {p1, v11, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-static {p0}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 585
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 587
    .local v1, activePhone:I
    const/4 v11, 0x2

    if-ne v11, v1, :cond_4

    .line 588
    const-string v11, "ril.cdma.sid"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 589
    .local v10, regist_SID:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 590
    const-string v11, "SID"

    invoke-interface {p1, v11, v10}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .end local v1           #activePhone:I
    .end local v10           #regist_SID:Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 563
    .end local v0           #ROAMING_NUM:[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 564
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "Mms:transaction"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HttpUtils] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 569
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v0       #ROAMING_NUM:[Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v3       #checkNum:Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 593
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #checkNum:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .restart local v1       #activePhone:I
    :cond_4
    const-string v11, "gsm.operator.numeric"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 594
    .local v9, regist_MMC_MNC:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 595
    const-string v11, "Device-MCC_MNC"

    invoke-interface {p1, v11, v9}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 547
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/HttpUtils;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 552
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "langCode"

    .prologue
    .line 529
    if-nez p0, :cond_1

    .line 530
    const/4 p0, 0x0

    .line 542
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 532
    .restart local p0
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    const-string p0, "he"

    goto :goto_0

    .line 535
    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    const-string p0, "id"

    goto :goto_0

    .line 538
    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const-string p0, "yi"

    goto :goto_0
.end method

.method protected static createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .locals 7
    .parameter "context"

    .prologue
    .line 482
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, userAgent:Ljava/lang/String;
    invoke-static {v3, p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 484
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 485
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpSocketTimeout()I

    move-result v2

    .line 494
    .local v2, soTimeout:I
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpUtils] createHttpClient w/ socket timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", UA="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 498
    return-object v0
.end method

.method public static getCurrentAcceptLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .parameter "locale"

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 513
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 514
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 515
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_0
    const-string v1, "en-US"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_1
    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 5
    .parameter "exception"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HttpUtils] HttpConnection Exception url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/4 v1, 0x0

    .line 452
    .local v1, errorString:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 453
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HttpUtils] cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 457
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 458
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HttpUtils] message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 462
    :cond_1
    if-nez v1, :cond_3

    .line 463
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    const v3, 0x7f0c01af

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 471
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 472
    .local v0, e:Ljava/io/IOException;
    if-eqz v1, :cond_4

    .line 473
    new-instance v0, Ljava/io/IOException;

    .end local v0           #e:Ljava/io/IOException;
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 477
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 478
    throw v0

    .line 465
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    const-string v2, "Not Found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 466
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    const v3, 0x7f0c01ae

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    goto :goto_0

    .line 475
    .restart local v0       #e:Ljava/io/IOException;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .end local v0           #e:Ljava/io/IOException;
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .restart local v0       #e:Ljava/io/IOException;
    goto :goto_1
.end method

.method protected static httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;ILandroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B
    .locals 41
    .parameter "context"
    .parameter "token"
    .parameter "url"
    .parameter "pdu"
    .parameter "method"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .parameter "client"
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    if-nez p3, :cond_0

    .line 124
    new-instance v37, Ljava/lang/IllegalArgumentException;

    const-string v38, "URL must not be null."

    invoke-direct/range {v37 .. v38}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 127
    :cond_0
    const-string v37, "Mms:transaction"

    const-string v38, "[HttpUtils] httpConnection: params list"

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v37, "Mms:transaction"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HttpUtils] \ttoken\t\t= "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v38, "Mms:transaction"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HttpUtils] \tmethod\t\t= "

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v37, 0x1

    move/from16 v0, p5

    move/from16 v1, v37

    if-ne v0, v1, :cond_5

    const-string v37, "POST"

    :goto_0
    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v37, "Mms:transaction"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HttpUtils] \tisProxySet\t= "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v37, "Mms:transaction"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HttpUtils] \tproxyHost\t= "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v37, "Mms:transaction"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HttpUtils] \tproxyPort\t= "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v37, "Mms:transaction"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HttpUtils] \turl\t\t= "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :try_start_0
    const-string v37, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/ConnectivityManager;

    .line 146
    .local v19, mConnMgr:Landroid/net/ConnectivityManager;
    const/16 v37, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v37

    if-eqz v37, :cond_7

    invoke-virtual/range {v19 .. v19}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v37

    if-eqz v37, :cond_7

    const/4 v15, 0x1

    .line 150
    .local v15, isUsingMobile:Z
    :goto_1
    const/4 v14, 0x0

    .line 156
    .local v14, isImsRegisteredOverWifi:Z
    if-eqz v15, :cond_1

    const/16 v37, 0x1

    move/from16 v0, v37

    if-ne v14, v0, :cond_2

    :cond_1
    const/16 v37, 0x1

    move/from16 v0, p5

    move/from16 v1, v37

    if-ne v0, v1, :cond_2

    .line 158
    const-string v37, "https"

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_2

    const-string v37, "http"

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_2

    .line 159
    const-string v37, "http"

    const-string v38, "https"

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 160
    const-string v37, "Mms:transaction"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HttpUtils] force https, new url: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_2
    new-instance v12, Ljava/net/URI;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 177
    .local v12, hostUrl:Ljava/net/URI;
    const-string v29, "http"

    .line 180
    .local v29, schemeName:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v29

    .line 182
    new-instance v32, Lorg/apache/http/HttpHost;

    invoke-virtual {v12}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v37

    invoke-virtual {v12}, Ljava/net/URI;->getPort()I

    move-result v38

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    move/from16 v2, v38

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    .local v32, target:Lorg/apache/http/HttpHost;
    if-nez p9, :cond_3

    .line 187
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/HttpUtils;->createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object p9

    .line 188
    const-string v37, "Mms:transaction"

    const-string v38, "[HttpUtils] create httpClient"

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_3
    packed-switch p5, :pswitch_data_0

    .line 212
    const-string v37, "Mms:transaction"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HttpUtils] Unknown HTTP method: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ". Must be one of POST["

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "] or GET["

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const/16 v39, 0x2

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "]."

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_a

    .line 215
    const/4 v5, 0x0

    .line 440
    if-eqz p9, :cond_4

    .line 441
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 444
    .end local v12           #hostUrl:Ljava/net/URI;
    .end local v14           #isImsRegisteredOverWifi:Z
    .end local v15           #isUsingMobile:Z
    .end local v19           #mConnMgr:Landroid/net/ConnectivityManager;
    .end local v29           #schemeName:Ljava/lang/String;
    .end local v32           #target:Lorg/apache/http/HttpHost;
    :cond_4
    :goto_2
    return-object v5

    .line 129
    :cond_5
    const/16 v37, 0x2

    move/from16 v0, p5

    move/from16 v1, v37

    if-ne v0, v1, :cond_6

    const-string v37, "GET"

    goto/16 :goto_0

    :cond_6
    const-string v37, "UNKNOWN"

    goto/16 :goto_0

    .line 146
    .restart local v19       #mConnMgr:Landroid/net/ConnectivityManager;
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 193
    .restart local v12       #hostUrl:Ljava/net/URI;
    .restart local v14       #isImsRegisteredOverWifi:Z
    .restart local v15       #isUsingMobile:Z
    .restart local v29       #schemeName:Ljava/lang/String;
    .restart local v32       #target:Lorg/apache/http/HttpHost;
    :pswitch_0
    :try_start_1
    new-instance v10, Lcom/android/mms/transaction/ProgressCallbackEntity;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/mms/transaction/ProgressCallbackEntity;-><init>(Landroid/content/Context;J[B)V

    .line 196
    .local v10, entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    const-string v37, "application/vnd.wap.mms-message"

    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Lcom/android/mms/transaction/ProgressCallbackEntity;->setContentType(Ljava/lang/String;)V

    .line 199
    if-nez p10, :cond_d

    .line 200
    new-instance v25, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 201
    .local v25, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v37, "Mms:transaction"

    const-string v38, "[HttpUtils] create HttpPost"

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_3
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 206
    move-object/from16 p10, v25

    .line 219
    .end local v10           #entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    .end local v25           #post:Lorg/apache/http/client/methods/HttpPost;
    :goto_4
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v24

    .line 220
    .local v24, params:Lorg/apache/http/params/HttpParams;
    if-eqz p6, :cond_8

    .line 221
    new-instance v37, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v37

    move-object/from16 v1, p7

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 237
    :cond_8
    move-object/from16 v0, p10

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 240
    const-string v37, "Accept"

    const-string v38, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    move-object/from16 v0, p10

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfTagName()Ljava/lang/String;

    move-result-object v35

    .line 243
    .local v35, xWapProfileTagName:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object v36

    .line 245
    .local v36, xWapProfileUrl:Ljava/lang/String;
    if-eqz v36, :cond_9

    .line 246
    const-string v37, "Mms:transaction"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HttpUtils] httpConn: xWapProfUrl="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p10

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_9
    if-eqz p6, :cond_a

    .line 283
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParams()Ljava/lang/String;

    move-result-object v11

    .line 285
    .local v11, extraHttpParams:Ljava/lang/String;
    if-eqz v11, :cond_f

    .line 286
    const-string v37, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v18

    .line 289
    .local v18, line1Number:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParamsLine1Key()Ljava/lang/String;

    move-result-object v17

    .line 290
    .local v17, line1Key:Ljava/lang/String;
    const-string v37, "\\|"

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 292
    .local v22, paramList:[Ljava/lang/String;
    move-object/from16 v4, v22

    .local v4, arr$:[Ljava/lang/String;
    array-length v0, v4

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_5
    move/from16 v0, v16

    if-ge v13, v0, :cond_f

    aget-object v23, v4, v13

    .line 293
    .local v23, paramPair:Ljava/lang/String;
    const-string v37, ":"

    const/16 v38, 0x2

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 295
    .local v30, splitPair:[Ljava/lang/String;
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v37, v0

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_c

    .line 296
    const/16 v37, 0x0

    aget-object v37, v30, v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 297
    .local v20, name:Ljava/lang/String;
    const/16 v37, 0x1

    aget-object v37, v30, v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    .line 299
    .local v34, value:Ljava/lang/String;
    if-eqz v17, :cond_b

    if-eqz v18, :cond_b

    .line 300
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAuthMdn()Z

    move-result v37

    if-eqz v37, :cond_e

    .line 301
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "1"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    .line 306
    :cond_b
    :goto_6
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_c

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_c

    .line 307
    move-object/from16 v0, p10

    move-object/from16 v1, v20

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .end local v20           #name:Ljava/lang/String;
    .end local v34           #value:Ljava/lang/String;
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 203
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v11           #extraHttpParams:Ljava/lang/String;
    .end local v13           #i$:I
    .end local v16           #len$:I
    .end local v17           #line1Key:Ljava/lang/String;
    .end local v18           #line1Number:Ljava/lang/String;
    .end local v22           #paramList:[Ljava/lang/String;
    .end local v23           #paramPair:Ljava/lang/String;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v30           #splitPair:[Ljava/lang/String;
    .end local v35           #xWapProfileTagName:Ljava/lang/String;
    .end local v36           #xWapProfileUrl:Ljava/lang/String;
    .restart local v10       #entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    :cond_d
    move-object/from16 v0, p10

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v25, v0

    .restart local v25       #post:Lorg/apache/http/client/methods/HttpPost;
    goto/16 :goto_3

    .line 209
    .end local v10           #entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    .end local v25           #post:Lorg/apache/http/client/methods/HttpPost;
    :pswitch_1
    new-instance v27, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .end local p10
    .local v27, req:Lorg/apache/http/HttpRequest;
    move-object/from16 p10, v27

    .line 210
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    .restart local p10
    goto/16 :goto_4

    .line 303
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v11       #extraHttpParams:Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v16       #len$:I
    .restart local v17       #line1Key:Ljava/lang/String;
    .restart local v18       #line1Number:Ljava/lang/String;
    .restart local v20       #name:Ljava/lang/String;
    .restart local v22       #paramList:[Ljava/lang/String;
    .restart local v23       #paramPair:Ljava/lang/String;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    .restart local v30       #splitPair:[Ljava/lang/String;
    .restart local v34       #value:Ljava/lang/String;
    .restart local v35       #xWapProfileTagName:Ljava/lang/String;
    .restart local v36       #xWapProfileUrl:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v34

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    goto :goto_6

    .line 312
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v16           #len$:I
    .end local v17           #line1Key:Ljava/lang/String;
    .end local v18           #line1Number:Ljava/lang/String;
    .end local v20           #name:Ljava/lang/String;
    .end local v22           #paramList:[Ljava/lang/String;
    .end local v23           #paramPair:Ljava/lang/String;
    .end local v30           #splitPair:[Ljava/lang/String;
    .end local v34           #value:Ljava/lang/String;
    :cond_f
    const-string v37, "Accept-Language"

    sget-object v38, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, p10

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLguHttpHeader()Z

    move-result v37

    if-eqz v37, :cond_10

    .line 315
    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-static {v0, v1}, Lcom/android/mms/transaction/HttpUtils;->addLGUHttpHeader(Landroid/content/Context;Lorg/apache/http/HttpRequest;)V

    .line 318
    :cond_10
    move-object/from16 v0, p9

    move-object/from16 v1, v32

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v28

    .line 319
    .local v28, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v31

    .line 320
    .local v31, status:Lorg/apache/http/StatusLine;
    const-string v37, "Mms:transaction"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "StatusLine : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v37

    const/16 v38, 0xc8

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_12

    .line 351
    new-instance v37, Ljava/io/IOException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "HTTP error: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v37
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_a

    .line 421
    .end local v11           #extraHttpParams:Ljava/lang/String;
    .end local v12           #hostUrl:Ljava/net/URI;
    .end local v14           #isImsRegisteredOverWifi:Z
    .end local v15           #isUsingMobile:Z
    .end local v19           #mConnMgr:Landroid/net/ConnectivityManager;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v28           #response:Lorg/apache/http/HttpResponse;
    .end local v29           #schemeName:Ljava/lang/String;
    .end local v31           #status:Lorg/apache/http/StatusLine;
    .end local v32           #target:Lorg/apache/http/HttpHost;
    .end local v35           #xWapProfileTagName:Ljava/lang/String;
    .end local v36           #xWapProfileUrl:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 422
    .local v9, e:Ljava/net/URISyntaxException;
    :try_start_2
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 440
    if-eqz p9, :cond_11

    .line 441
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 444
    .end local v9           #e:Ljava/net/URISyntaxException;
    :cond_11
    :goto_7
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 353
    .restart local v11       #extraHttpParams:Ljava/lang/String;
    .restart local v12       #hostUrl:Ljava/net/URI;
    .restart local v14       #isImsRegisteredOverWifi:Z
    .restart local v15       #isUsingMobile:Z
    .restart local v19       #mConnMgr:Landroid/net/ConnectivityManager;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    .restart local v28       #response:Lorg/apache/http/HttpResponse;
    .restart local v29       #schemeName:Ljava/lang/String;
    .restart local v31       #status:Lorg/apache/http/StatusLine;
    .restart local v32       #target:Lorg/apache/http/HttpHost;
    .restart local v35       #xWapProfileTagName:Ljava/lang/String;
    .restart local v36       #xWapProfileUrl:Ljava/lang/String;
    :cond_12
    :try_start_3
    const-string v37, "Mms:transaction"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HttpUtils] http response "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_a

    move-result-object v10

    .line 357
    .local v10, entity:Lorg/apache/http/HttpEntity;
    const/4 v5, 0x0

    .line 358
    .local v5, body:[B
    if-eqz v10, :cond_18

    .line 360
    :try_start_4
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v37

    const-wide/16 v39, 0x0

    cmp-long v37, v37, v39

    if-lez v37, :cond_13

    .line 361
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v37

    move-wide/from16 v0, v37

    long-to-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v5, v0, [B

    .line 362
    new-instance v8, Ljava/io/DataInputStream;

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-direct {v8, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 364
    .local v8, dis:Ljava/io/DataInputStream;
    :try_start_5
    invoke-virtual {v8, v5}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 367
    :try_start_6
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 373
    .end local v8           #dis:Ljava/io/DataInputStream;
    :cond_13
    :goto_8
    :try_start_7
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v37

    if-eqz v37, :cond_17

    .line 374
    const-string v37, "Mms:transaction"

    const-string v38, "[HttpUtils] httpConnection: transfer encoding is chunked"

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v7

    .line 376
    .local v7, bytesTobeRead:I
    new-array v0, v7, [B

    move-object/from16 v33, v0

    .line 377
    .local v33, tempBody:[B
    new-instance v8, Ljava/io/DataInputStream;

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-direct {v8, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 379
    .restart local v8       #dis:Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 380
    .local v6, bytesRead:I
    const/16 v21, 0x0

    .line 381
    .local v21, offset:I
    const/16 v26, 0x0

    .line 384
    .local v26, readError:Z
    :cond_14
    :try_start_8
    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1, v7}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    move-result v6

    .line 391
    if-lez v6, :cond_15

    .line 392
    sub-int/2addr v7, v6

    .line 393
    add-int v21, v21, v6

    .line 395
    :cond_15
    if-ltz v6, :cond_16

    if-gtz v7, :cond_14

    .line 396
    :cond_16
    :goto_9
    const/16 v37, -0x1

    move/from16 v0, v37

    if-ne v6, v0, :cond_1a

    if-lez v21, :cond_1a

    if-nez v26, :cond_1a

    .line 399
    :try_start_9
    move/from16 v0, v21

    new-array v5, v0, [B

    .line 400
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v21

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    const-string v37, "Mms:transaction"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HttpUtils] httpConnection: Chunked response length ["

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "]"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 408
    :goto_a
    :try_start_a
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 415
    .end local v6           #bytesRead:I
    .end local v7           #bytesTobeRead:I
    .end local v8           #dis:Ljava/io/DataInputStream;
    .end local v21           #offset:I
    .end local v26           #readError:Z
    .end local v33           #tempBody:[B
    :cond_17
    :goto_b
    if-eqz v10, :cond_18

    .line 416
    :try_start_b
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_a

    .line 440
    :cond_18
    if-eqz p9, :cond_4

    .line 441
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_2

    .line 368
    .restart local v8       #dis:Ljava/io/DataInputStream;
    :catch_1
    move-exception v9

    .line 369
    .local v9, e:Ljava/io/IOException;
    :try_start_c
    const-string v37, "Mms:transaction"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HttpUtils] Error closing input stream: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_8

    .line 415
    .end local v8           #dis:Ljava/io/DataInputStream;
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v37

    if-eqz v10, :cond_19

    .line 416
    :try_start_d
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_19
    throw v37
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_a

    .line 423
    .end local v5           #body:[B
    .end local v10           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #extraHttpParams:Ljava/lang/String;
    .end local v12           #hostUrl:Ljava/net/URI;
    .end local v14           #isImsRegisteredOverWifi:Z
    .end local v15           #isUsingMobile:Z
    .end local v19           #mConnMgr:Landroid/net/ConnectivityManager;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v28           #response:Lorg/apache/http/HttpResponse;
    .end local v29           #schemeName:Ljava/lang/String;
    .end local v31           #status:Lorg/apache/http/StatusLine;
    .end local v32           #target:Lorg/apache/http/HttpHost;
    .end local v35           #xWapProfileTagName:Ljava/lang/String;
    .end local v36           #xWapProfileUrl:Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 424
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_e
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 440
    if-eqz p9, :cond_11

    .line 441
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_7

    .line 366
    .end local v9           #e:Ljava/lang/IllegalStateException;
    .restart local v5       #body:[B
    .restart local v8       #dis:Ljava/io/DataInputStream;
    .restart local v10       #entity:Lorg/apache/http/HttpEntity;
    .restart local v11       #extraHttpParams:Ljava/lang/String;
    .restart local v12       #hostUrl:Ljava/net/URI;
    .restart local v14       #isImsRegisteredOverWifi:Z
    .restart local v15       #isUsingMobile:Z
    .restart local v19       #mConnMgr:Landroid/net/ConnectivityManager;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    .restart local v28       #response:Lorg/apache/http/HttpResponse;
    .restart local v29       #schemeName:Ljava/lang/String;
    .restart local v31       #status:Lorg/apache/http/StatusLine;
    .restart local v32       #target:Lorg/apache/http/HttpHost;
    .restart local v35       #xWapProfileTagName:Ljava/lang/String;
    .restart local v36       #xWapProfileUrl:Ljava/lang/String;
    :catchall_1
    move-exception v37

    .line 367
    :try_start_f
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    .line 370
    :goto_c
    :try_start_10
    throw v37

    .line 368
    :catch_3
    move-exception v9

    .line 369
    .local v9, e:Ljava/io/IOException;
    const-string v38, "Mms:transaction"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "[HttpUtils] Error closing input stream: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_c

    .line 385
    .end local v9           #e:Ljava/io/IOException;
    .restart local v6       #bytesRead:I
    .restart local v7       #bytesTobeRead:I
    .restart local v21       #offset:I
    .restart local v26       #readError:Z
    .restart local v33       #tempBody:[B
    :catch_4
    move-exception v9

    .line 386
    .restart local v9       #e:Ljava/io/IOException;
    const/16 v26, 0x1

    .line 387
    :try_start_11
    const-string v37, "Mms:transaction"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HttpUtils] httpConnection: error reading input stream"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/16 :goto_9

    .line 407
    .end local v9           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v37

    .line 408
    :try_start_12
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 411
    :goto_d
    :try_start_13
    throw v37
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 404
    :cond_1a
    :try_start_14
    const-string v37, "Mms:transaction"

    const-string v38, "[HttpUtils] httpConnection: Response entity too large or empty"

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto/16 :goto_a

    .line 409
    :catch_5
    move-exception v9

    .line 410
    .restart local v9       #e:Ljava/io/IOException;
    :try_start_15
    const-string v37, "Mms:transaction"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HttpUtils] Error closing input stream: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 409
    .end local v9           #e:Ljava/io/IOException;
    :catch_6
    move-exception v9

    .line 410
    .restart local v9       #e:Ljava/io/IOException;
    const-string v38, "Mms:transaction"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "[HttpUtils] Error closing input stream: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_d

    .line 425
    .end local v5           #body:[B
    .end local v6           #bytesRead:I
    .end local v7           #bytesTobeRead:I
    .end local v8           #dis:Ljava/io/DataInputStream;
    .end local v9           #e:Ljava/io/IOException;
    .end local v10           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #extraHttpParams:Ljava/lang/String;
    .end local v12           #hostUrl:Ljava/net/URI;
    .end local v14           #isImsRegisteredOverWifi:Z
    .end local v15           #isUsingMobile:Z
    .end local v19           #mConnMgr:Landroid/net/ConnectivityManager;
    .end local v21           #offset:I
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v26           #readError:Z
    .end local v28           #response:Lorg/apache/http/HttpResponse;
    .end local v29           #schemeName:Ljava/lang/String;
    .end local v31           #status:Lorg/apache/http/StatusLine;
    .end local v32           #target:Lorg/apache/http/HttpHost;
    .end local v33           #tempBody:[B
    .end local v35           #xWapProfileTagName:Ljava/lang/String;
    .end local v36           #xWapProfileUrl:Ljava/lang/String;
    :catch_7
    move-exception v9

    .line 426
    .local v9, e:Ljava/lang/IllegalArgumentException;
    :try_start_16
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 440
    if-eqz p9, :cond_11

    .line 441
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_7

    .line 427
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v9

    .line 429
    .local v9, e:Ljava/net/SocketException;
    :try_start_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v37

    const-string v38, "SKT"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1b

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v37

    if-eqz v37, :cond_1b

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/TelephonyUtils;->getPhoneServiceState(Landroid/content/Context;)I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1b

    .line 431
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->showPDPResetDialog(Landroid/content/Context;)V

    .line 434
    :cond_1b
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 440
    if-eqz p9, :cond_11

    .line 441
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_7

    .line 435
    .end local v9           #e:Ljava/net/SocketException;
    :catch_9
    move-exception v9

    .line 436
    .local v9, e:Ljava/lang/Exception;
    :try_start_18
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 440
    if-eqz p9, :cond_11

    .line 441
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_7

    .line 437
    .end local v9           #e:Ljava/lang/Exception;
    :catch_a
    move-exception v9

    .line 438
    .local v9, e:Ljava/lang/OutOfMemoryError;
    const/16 v37, 0x0

    :try_start_19
    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 440
    if-eqz p9, :cond_11

    .line 441
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_7

    .line 440
    .end local v9           #e:Ljava/lang/OutOfMemoryError;
    :catchall_3
    move-exception v37

    if-eqz p9, :cond_1c

    .line 441
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_1c
    throw v37

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
