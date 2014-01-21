.class public Lcom/android/mms/ui/MessagingPreferenceActivity$SMSCLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMSCLengthFilter"
.end annotation


# instance fields
.field private mMax:I

.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;I)V
    .locals 0
    .parameter
    .parameter "max"

    .prologue
    .line 2428
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$SMSCLengthFilter;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 2429
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 2430
    iput p2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$SMSCLengthFilter;->mMax:I

    .line 2431
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 2434
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 2435
    .local v2, expected:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2436
    .local v4, nLength:I
    const/4 v6, 0x0

    .line 2438
    .local v6, nSourceLength:I
    if-eqz p1, :cond_b

    .line 2439
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2440
    .local v1, chars:[C
    const-string v2, ""

    .line 2441
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_7

    .line 2442
    aget-char v0, v1, v3

    .line 2444
    .local v0, ch:C
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2445
    const/16 v7, 0x30

    if-lt v0, v7, :cond_0

    const/16 v7, 0x39

    if-le v0, v7, :cond_1

    :cond_0
    const/16 v7, 0x2b

    if-eq v0, v7, :cond_1

    const/16 v7, 0x2a

    if-eq v0, v7, :cond_1

    const/16 v7, 0x23

    if-ne v0, v7, :cond_2

    .line 2446
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2441
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2448
    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 2451
    :cond_3
    const/16 v7, 0x30

    if-lt v0, v7, :cond_4

    const/16 v7, 0x39

    if-le v0, v7, :cond_5

    :cond_4
    const/16 v7, 0x2b

    if-ne v0, v7, :cond_6

    .line 2452
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2454
    :cond_6
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 2458
    .end local v0           #ch:C
    :cond_7
    move-object p1, v2

    .line 2460
    const-string v2, ""

    .line 2461
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {p4, v8, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2462
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2463
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v8

    invoke-interface {p4, p6, v8}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2465
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 2466
    const-string v7, "+"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2467
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2470
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 2471
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 2473
    iget v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$SMSCLengthFilter;->mMax:I

    if-le v4, v7, :cond_b

    .line 2474
    iget v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$SMSCLengthFilter;->mMax:I

    sub-int v7, v4, v7

    sub-int v5, v6, v7

    .line 2476
    .local v5, nPasteLength:I
    if-ltz v5, :cond_9

    .line 2477
    const/4 v7, 0x0

    invoke-interface {p1, v7, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2482
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2483
    const-string v7, ""

    .line 2491
    .end local v1           #chars:[C
    .end local v3           #i:I
    .end local v5           #nPasteLength:I
    :goto_3
    return-object v7

    .line 2479
    .restart local v1       #chars:[C
    .restart local v3       #i:I
    .restart local v5       #nPasteLength:I
    :cond_9
    const-string v2, ""

    goto :goto_2

    :cond_a
    move-object v7, v2

    .line 2485
    goto :goto_3

    .end local v1           #chars:[C
    .end local v3           #i:I
    .end local v5           #nPasteLength:I
    :cond_b
    move-object v7, p1

    .line 2491
    goto :goto_3
.end method
