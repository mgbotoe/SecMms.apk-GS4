.class public Lcom/android/mms/ui/VMessage;
.super Ljava/lang/Object;
.source "VMessage.java"


# static fields
.field public static final BEGIN_VBODY:Ljava/lang/String; = "BEGIN:VBODY"

.field public static final BEGIN_VCARD:Ljava/lang/String; = "BEGIN:VCARD"

.field public static final BEGIN_VENV:Ljava/lang/String; = "BEGIN:VENV"

.field public static final BEGIN_VMSG:Ljava/lang/String; = "BEGIN:VMSG"

.field public static final DATE_VMSG:Ljava/lang/String; = "Date:"

.field public static final END_VBODY:Ljava/lang/String; = "END:VBODY"

.field public static final END_VCARD:Ljava/lang/String; = "END:VCARD"

.field public static final END_VENV:Ljava/lang/String; = "END:VENV"

.field public static final END_VMSG:Ljava/lang/String; = "END:VMSG"

.field public static final FNAME_UTF8_VCARD:Ljava/lang/String; = "FN;CHARSET=UTF-8:"

.field public static final FNAME_VCARD:Ljava/lang/String; = "FN:"

.field public static final KEY_BODY:Ljava/lang/String; = "body"

.field public static final KEY_DATE:Ljava/lang/String; = "date"

.field private static final LOG_TAG:Ljava/lang/String; = "VMessage"

.field public static final NAME_UTF8_VCARD:Ljava/lang/String; = "N;CHARSET=UTF-8:"

.field public static final NAME_VCARD:Ljava/lang/String; = "N:"

.field private static final ROW_VMSG_BODY:I = 0x5

.field private static final ROW_VMSG_DATE:I = 0x4

.field private static final ROW_VMSG_INBOX_ADDR:I = 0x2

.field private static final ROW_VMSG_SENT_ADDR:I = 0x3

.field private static final ROW_VMSG_TYPE:I = 0x0

.field public static final SUBJECT_VMSG:Ljava/lang/String; = "Subject:"

.field public static final TEL_VCARD:Ljava/lang/String; = "TEL;"

.field public static final VERSION_VCARD:Ljava/lang/String; = "VERSION:2.1"

.field public static final VERSION_VMSG:Ljava/lang/String; = "VERSION:1.1"

.field private static final VMSG_ATTR_CHARSET_PROPERTY:Ljava/lang/String; = "CHARSET"

.field private static final VMSG_ATTR_ENCODING_BASE64_V21:Ljava/lang/String; = "ENCODING=BASE64"

.field private static final VMSG_ATTR_ENCODING_BASE64_V30:Ljava/lang/String; = "ENCODING=b"

.field private static final VMSG_ATTR_ENCODING_QP:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE"

.field private static final VMSG_ATTR_LANGUAGE_PROPERTY:Ljava/lang/String; = "LANGUAGE"

.field public static final VMSG_BODY_PROPERTY_DATE:Ljava/lang/String; = "Date"

.field public static final VMSG_BODY_PROPERTY_FROM:Ljava/lang/String; = "From"

.field public static final VMSG_BODY_PROPERTY_SUBJECT:Ljava/lang/String; = "Subject"

.field public static final VMSG_BODY_PROPERTY_TO:Ljava/lang/String; = "To"

.field private static final VMSG_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field private static final VMSG_INDICATION_MESSAGE_TYPE:Ljava/lang/String; = "X-IRMC-TYPE"

.field private static final VMSG_INDICATION_MESSAGE_TYPE_INET:Ljava/lang/String; = "INET"

.field private static final VMSG_INDICATION_MESSAGE_TYPE_MSG:Ljava/lang/String; = "MSG"

.field private static final VMSG_INDICATION_MSG_BOX:Ljava/lang/String; = "X-IRMC-BOX"

.field private static final VMSG_INDICATION_MSG_BOX_DRAFT:Ljava/lang/String; = "DRAFT"

.field private static final VMSG_INDICATION_MSG_BOX_INBOX:Ljava/lang/String; = "INBOX"

.field private static final VMSG_INDICATION_MSG_BOX_SENT:Ljava/lang/String; = "SENT"

.field private static final VMSG_INDICATION_READ_STATUS:Ljava/lang/String; = "X-IRMC-STATUS"

.field private static final VMSG_INDICATION_READ_STATUS_READ:Ljava/lang/String; = "READ"

.field private static final VMSG_INDICATION_READ_STATUS_UNREAD:Ljava/lang/String; = "UNREAD"

.field private static mNewLine:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private needCharset:Z

.field strBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-string v0, "\r\n"

    sput-object v0, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/VMessage;->strBuilder:Ljava/lang/StringBuilder;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/VMessage;->strBuilder:Ljava/lang/StringBuilder;

    .line 113
    iput-object p1, p0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method private escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "unescaped"

    .prologue
    .line 670
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 671
    const-string v5, ""

    .line 718
    :goto_0
    return-object v5

    .line 674
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 675
    .local v4, tmpBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 676
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 677
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 678
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_0

    .line 713
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 676
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 680
    :sswitch_0
    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 681
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 685
    :sswitch_1
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_2

    .line 686
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 687
    .local v3, nextChar:C
    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    .line 697
    .end local v3           #nextChar:C
    :cond_2
    :sswitch_2
    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 705
    :sswitch_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 709
    :sswitch_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 718
    .end local v0           #ch:C
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 678
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x2c -> :sswitch_4
        0x3b -> :sswitch_0
        0x3c -> :sswitch_3
        0x3e -> :sswitch_3
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method private foldingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 1122
    if-nez p1, :cond_0

    .line 1123
    const-string v0, ""

    .line 1124
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\r\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    const-string v2, "=3D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, "=0D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "=0A"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private unfoldingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 1132
    if-nez p1, :cond_0

    .line 1133
    const-string v0, ""

    .line 1134
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\n"

    const-string v1, "\r\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "=3D"

    const-string v2, "="

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "=0D"

    const-string v2, "\r"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "=0A"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private vMessageBodyContent(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 9
    .parameter "msgItem"

    .prologue
    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v2, sResult:Ljava/lang/StringBuilder;
    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    .line 365
    .local v4, time:J
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "h:mma, yyyy MMM dd"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 366
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .line 367
    .local v1, date:Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    .line 368
    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 372
    :goto_0
    const/4 v0, 0x0

    .line 374
    .local v0, body_text:Ljava/lang/String;
    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/mms/ui/VMessage;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    iget-boolean v6, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 377
    const-string v6, "VMessage"

    const-string v7, "vMessageBodyContent: not supported INET type in current version .."

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Date:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v6, :cond_1

    const-string v6, "sms"

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 410
    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 411
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subject:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_1
    const-string v6, "sms"

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 416
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 370
    .end local v0           #body_text:Ljava/lang/String;
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 417
    .restart local v0       #body_text:Ljava/lang/String;
    :cond_4
    const-string v6, "mms"

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 419
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private vMessageBodyProperties(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 6
    .parameter "msgItem"

    .prologue
    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .local v3, sResult:Ljava/lang/StringBuilder;
    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 343
    const/4 v4, 0x0

    .line 358
    :goto_0
    return-object v4

    .line 345
    :cond_0
    const-string v4, "sms"

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 358
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 348
    :cond_2
    const-string v4, "mms"

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 351
    .local v1, e_str:Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHARSET="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 353
    .end local v2           #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private vMessageContent(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 3
    .parameter "msgItem"

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v0, sResult:Ljava/lang/StringBuilder;
    const-string v1, "BEGIN:VBODY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageBodyContent(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, "END:VBODY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private vMessageEnvelope(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 3
    .parameter "msgItem"

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v0, sResult:Ljava/lang/StringBuilder;
    const-string v1, "BEGIN:VENV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageRecipient(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageNestedEnvelope(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, "END:VENV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private vMessageNestedEnvelope(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 3
    .parameter "msgItem"

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .local v0, sResult:Ljava/lang/StringBuilder;
    const-string v1, "BEGIN:VENV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageContent(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, "END:VENV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private vMessageObject(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 8
    .parameter "msgItem"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v1, sResult:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    .line 129
    .local v0, mBoxId:I
    const-string v2, "BEGIN:VMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v2, "VERSION:1.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, "sms"

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    iget v2, p1, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    if-ne v2, v4, :cond_3

    .line 136
    const-string v2, "X-IRMC-STATUS:READ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    :goto_0
    if-eq v0, v4, :cond_1

    if-ne v0, v4, :cond_6

    .line 147
    :cond_1
    const-string v2, "X-IRMC-BOX:INBOX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_2
    :goto_1
    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_a

    .line 155
    iput-boolean v5, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    .line 156
    const-string v2, "X-IRMC-TYPE:MSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageOriginator(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageEnvelope(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v2, "END:VMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 138
    :cond_3
    const-string v2, "X-IRMC-STATUS:UNREAD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :cond_4
    const-string v2, "mms"

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    iget v2, p1, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    if-ne v2, v4, :cond_5

    .line 141
    const-string v2, "X-IRMC-STATUS:READ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 143
    :cond_5
    const-string v2, "X-IRMC-STATUS:UNREAD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 148
    :cond_6
    if-eq v0, v6, :cond_7

    if-ne v0, v6, :cond_8

    .line 149
    :cond_7
    const-string v2, "X-IRMC-BOX:SENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 150
    :cond_8
    if-eq v0, v7, :cond_9

    if-ne v0, v7, :cond_2

    .line 151
    :cond_9
    const-string v2, "X-IRMC-BOX:DRAFT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 163
    :cond_a
    iput-boolean v5, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    .line 164
    const-string v2, "X-IRMC-TYPE:MSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private vMessageOriginator(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 10
    .parameter "msgItem"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 176
    const/4 v5, 0x0

    .line 177
    .local v5, vcard:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, phone_number:Ljava/lang/String;
    const/4 v3, 0x0

    .line 179
    .local v3, phone_name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 183
    .local v1, composer:Lcom/android/mms/ui/VCardComposerMsg;
    if-nez p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-object v6

    .line 186
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    .line 188
    .local v2, mBoxId:I
    if-eq v2, v8, :cond_2

    if-ne v2, v8, :cond_6

    .line 189
    :cond_2
    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 190
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 196
    :goto_1
    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 198
    .local v0, cinfo:Lcom/android/mms/data/Contact;
    iget-boolean v7, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    if-ne v7, v8, :cond_3

    .line 199
    const-string v4, ""

    .line 200
    const-string v3, ""

    .line 203
    :cond_3
    if-nez v4, :cond_4

    if-eqz v3, :cond_0

    .line 206
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 209
    :cond_5
    new-instance v1, Lcom/android/mms/ui/VCardComposerMsg;

    .end local v1           #composer:Lcom/android/mms/ui/VCardComposerMsg;
    iget-object v6, p0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    const-string v7, "default"

    invoke-direct {v1, v6, v7, v9}, Lcom/android/mms/ui/VCardComposerMsg;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 211
    .restart local v1       #composer:Lcom/android/mms/ui/VCardComposerMsg;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 213
    invoke-virtual {v1, v9, v3, v4, v8}, Lcom/android/mms/ui/VCardComposerMsg;->composeVCardForEmail(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    :goto_2
    move-object v6, v5

    .line 227
    goto :goto_0

    .line 192
    .end local v0           #cinfo:Lcom/android/mms/data/Contact;
    :cond_6
    const-string v4, ""

    .line 193
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto :goto_1

    .line 220
    .restart local v0       #cinfo:Lcom/android/mms/data/Contact;
    :cond_7
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v3, v4, v8}, Lcom/android/mms/ui/VCardComposerMsg;->composeVCardForPhoneNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private vMessageRecipient(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 14
    .parameter "msgItem"

    .prologue
    .line 231
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v8, sResult:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 233
    .local v10, vcard:Ljava/lang/String;
    const/4 v0, 0x0

    .line 237
    .local v0, composer:Lcom/android/mms/ui/VCardComposerMsg;
    if-nez p1, :cond_0

    .line 238
    const/4 v11, 0x0

    .line 294
    :goto_0
    return-object v11

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v4

    .line 242
    .local v4, mBoxId:I
    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    aput-object v12, v2, v11

    .line 243
    .local v2, dests:[Ljava/lang/String;
    array-length v5, v2

    .line 245
    .local v5, mNumberOfDests:I
    if-nez v5, :cond_1

    .line 246
    const/4 v11, 0x0

    goto :goto_0

    .line 248
    :cond_1
    new-instance v0, Lcom/android/mms/ui/VCardComposerMsg;

    .end local v0           #composer:Lcom/android/mms/ui/VCardComposerMsg;
    iget-object v11, p0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    const-string v12, "default"

    const/4 v13, 0x0

    invoke-direct {v0, v11, v12, v13}, Lcom/android/mms/ui/VCardComposerMsg;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 250
    .restart local v0       #composer:Lcom/android/mms/ui/VCardComposerMsg;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_7

    .line 251
    aget-object v11, v2, v3

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, name_in_ct:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, ctname:Ljava/lang/String;
    const/4 v9, 0x0

    .line 254
    .local v9, to_number:Ljava/lang/String;
    aget-object v9, v2, v3

    .line 256
    if-eqz v7, :cond_4

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 257
    const-string v1, ""

    .line 261
    :goto_2
    const/4 v11, 0x1

    if-eq v4, v11, :cond_2

    const/4 v11, 0x1

    if-ne v4, v11, :cond_3

    .line 263
    :cond_2
    iget-object v11, p0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    const v12, 0x7f0c000d

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 264
    .local v6, meString:Ljava/lang/String;
    move-object v1, v6

    .line 265
    const-string v9, ""

    .line 268
    .end local v6           #meString:Ljava/lang/String;
    :cond_3
    iget-boolean v11, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 270
    const-string v1, ""

    .line 271
    const-string v9, ""

    .line 250
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 259
    :cond_4
    move-object v1, v7

    goto :goto_2

    .line 276
    :cond_5
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 278
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v1, v9, v12}, Lcom/android/mms/ui/VCardComposerMsg;->composeVCardForEmail(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 292
    :goto_4
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 285
    :cond_6
    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v1, v9, v12}, Lcom/android/mms/ui/VCardComposerMsg;->composeVCardForPhoneNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 294
    .end local v1           #ctname:Ljava/lang/String;
    .end local v7           #name_in_ct:Ljava/lang/String;
    .end local v9           #to_number:Ljava/lang/String;
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0
.end method


# virtual methods
.method public checkPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "prefix"

    .prologue
    const/4 v0, 0x0

    .line 1047
    const-string v1, "BEGIN:VMSG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    .line 1086
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1049
    .restart local p1
    :cond_1
    const-string v1, "VERSION:1.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    .line 1050
    goto :goto_0

    .line 1051
    :cond_2
    const-string v1, "BEGIN:VCARD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, v0

    .line 1052
    goto :goto_0

    .line 1053
    :cond_3
    const-string v1, "VERSION:2.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p1, v0

    .line 1054
    goto :goto_0

    .line 1055
    :cond_4
    const-string v1, "FN:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object p1, v0

    .line 1056
    goto :goto_0

    .line 1057
    :cond_5
    const-string v1, "FN;CHARSET=UTF-8:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object p1, v0

    .line 1058
    goto :goto_0

    .line 1059
    :cond_6
    const-string v1, "END:VCARD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object p1, v0

    .line 1060
    goto :goto_0

    .line 1061
    :cond_7
    const-string v1, "BEGIN:VENV"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object p1, v0

    .line 1062
    goto :goto_0

    .line 1063
    :cond_8
    const-string v1, "BEGIN:VBODY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object p1, v0

    .line 1064
    goto :goto_0

    .line 1065
    :cond_9
    const-string v1, "END:VBODY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object p1, v0

    .line 1066
    goto :goto_0

    .line 1067
    :cond_a
    const-string v1, "END:VENV"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object p1, v0

    .line 1068
    goto :goto_0

    .line 1069
    :cond_b
    const-string v1, "END:VMSG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object p1, v0

    .line 1070
    goto :goto_0

    .line 1071
    :cond_c
    const-string v1, "X-IRMC-STATUS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object p1, v0

    .line 1072
    goto :goto_0

    .line 1073
    :cond_d
    const-string v1, "X-IRMC-TYPE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object p1, v0

    .line 1074
    goto/16 :goto_0

    .line 1075
    :cond_e
    const-string v0, "X-IRMC-BOX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1076
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageMsgTypeParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1077
    :cond_f
    const-string v0, "N:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1078
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageNameParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1079
    :cond_10
    const-string v0, "TEL;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1080
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageTelParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1081
    :cond_11
    const-string v0, "Date:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1082
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageDateParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1083
    :cond_12
    const-string v0, "N;CHARSET=UTF-8:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageNameParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public createVMessage(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 2
    .parameter "msgItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, sResult:Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageObject(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    return-object v0
.end method

.method public readFileFromSDCard1(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 16
    .parameter "file"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 724
    const/4 v10, 0x0

    .line 725
    .local v10, is:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 726
    .local v8, ir:Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 728
    .local v3, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e

    .line 729
    .end local v10           #is:Ljava/io/InputStream;
    .local v11, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f

    .line 730
    .end local v8           #ir:Ljava/io/InputStreamReader;
    .local v9, ir:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10

    .line 732
    .end local v3           #br:Ljava/io/BufferedReader;
    .local v4, br:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v2, arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x6

    new-array v1, v14, [Ljava/lang/String;

    .line 737
    .local v1, VmsgString:[Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "INBOX"

    aput-object v15, v1, v14

    .line 739
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, tmp:Ljava/lang/String;
    if-eqz v13, :cond_10

    .line 740
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 741
    const-string v14, "X-IRMC-BOX"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 742
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 771
    .end local v1           #VmsgString:[Ljava/lang/String;
    .end local v2           #arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9           #ir:Ljava/io/InputStreamReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    move-object v10, v11

    .line 772
    .end local v11           #is:Ljava/io/InputStream;
    .local v6, fnfe:Ljava/io/FileNotFoundException;
    .restart local v10       #is:Ljava/io/InputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 776
    if-eqz v8, :cond_1

    .line 778
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 783
    :cond_1
    :goto_2
    if-eqz v10, :cond_2

    .line 785
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 790
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 792
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 798
    .end local v6           #fnfe:Ljava/io/FileNotFoundException;
    :cond_3
    :goto_4
    const/4 v2, 0x0

    :goto_5
    return-object v2

    .line 743
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v8           #ir:Ljava/io/InputStreamReader;
    .end local v10           #is:Ljava/io/InputStream;
    .restart local v1       #VmsgString:[Ljava/lang/String;
    .restart local v2       #arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v9       #ir:Ljava/io/InputStreamReader;
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v13       #tmp:Ljava/lang/String;
    :cond_4
    :try_start_8
    const-string v14, "TEL;"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 744
    const/4 v14, 0x0

    aget-object v14, v1, v14

    const-string v15, "SENT"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 745
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 773
    .end local v1           #VmsgString:[Ljava/lang/String;
    .end local v2           #arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #tmp:Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9           #ir:Ljava/io/InputStreamReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    move-object v10, v11

    .line 774
    .end local v11           #is:Ljava/io/InputStream;
    .local v7, ioe:Ljava/io/IOException;
    .restart local v10       #is:Ljava/io/InputStream;
    :goto_6
    :try_start_9
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 776
    if-eqz v8, :cond_5

    .line 778
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 783
    :cond_5
    :goto_7
    if-eqz v10, :cond_6

    .line 785
    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 790
    :cond_6
    :goto_8
    if-eqz v3, :cond_3

    .line 792
    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_4

    .line 793
    :catch_2
    move-exception v5

    .line 794
    .end local v7           #ioe:Ljava/io/IOException;
    .local v5, e:Ljava/io/IOException;
    :goto_9
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 747
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v5           #e:Ljava/io/IOException;
    .end local v8           #ir:Ljava/io/InputStreamReader;
    .end local v10           #is:Ljava/io/InputStream;
    .restart local v1       #VmsgString:[Ljava/lang/String;
    .restart local v2       #arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v9       #ir:Ljava/io/InputStreamReader;
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v13       #tmp:Ljava/lang/String;
    :cond_7
    const/4 v14, 0x2

    :try_start_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_0

    .line 776
    .end local v1           #VmsgString:[Ljava/lang/String;
    .end local v2           #arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #tmp:Ljava/lang/String;
    :catchall_0
    move-exception v14

    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9           #ir:Ljava/io/InputStreamReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    move-object v10, v11

    .end local v11           #is:Ljava/io/InputStream;
    .restart local v10       #is:Ljava/io/InputStream;
    :goto_a
    if-eqz v8, :cond_8

    .line 778
    :try_start_e
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 783
    :cond_8
    :goto_b
    if-eqz v10, :cond_9

    .line 785
    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 790
    :cond_9
    :goto_c
    if-eqz v3, :cond_a

    .line 792
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 776
    :cond_a
    :goto_d
    throw v14

    .line 749
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v8           #ir:Ljava/io/InputStreamReader;
    .end local v10           #is:Ljava/io/InputStream;
    .restart local v1       #VmsgString:[Ljava/lang/String;
    .restart local v2       #arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v9       #ir:Ljava/io/InputStreamReader;
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v13       #tmp:Ljava/lang/String;
    :cond_b
    :try_start_11
    const-string v14, "N:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    const-string v14, "N;CHARSET=UTF-8:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 750
    :cond_c
    const/4 v14, 0x0

    aget-object v14, v1, v14

    const-string v15, "INBOX"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/4 v14, 0x2

    aget-object v14, v1, v14

    if-nez v14, :cond_d

    .line 751
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14

    goto/16 :goto_0

    .line 752
    :cond_d
    const/4 v14, 0x0

    aget-object v14, v1, v14

    const-string v15, "SENT"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x3

    aget-object v14, v1, v14

    if-nez v14, :cond_0

    .line 753
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14

    goto/16 :goto_0

    .line 755
    :cond_e
    const-string v14, "Date:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 756
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14

    goto/16 :goto_0

    .line 758
    :cond_f
    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14

    goto/16 :goto_0

    .line 763
    :cond_10
    const/4 v14, 0x5

    aget-object v14, v1, v14

    if-eqz v14, :cond_11

    .line 764
    const/4 v14, 0x5

    const/4 v15, 0x5

    aget-object v15, v1, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/ui/VMessage;->unfoldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14

    .line 766
    :cond_11
    const/4 v12, 0x0

    .local v12, row:I
    :goto_e
    const/4 v14, 0x5

    if-gt v12, v14, :cond_12

    .line 768
    aget-object v14, v1, v12

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    .line 766
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 776
    :cond_12
    if-eqz v9, :cond_13

    .line 778
    :try_start_12
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 783
    :cond_13
    :goto_f
    if-eqz v11, :cond_14

    .line 785
    :try_start_13
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 790
    :cond_14
    :goto_10
    if-eqz v4, :cond_15

    .line 792
    :try_start_14
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    :cond_15
    :goto_11
    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9           #ir:Ljava/io/InputStreamReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    move-object v10, v11

    .line 770
    .end local v11           #is:Ljava/io/InputStream;
    .restart local v10       #is:Ljava/io/InputStream;
    goto/16 :goto_5

    .line 779
    .end local v1           #VmsgString:[Ljava/lang/String;
    .end local v2           #arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #row:I
    .end local v13           #tmp:Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 780
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    .line 786
    .end local v5           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 787
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    .line 793
    .end local v5           #e:Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 794
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d

    .line 779
    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #fnfe:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v5

    .line 780
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 786
    .end local v5           #e:Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 787
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 793
    .end local v5           #e:Ljava/io/IOException;
    :catch_8
    move-exception v5

    goto/16 :goto_9

    .line 779
    .end local v6           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v7       #ioe:Ljava/io/IOException;
    :catch_9
    move-exception v5

    .line 780
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 786
    .end local v5           #e:Ljava/io/IOException;
    :catch_a
    move-exception v5

    .line 787
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 779
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #ioe:Ljava/io/IOException;
    .end local v8           #ir:Ljava/io/InputStreamReader;
    .end local v10           #is:Ljava/io/InputStream;
    .restart local v1       #VmsgString:[Ljava/lang/String;
    .restart local v2       #arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v9       #ir:Ljava/io/InputStreamReader;
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v12       #row:I
    .restart local v13       #tmp:Ljava/lang/String;
    :catch_b
    move-exception v5

    .line 780
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 786
    .end local v5           #e:Ljava/io/IOException;
    :catch_c
    move-exception v5

    .line 787
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 793
    .end local v5           #e:Ljava/io/IOException;
    :catch_d
    move-exception v5

    .line 794
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 776
    .end local v1           #VmsgString:[Ljava/lang/String;
    .end local v2           #arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v5           #e:Ljava/io/IOException;
    .end local v9           #ir:Ljava/io/InputStreamReader;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v12           #row:I
    .end local v13           #tmp:Ljava/lang/String;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    .restart local v10       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v14

    goto/16 :goto_a

    .end local v10           #is:Ljava/io/InputStream;
    .restart local v11       #is:Ljava/io/InputStream;
    :catchall_2
    move-exception v14

    move-object v10, v11

    .end local v11           #is:Ljava/io/InputStream;
    .restart local v10       #is:Ljava/io/InputStream;
    goto/16 :goto_a

    .end local v8           #ir:Ljava/io/InputStreamReader;
    .end local v10           #is:Ljava/io/InputStream;
    .restart local v9       #ir:Ljava/io/InputStreamReader;
    .restart local v11       #is:Ljava/io/InputStream;
    :catchall_3
    move-exception v14

    move-object v8, v9

    .end local v9           #ir:Ljava/io/InputStreamReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    move-object v10, v11

    .end local v11           #is:Ljava/io/InputStream;
    .restart local v10       #is:Ljava/io/InputStream;
    goto/16 :goto_a

    .line 773
    :catch_e
    move-exception v7

    goto/16 :goto_6

    .end local v10           #is:Ljava/io/InputStream;
    .restart local v11       #is:Ljava/io/InputStream;
    :catch_f
    move-exception v7

    move-object v10, v11

    .end local v11           #is:Ljava/io/InputStream;
    .restart local v10       #is:Ljava/io/InputStream;
    goto/16 :goto_6

    .end local v8           #ir:Ljava/io/InputStreamReader;
    .end local v10           #is:Ljava/io/InputStream;
    .restart local v9       #ir:Ljava/io/InputStreamReader;
    .restart local v11       #is:Ljava/io/InputStream;
    :catch_10
    move-exception v7

    move-object v8, v9

    .end local v9           #ir:Ljava/io/InputStreamReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    move-object v10, v11

    .end local v11           #is:Ljava/io/InputStream;
    .restart local v10       #is:Ljava/io/InputStream;
    goto/16 :goto_6

    .line 771
    :catch_11
    move-exception v6

    goto/16 :goto_1

    .end local v10           #is:Ljava/io/InputStream;
    .restart local v11       #is:Ljava/io/InputStream;
    :catch_12
    move-exception v6

    move-object v10, v11

    .end local v11           #is:Ljava/io/InputStream;
    .restart local v10       #is:Ljava/io/InputStream;
    goto/16 :goto_1

    .end local v8           #ir:Ljava/io/InputStreamReader;
    .end local v10           #is:Ljava/io/InputStream;
    .restart local v9       #ir:Ljava/io/InputStreamReader;
    .restart local v11       #is:Ljava/io/InputStream;
    :catch_13
    move-exception v6

    move-object v8, v9

    .end local v9           #ir:Ljava/io/InputStreamReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    move-object v10, v11

    .end local v11           #is:Ljava/io/InputStream;
    .restart local v10       #is:Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method public readFileFromSDCard2(Ljava/io/File;)Lcom/android/mms/ui/MsgItem;
    .locals 20
    .parameter "file"

    .prologue
    .line 803
    const/4 v14, 0x0

    .line 804
    .local v14, is:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 805
    .local v12, ir:Ljava/io/InputStreamReader;
    const/4 v6, 0x0

    .line 807
    .local v6, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_14

    .line 808
    .end local v14           #is:Ljava/io/InputStream;
    .local v15, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_15

    .line 809
    .end local v12           #ir:Ljava/io/InputStreamReader;
    .local v13, ir:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_16

    .line 813
    .end local v6           #br:Ljava/io/BufferedReader;
    .local v7, br:Ljava/io/BufferedReader;
    const/16 v18, 0x6

    :try_start_3
    move/from16 v0, v18

    new-array v2, v0, [Ljava/lang/String;

    .line 816
    .local v2, VmsgString:[Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_3

    .line 817
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 818
    const/16 v16, 0x0

    .line 884
    if-eqz v13, :cond_0

    .line 886
    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    .line 891
    :cond_0
    :goto_0
    if-eqz v15, :cond_1

    .line 893
    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c

    .line 898
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 900
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d

    :cond_2
    :goto_2
    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    move-object v12, v13

    .end local v13           #ir:Ljava/io/InputStreamReader;
    .restart local v12       #ir:Ljava/io/InputStreamReader;
    move-object v14, v15

    .line 906
    .end local v2           #VmsgString:[Ljava/lang/String;
    .end local v15           #is:Ljava/io/InputStream;
    .restart local v14       #is:Ljava/io/InputStream;
    :goto_3
    return-object v16

    .line 821
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v12           #ir:Ljava/io/InputStreamReader;
    .end local v14           #is:Ljava/io/InputStream;
    .restart local v2       #VmsgString:[Ljava/lang/String;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v13       #ir:Ljava/io/InputStreamReader;
    .restart local v15       #is:Ljava/io/InputStream;
    :cond_3
    const/16 v18, 0x0

    :try_start_7
    const-string v19, "INBOX"

    aput-object v19, v2, v18

    .line 823
    :cond_4
    :goto_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, tmp:Ljava/lang/String;
    if-eqz v17, :cond_14

    .line 824
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 826
    const-string v18, "X-IRMC-BOX"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 827
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 879
    .end local v2           #VmsgString:[Ljava/lang/String;
    .end local v17           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    move-object v12, v13

    .end local v13           #ir:Ljava/io/InputStreamReader;
    .restart local v12       #ir:Ljava/io/InputStreamReader;
    move-object v14, v15

    .line 880
    .end local v15           #is:Ljava/io/InputStream;
    .local v10, fnfe:Ljava/io/FileNotFoundException;
    .restart local v14       #is:Ljava/io/InputStream;
    :goto_5
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 884
    if-eqz v12, :cond_5

    .line 886
    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 891
    :cond_5
    :goto_6
    if-eqz v14, :cond_6

    .line 893
    :try_start_a
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 898
    :cond_6
    :goto_7
    if-eqz v6, :cond_7

    .line 900
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 906
    .end local v10           #fnfe:Ljava/io/FileNotFoundException;
    :cond_7
    :goto_8
    const/16 v16, 0x0

    goto :goto_3

    .line 828
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v12           #ir:Ljava/io/InputStreamReader;
    .end local v14           #is:Ljava/io/InputStream;
    .restart local v2       #VmsgString:[Ljava/lang/String;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v13       #ir:Ljava/io/InputStreamReader;
    .restart local v15       #is:Ljava/io/InputStream;
    .restart local v17       #tmp:Ljava/lang/String;
    :cond_8
    :try_start_c
    const-string v18, "TEL;"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 829
    const/16 v18, 0x0

    aget-object v18, v2, v18

    const-string v19, "SENT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 830
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_4

    .line 881
    .end local v2           #VmsgString:[Ljava/lang/String;
    .end local v17           #tmp:Ljava/lang/String;
    :catch_1
    move-exception v11

    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    move-object v12, v13

    .end local v13           #ir:Ljava/io/InputStreamReader;
    .restart local v12       #ir:Ljava/io/InputStreamReader;
    move-object v14, v15

    .line 882
    .end local v15           #is:Ljava/io/InputStream;
    .local v11, ioe:Ljava/io/IOException;
    .restart local v14       #is:Ljava/io/InputStream;
    :goto_9
    :try_start_d
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 884
    if-eqz v12, :cond_9

    .line 886
    :try_start_e
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 891
    :cond_9
    :goto_a
    if-eqz v14, :cond_a

    .line 893
    :try_start_f
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 898
    :cond_a
    :goto_b
    if-eqz v6, :cond_7

    .line 900
    :try_start_10
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_8

    .line 901
    :catch_2
    move-exception v9

    .line 902
    .end local v11           #ioe:Ljava/io/IOException;
    .local v9, e:Ljava/io/IOException;
    :goto_c
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 832
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v9           #e:Ljava/io/IOException;
    .end local v12           #ir:Ljava/io/InputStreamReader;
    .end local v14           #is:Ljava/io/InputStream;
    .restart local v2       #VmsgString:[Ljava/lang/String;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v13       #ir:Ljava/io/InputStreamReader;
    .restart local v15       #is:Ljava/io/InputStream;
    .restart local v17       #tmp:Ljava/lang/String;
    :cond_b
    const/16 v18, 0x2

    :try_start_11
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_4

    .line 884
    .end local v2           #VmsgString:[Ljava/lang/String;
    .end local v17           #tmp:Ljava/lang/String;
    :catchall_0
    move-exception v18

    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    move-object v12, v13

    .end local v13           #ir:Ljava/io/InputStreamReader;
    .restart local v12       #ir:Ljava/io/InputStreamReader;
    move-object v14, v15

    .end local v15           #is:Ljava/io/InputStream;
    .restart local v14       #is:Ljava/io/InputStream;
    :goto_d
    if-eqz v12, :cond_c

    .line 886
    :try_start_12
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3

    .line 891
    :cond_c
    :goto_e
    if-eqz v14, :cond_d

    .line 893
    :try_start_13
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4

    .line 898
    :cond_d
    :goto_f
    if-eqz v6, :cond_e

    .line 900
    :try_start_14
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5

    .line 884
    :cond_e
    :goto_10
    throw v18

    .line 834
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v12           #ir:Ljava/io/InputStreamReader;
    .end local v14           #is:Ljava/io/InputStream;
    .restart local v2       #VmsgString:[Ljava/lang/String;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v13       #ir:Ljava/io/InputStreamReader;
    .restart local v15       #is:Ljava/io/InputStream;
    .restart local v17       #tmp:Ljava/lang/String;
    :cond_f
    :try_start_15
    const-string v18, "N:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_10

    const-string v18, "N;CHARSET=UTF-8:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 835
    :cond_10
    const/16 v18, 0x0

    aget-object v18, v2, v18

    const-string v19, "INBOX"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    const/16 v18, 0x2

    aget-object v18, v2, v18

    if-nez v18, :cond_11

    .line 836
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18

    goto/16 :goto_4

    .line 837
    :cond_11
    const/16 v18, 0x0

    aget-object v18, v2, v18

    const-string v19, "SENT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x3

    aget-object v18, v2, v18

    if-nez v18, :cond_4

    .line 838
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18

    goto/16 :goto_4

    .line 840
    :cond_12
    const-string v18, "Date:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 841
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18

    goto/16 :goto_4

    .line 843
    :cond_13
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18

    goto/16 :goto_4

    .line 849
    :cond_14
    const/16 v18, 0x0

    aget-object v18, v2, v18

    const-string v19, "SENT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_18

    const/16 v18, 0x0

    aget-object v18, v2, v18

    const-string v19, "INBOX"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1

    move-result v18

    if-nez v18, :cond_18

    .line 850
    const/16 v16, 0x0

    .line 884
    if-eqz v13, :cond_15

    .line 886
    :try_start_16
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    .line 891
    :cond_15
    :goto_11
    if-eqz v15, :cond_16

    .line 893
    :try_start_17
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    .line 898
    :cond_16
    :goto_12
    if-eqz v7, :cond_17

    .line 900
    :try_start_18
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    :cond_17
    :goto_13
    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    move-object v12, v13

    .end local v13           #ir:Ljava/io/InputStreamReader;
    .restart local v12       #ir:Ljava/io/InputStreamReader;
    move-object v14, v15

    .line 850
    .end local v15           #is:Ljava/io/InputStream;
    .restart local v14       #is:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 853
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v12           #ir:Ljava/io/InputStreamReader;
    .end local v14           #is:Ljava/io/InputStream;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v13       #ir:Ljava/io/InputStreamReader;
    .restart local v15       #is:Ljava/io/InputStream;
    :cond_18
    :try_start_19
    const-string v3, ""

    .line 854
    .local v3, addr:Ljava/lang/String;
    const-string v4, ""

    .line 855
    .local v4, body:Ljava/lang/String;
    const/16 v18, 0x4

    aget-object v8, v2, v18

    .line 858
    .local v8, date:Ljava/lang/String;
    const/16 v18, 0x5

    aget-object v4, v2, v18

    .line 860
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/ui/VMessage;->unfoldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 862
    const/16 v18, 0x0

    aget-object v18, v2, v18

    const-string v19, "SENT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 863
    const/4 v5, 0x1

    .line 864
    .local v5, boxId:I
    const/16 v18, 0x3

    aget-object v3, v2, v18

    .line 870
    :goto_14
    if-nez v3, :cond_19

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0c013b

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 873
    :cond_19
    if-nez v8, :cond_1a

    .line 874
    const-string v8, "2000.1.1.12.00.00"

    .line 876
    :cond_1a
    new-instance v16, Lcom/android/mms/ui/MsgItem;

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v3, v4, v8}, Lcom/android/mms/ui/MsgItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1

    .line 884
    .local v16, item:Lcom/android/mms/ui/MsgItem;
    if-eqz v13, :cond_1b

    .line 886
    :try_start_1a
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_11

    .line 891
    :cond_1b
    :goto_15
    if-eqz v15, :cond_1c

    .line 893
    :try_start_1b
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12

    .line 898
    :cond_1c
    :goto_16
    if-eqz v7, :cond_1d

    .line 900
    :try_start_1c
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_13

    :cond_1d
    :goto_17
    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    move-object v12, v13

    .end local v13           #ir:Ljava/io/InputStreamReader;
    .restart local v12       #ir:Ljava/io/InputStreamReader;
    move-object v14, v15

    .line 878
    .end local v15           #is:Ljava/io/InputStream;
    .restart local v14       #is:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 866
    .end local v5           #boxId:I
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v12           #ir:Ljava/io/InputStreamReader;
    .end local v14           #is:Ljava/io/InputStream;
    .end local v16           #item:Lcom/android/mms/ui/MsgItem;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v13       #ir:Ljava/io/InputStreamReader;
    .restart local v15       #is:Ljava/io/InputStream;
    :cond_1e
    const/4 v5, 0x2

    .line 867
    .restart local v5       #boxId:I
    const/16 v18, 0x2

    :try_start_1d
    aget-object v3, v2, v18
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1

    goto :goto_14

    .line 887
    .end local v2           #VmsgString:[Ljava/lang/String;
    .end local v3           #addr:Ljava/lang/String;
    .end local v4           #body:Ljava/lang/String;
    .end local v5           #boxId:I
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v8           #date:Ljava/lang/String;
    .end local v13           #ir:Ljava/io/InputStreamReader;
    .end local v15           #is:Ljava/io/InputStream;
    .end local v17           #tmp:Ljava/lang/String;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local v12       #ir:Ljava/io/InputStreamReader;
    .restart local v14       #is:Ljava/io/InputStream;
    :catch_3
    move-exception v9

    .line 888
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e

    .line 894
    .end local v9           #e:Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 895
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    .line 901
    .end local v9           #e:Ljava/io/IOException;
    :catch_5
    move-exception v9

    .line 902
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_10

    .line 887
    .end local v9           #e:Ljava/io/IOException;
    .restart local v10       #fnfe:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v9

    .line 888
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 894
    .end local v9           #e:Ljava/io/IOException;
    :catch_7
    move-exception v9

    .line 895
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 901
    .end local v9           #e:Ljava/io/IOException;
    :catch_8
    move-exception v9

    goto/16 :goto_c

    .line 887
    .end local v10           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v11       #ioe:Ljava/io/IOException;
    :catch_9
    move-exception v9

    .line 888
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 894
    .end local v9           #e:Ljava/io/IOException;
    :catch_a
    move-exception v9

    .line 895
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    .line 887
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v9           #e:Ljava/io/IOException;
    .end local v11           #ioe:Ljava/io/IOException;
    .end local v12           #ir:Ljava/io/InputStreamReader;
    .end local v14           #is:Ljava/io/InputStream;
    .restart local v2       #VmsgString:[Ljava/lang/String;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v13       #ir:Ljava/io/InputStreamReader;
    .restart local v15       #is:Ljava/io/InputStream;
    :catch_b
    move-exception v9

    .line 888
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 894
    .end local v9           #e:Ljava/io/IOException;
    :catch_c
    move-exception v9

    .line 895
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 901
    .end local v9           #e:Ljava/io/IOException;
    :catch_d
    move-exception v9

    .line 902
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 887
    .end local v9           #e:Ljava/io/IOException;
    .restart local v17       #tmp:Ljava/lang/String;
    :catch_e
    move-exception v9

    .line 888
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_11

    .line 894
    .end local v9           #e:Ljava/io/IOException;
    :catch_f
    move-exception v9

    .line 895
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_12

    .line 901
    .end local v9           #e:Ljava/io/IOException;
    :catch_10
    move-exception v9

    .line 902
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_13

    .line 887
    .end local v9           #e:Ljava/io/IOException;
    .restart local v3       #addr:Ljava/lang/String;
    .restart local v4       #body:Ljava/lang/String;
    .restart local v5       #boxId:I
    .restart local v8       #date:Ljava/lang/String;
    .restart local v16       #item:Lcom/android/mms/ui/MsgItem;
    :catch_11
    move-exception v9

    .line 888
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 894
    .end local v9           #e:Ljava/io/IOException;
    :catch_12
    move-exception v9

    .line 895
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    .line 901
    .end local v9           #e:Ljava/io/IOException;
    :catch_13
    move-exception v9

    .line 902
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    .line 884
    .end local v2           #VmsgString:[Ljava/lang/String;
    .end local v3           #addr:Ljava/lang/String;
    .end local v4           #body:Ljava/lang/String;
    .end local v5           #boxId:I
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v8           #date:Ljava/lang/String;
    .end local v9           #e:Ljava/io/IOException;
    .end local v13           #ir:Ljava/io/InputStreamReader;
    .end local v15           #is:Ljava/io/InputStream;
    .end local v16           #item:Lcom/android/mms/ui/MsgItem;
    .end local v17           #tmp:Ljava/lang/String;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local v12       #ir:Ljava/io/InputStreamReader;
    .restart local v14       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v18

    goto/16 :goto_d

    .end local v14           #is:Ljava/io/InputStream;
    .restart local v15       #is:Ljava/io/InputStream;
    :catchall_2
    move-exception v18

    move-object v14, v15

    .end local v15           #is:Ljava/io/InputStream;
    .restart local v14       #is:Ljava/io/InputStream;
    goto/16 :goto_d

    .end local v12           #ir:Ljava/io/InputStreamReader;
    .end local v14           #is:Ljava/io/InputStream;
    .restart local v13       #ir:Ljava/io/InputStreamReader;
    .restart local v15       #is:Ljava/io/InputStream;
    :catchall_3
    move-exception v18

    move-object v12, v13

    .end local v13           #ir:Ljava/io/InputStreamReader;
    .restart local v12       #ir:Ljava/io/InputStreamReader;
    move-object v14, v15

    .end local v15           #is:Ljava/io/InputStream;
    .restart local v14       #is:Ljava/io/InputStream;
    goto/16 :goto_d

    .line 881
    :catch_14
    move-exception v11

    goto/16 :goto_9

    .end local v14           #is:Ljava/io/InputStream;
    .restart local v15       #is:Ljava/io/InputStream;
    :catch_15
    move-exception v11

    move-object v14, v15

    .end local v15           #is:Ljava/io/InputStream;
    .restart local v14       #is:Ljava/io/InputStream;
    goto/16 :goto_9

    .end local v12           #ir:Ljava/io/InputStreamReader;
    .end local v14           #is:Ljava/io/InputStream;
    .restart local v13       #ir:Ljava/io/InputStreamReader;
    .restart local v15       #is:Ljava/io/InputStream;
    :catch_16
    move-exception v11

    move-object v12, v13

    .end local v13           #ir:Ljava/io/InputStreamReader;
    .restart local v12       #ir:Ljava/io/InputStreamReader;
    move-object v14, v15

    .end local v15           #is:Ljava/io/InputStream;
    .restart local v14       #is:Ljava/io/InputStream;
    goto/16 :goto_9

    .line 879
    :catch_17
    move-exception v10

    goto/16 :goto_5

    .end local v14           #is:Ljava/io/InputStream;
    .restart local v15       #is:Ljava/io/InputStream;
    :catch_18
    move-exception v10

    move-object v14, v15

    .end local v15           #is:Ljava/io/InputStream;
    .restart local v14       #is:Ljava/io/InputStream;
    goto/16 :goto_5

    .end local v12           #ir:Ljava/io/InputStreamReader;
    .end local v14           #is:Ljava/io/InputStream;
    .restart local v13       #ir:Ljava/io/InputStreamReader;
    .restart local v15       #is:Ljava/io/InputStream;
    :catch_19
    move-exception v10

    move-object v12, v13

    .end local v13           #ir:Ljava/io/InputStreamReader;
    .restart local v12       #ir:Ljava/io/InputStreamReader;
    move-object v14, v15

    .end local v15           #is:Ljava/io/InputStream;
    .restart local v14       #is:Ljava/io/InputStream;
    goto/16 :goto_5
.end method

.method public readStreamFromViewer1(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 12
    .parameter "is"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 911
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 912
    .local v3, ir:Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 913
    .local v2, br:Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .local v1, arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x6

    new-array v0, v6, [Ljava/lang/String;

    .line 918
    .local v0, VmsgString:[Ljava/lang/String;
    const-string v6, "INBOX"

    aput-object v6, v0, v8

    .line 920
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, tmp:Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 921
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 922
    const-string v6, "X-IRMC-BOX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 923
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v8

    goto :goto_0

    .line 924
    :cond_1
    const-string v6, "TEL;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 925
    aget-object v6, v0, v8

    const-string v7, "SENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 926
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v11

    goto :goto_0

    .line 928
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    goto :goto_0

    .line 930
    :cond_3
    const-string v6, "N:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "N;CHARSET=UTF-8:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 931
    :cond_4
    aget-object v6, v0, v8

    const-string v7, "INBOX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    aget-object v6, v0, v10

    if-nez v6, :cond_5

    .line 932
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    goto :goto_0

    .line 933
    :cond_5
    aget-object v6, v0, v8

    const-string v7, "SENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-object v6, v0, v11

    if-nez v6, :cond_0

    .line 934
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v11

    goto :goto_0

    .line 936
    :cond_6
    const-string v6, "Date:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 937
    const/4 v6, 0x4

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    goto/16 :goto_0

    .line 939
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    goto/16 :goto_0

    .line 944
    :cond_8
    aget-object v6, v0, v9

    if-eqz v6, :cond_9

    .line 945
    aget-object v6, v0, v9

    invoke-direct {p0, v6}, Lcom/android/mms/ui/VMessage;->unfoldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    .line 947
    :cond_9
    const/4 v4, 0x0

    .local v4, row:I
    :goto_1
    if-gt v4, v9, :cond_a

    .line 949
    aget-object v6, v0, v4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 952
    :cond_a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 953
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 954
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 956
    return-object v1
.end method

.method public readStreamFromViewer2(Ljava/io/InputStream;)Lcom/android/mms/ui/MsgItem;
    .locals 14
    .parameter "is"

    .prologue
    const/4 v11, 0x0

    .line 962
    :try_start_0
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 963
    .local v8, ir:Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 967
    .local v4, br:Ljava/io/BufferedReader;
    const/4 v12, 0x6

    new-array v0, v12, [Ljava/lang/String;

    .line 970
    .local v0, VmsgString:[Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_0

    .line 971
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    move-object v9, v11

    .line 1042
    .end local v0           #VmsgString:[Ljava/lang/String;
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v8           #ir:Ljava/io/InputStreamReader;
    :goto_0
    return-object v9

    .line 975
    .restart local v0       #VmsgString:[Ljava/lang/String;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    :cond_0
    const/4 v12, 0x0

    const-string v13, "INBOX"

    aput-object v13, v0, v12

    .line 977
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, tmp:Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 978
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 980
    const-string v12, "X-IRMC-BOX"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 981
    const/4 v12, 0x0

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1037
    .end local v0           #VmsgString:[Ljava/lang/String;
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v8           #ir:Ljava/io/InputStreamReader;
    .end local v10           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1038
    .local v6, fnfe:Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v6           #fnfe:Ljava/io/FileNotFoundException;
    :goto_2
    move-object v9, v11

    .line 1042
    goto :goto_0

    .line 982
    .restart local v0       #VmsgString:[Ljava/lang/String;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    .restart local v10       #tmp:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v12, "TEL;"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 983
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "SENT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 984
    const/4 v12, 0x3

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1039
    .end local v0           #VmsgString:[Ljava/lang/String;
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v8           #ir:Ljava/io/InputStreamReader;
    .end local v10           #tmp:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 1040
    .local v7, ioe:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 986
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v0       #VmsgString:[Ljava/lang/String;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    .restart local v10       #tmp:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x2

    :try_start_2
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto :goto_1

    .line 988
    :cond_4
    const-string v12, "N:"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "N;CHARSET=UTF-8:"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 989
    :cond_5
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "INBOX"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x2

    aget-object v12, v0, v12

    if-nez v12, :cond_6

    .line 990
    const/4 v12, 0x2

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto :goto_1

    .line 991
    :cond_6
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "SENT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x3

    aget-object v12, v0, v12

    if-nez v12, :cond_1

    .line 992
    const/4 v12, 0x3

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto/16 :goto_1

    .line 994
    :cond_7
    const-string v12, "Date:"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 995
    const/4 v12, 0x4

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto/16 :goto_1

    .line 997
    :cond_8
    const/4 v12, 0x5

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto/16 :goto_1

    .line 1002
    :cond_9
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 1003
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1004
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 1007
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "SENT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "INBOX"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    move-object v9, v11

    .line 1008
    goto/16 :goto_0

    .line 1011
    :cond_a
    const-string v1, ""

    .line 1012
    .local v1, addr:Ljava/lang/String;
    const-string v2, ""

    .line 1013
    .local v2, body:Ljava/lang/String;
    const/4 v12, 0x4

    aget-object v5, v0, v12

    .line 1016
    .local v5, date:Ljava/lang/String;
    const/4 v12, 0x5

    aget-object v2, v0, v12

    .line 1017
    invoke-direct {p0, v2}, Lcom/android/mms/ui/VMessage;->unfoldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1019
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "SENT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1020
    const/4 v3, 0x1

    .line 1021
    .local v3, boxId:I
    const/4 v12, 0x3

    aget-object v1, v0, v12

    .line 1027
    :goto_3
    if-nez v1, :cond_b

    .line 1028
    iget-object v12, p0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    const v13, 0x7f0c013b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1030
    :cond_b
    if-nez v5, :cond_c

    .line 1031
    const-string v5, "2000.1.1.12.00.00"

    .line 1033
    :cond_c
    new-instance v9, Lcom/android/mms/ui/MsgItem;

    invoke-direct {v9, v3, v1, v2, v5}, Lcom/android/mms/ui/MsgItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    .local v9, item:Lcom/android/mms/ui/MsgItem;
    goto/16 :goto_0

    .line 1023
    .end local v3           #boxId:I
    .end local v9           #item:Lcom/android/mms/ui/MsgItem;
    :cond_d
    const/4 v3, 0x2

    .line 1024
    .restart local v3       #boxId:I
    const/4 v12, 0x2

    aget-object v1, v0, v12
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method

.method public vMessageDateParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "Date"

    .prologue
    .line 1114
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1115
    .local v0, sep:I
    if-ltz v0, :cond_0

    .line 1116
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1118
    :cond_0
    return-object p1
.end method

.method public vMessageMsgTypeParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 1090
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1091
    .local v0, sep:I
    if-ltz v0, :cond_0

    .line 1092
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1094
    :cond_0
    return-object p1
.end method

.method public vMessageNameParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 1098
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1099
    .local v0, sep:I
    if-ltz v0, :cond_0

    .line 1100
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1102
    :cond_0
    return-object p1
.end method

.method public vMessageTelParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tel"

    .prologue
    .line 1106
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1107
    .local v0, sep:I
    if-ltz v0, :cond_0

    .line 1108
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1110
    :cond_0
    return-object p1
.end method
