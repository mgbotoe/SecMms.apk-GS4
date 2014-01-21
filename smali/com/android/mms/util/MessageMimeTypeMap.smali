.class public Lcom/android/mms/util/MessageMimeTypeMap;
.super Ljava/lang/Object;
.source "MessageMimeTypeMap.java"


# static fields
.field private static sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

.field private static sMimeTypeMap_typicalAudio:Lcom/android/mms/util/MessageMimeTypeMap;


# instance fields
.field private mExtensionToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMimeTypeToExtensionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    .line 54
    return-void
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"

    .prologue
    .line 65
    const-string v4, ""

    .line 66
    .local v4, returnFileName:Ljava/lang/String;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 67
    const/16 v5, 0x3f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 68
    .local v3, query:I
    if-lez v3, :cond_0

    .line 69
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 71
    :cond_0
    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 72
    .local v2, filenamePos:I
    if-ltz v2, :cond_1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, filename:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, "[a-zA-Z_0-9\\.\\-\\(\\)]+"

    invoke-static {v5, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 78
    .local v0, dotPos:I
    if-ltz v0, :cond_2

    .line 79
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 85
    .end local v0           #dotPos:I
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #filenamePos:I
    .end local v3           #query:I
    :goto_1
    return-object v5

    .restart local v2       #filenamePos:I
    .restart local v3       #query:I
    :cond_1
    move-object v1, p0

    .line 72
    goto :goto_0

    .line 85
    .end local v2           #filenamePos:I
    .end local v3           #query:I
    :cond_2
    const-string v5, ""

    goto :goto_1
.end method

.method public static declared-synchronized getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;
    .locals 4

    .prologue
    .line 187
    const-class v1, Lcom/android/mms/util/MessageMimeTypeMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/android/mms/util/MessageMimeTypeMap;

    invoke-direct {v0}, Lcom/android/mms/util/MessageMimeTypeMap;-><init>()V

    sput-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    .line 199
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/andrew-inset"

    const-string v3, "ez"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/dsptype"

    const-string v3, "tsp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/futuresplash"

    const-string v3, "spl"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/hta"

    const-string v3, "hta"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/mac-binhex40"

    const-string v3, "hqx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/mac-compactpro"

    const-string v3, "cpt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/mathematica"

    const-string v3, "nb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/msaccess"

    const-string v3, "mdb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/oda"

    const-string v3, "oda"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/ogg"

    const-string v3, "ogg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/pdf"

    const-string v3, "pdf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/pgp-keys"

    const-string v3, "key"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/pgp-signature"

    const-string v3, "pgp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/pics-rules"

    const-string v3, "prf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/rar"

    const-string v3, "rar"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/rdf+xml"

    const-string v3, "rdf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/rss+xml"

    const-string v3, "rss"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/zip"

    const-string v3, "zip"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.android.package-archive"

    const-string v3, "apk"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.cinderella"

    const-string v3, "cdy"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.ms-pki.stl"

    const-string v3, "stl"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.database"

    const-string v3, "odb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.formula"

    const-string v3, "odf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.graphics"

    const-string v3, "odg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.graphics-template"

    const-string v3, "otg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.image"

    const-string v3, "odi"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.spreadsheet"

    const-string v3, "ods"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.spreadsheet-template"

    const-string v3, "ots"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.text"

    const-string v3, "odt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.text-master"

    const-string v3, "odm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.text-template"

    const-string v3, "ott"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.text-web"

    const-string v3, "oth"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/msword"

    const-string v3, "doc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/msword"

    const-string v3, "dot"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v3, "docx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const-string v3, "dotx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.ms-excel"

    const-string v3, "xls"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.ms-excel"

    const-string v3, "xlt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v3, "xlsx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const-string v3, "xltx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "ppt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "pot"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "pps"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string v3, "pptx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.template"

    const-string v3, "potx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    const-string v3, "ppsx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.rim.cod"

    const-string v3, "cod"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.smaf"

    const-string v3, "mmf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.stardivision.calc"

    const-string v3, "sdc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.stardivision.draw"

    const-string v3, "sda"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.stardivision.impress"

    const-string v3, "sdd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.stardivision.impress"

    const-string v3, "sdp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.stardivision.math"

    const-string v3, "smf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.stardivision.writer"

    const-string v3, "sdw"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.stardivision.writer"

    const-string v3, "vor"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.stardivision.writer-global"

    const-string v3, "sgl"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.calc"

    const-string v3, "sxc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.calc.template"

    const-string v3, "stc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.draw"

    const-string v3, "sxd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.draw.template"

    const-string v3, "std"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.impress"

    const-string v3, "sxi"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.impress.template"

    const-string v3, "sti"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.math"

    const-string v3, "sxm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.writer"

    const-string v3, "sxw"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.writer.global"

    const-string v3, "sxg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.writer.template"

    const-string v3, "stw"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.visio"

    const-string v3, "vsd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-abiword"

    const-string v3, "abw"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-apple-diskimage"

    const-string v3, "dmg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-bcpio"

    const-string v3, "bcpio"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-bittorrent"

    const-string v3, "torrent"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-cdf"

    const-string v3, "cdf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-cdlink"

    const-string v3, "vcd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-chess-pgn"

    const-string v3, "pgn"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-cpio"

    const-string v3, "cpio"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-debian-package"

    const-string v3, "deb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-debian-package"

    const-string v3, "udeb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-director"

    const-string v3, "dcr"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-director"

    const-string v3, "dir"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-director"

    const-string v3, "dxr"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-dms"

    const-string v3, "dms"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-doom"

    const-string v3, "wad"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-dvi"

    const-string v3, "dvi"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-flac"

    const-string v3, "flac"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-font"

    const-string v3, "pfa"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-font"

    const-string v3, "pfb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-font"

    const-string v3, "gsf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-font"

    const-string v3, "pcf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-font"

    const-string v3, "pcf.Z"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-freemind"

    const-string v3, "mm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-futuresplash"

    const-string v3, "spl"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-gnumeric"

    const-string v3, "gnumeric"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-go-sgf"

    const-string v3, "sgf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-graphing-calculator"

    const-string v3, "gcf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-gtar"

    const-string v3, "gtar"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-gtar"

    const-string v3, "tgz"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-gtar"

    const-string v3, "taz"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-hdf"

    const-string v3, "hdf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-ica"

    const-string v3, "ica"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-internet-signup"

    const-string v3, "ins"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-internet-signup"

    const-string v3, "isp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-iphone"

    const-string v3, "iii"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-iso9660-image"

    const-string v3, "iso"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-jmol"

    const-string v3, "jmz"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-kchart"

    const-string v3, "chrt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-killustrator"

    const-string v3, "kil"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-koan"

    const-string v3, "skp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-koan"

    const-string v3, "skd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-koan"

    const-string v3, "skt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-koan"

    const-string v3, "skm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-kpresenter"

    const-string v3, "kpr"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-kpresenter"

    const-string v3, "kpt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-kspread"

    const-string v3, "ksp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-kword"

    const-string v3, "kwd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-kword"

    const-string v3, "kwt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-latex"

    const-string v3, "latex"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-lha"

    const-string v3, "lha"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-lzh"

    const-string v3, "lzh"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-lzx"

    const-string v3, "lzx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-maker"

    const-string v3, "frm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-maker"

    const-string v3, "maker"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-maker"

    const-string v3, "frame"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-maker"

    const-string v3, "fb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-maker"

    const-string v3, "book"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-maker"

    const-string v3, "fbdoc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-mif"

    const-string v3, "mif"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-ms-wmd"

    const-string v3, "wmd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-ms-wmz"

    const-string v3, "wmz"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-msi"

    const-string v3, "msi"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-ns-proxy-autoconfig"

    const-string v3, "pac"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-nwc"

    const-string v3, "nwc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-object"

    const-string v3, "o"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-oz-application"

    const-string v3, "oza"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-pkcs12"

    const-string v3, "p12"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-pkcs7-certreqresp"

    const-string v3, "p7r"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-pkcs7-crl"

    const-string v3, "crl"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-quicktimeplayer"

    const-string v3, "qtl"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-shar"

    const-string v3, "shar"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-stuffit"

    const-string v3, "sit"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-sv4cpio"

    const-string v3, "sv4cpio"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-sv4crc"

    const-string v3, "sv4crc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-tar"

    const-string v3, "tar"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-texinfo"

    const-string v3, "texinfo"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-texinfo"

    const-string v3, "texi"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-troff"

    const-string v3, "t"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-troff"

    const-string v3, "roff"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-troff-man"

    const-string v3, "man"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-ustar"

    const-string v3, "ustar"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-wais-source"

    const-string v3, "src"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-wingz"

    const-string v3, "wz"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-webarchive"

    const-string v3, "webarchive"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-x509-ca-cert"

    const-string v3, "crt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-x509-user-cert"

    const-string v3, "crt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-xcf"

    const-string v3, "xcf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-xfig"

    const-string v3, "fig"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/xhtml+xml"

    const-string v3, "xhtml"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/basic"

    const-string v3, "snd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/midi"

    const-string v3, "mid"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/midi"

    const-string v3, "midi"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/midi"

    const-string v3, "kar"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mpeg"

    const-string v3, "mpga"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mpeg"

    const-string v3, "mpega"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mpeg"

    const-string v3, "mp2"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mpeg"

    const-string v3, "mp3"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mpeg"

    const-string v3, "m4a"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mpegurl"

    const-string v3, "m3u"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/prs.sid"

    const-string v3, "sid"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-aiff"

    const-string v3, "aif"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-aiff"

    const-string v3, "aiff"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-aiff"

    const-string v3, "aifc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-gsm"

    const-string v3, "gsm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-mpegurl"

    const-string v3, "m3u"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-ms-wma"

    const-string v3, "wma"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-ms-wax"

    const-string v3, "wax"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-pn-realaudio"

    const-string v3, "ra"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-pn-realaudio"

    const-string v3, "rm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-pn-realaudio"

    const-string v3, "ram"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-realaudio"

    const-string v3, "ra"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-scpls"

    const-string v3, "pls"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-sd2"

    const-string v3, "sd2"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-wav"

    const-string v3, "wav"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/amr"

    const-string v3, "amr"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/aac"

    const-string v3, "aac"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/imelody"

    const-string v3, "imy"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/flac"

    const-string v3, "flac"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mp4"

    const-string v3, "m4a"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mobile-xmf"

    const-string v3, "mxmf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/3gpp"

    const-string v3, "3ga"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/amr-wb"

    const-string v3, "awb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/vnd.qcelp"

    const-string v3, "qcp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/qcelp"

    const-string v3, "qcp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/evrc"

    const-string v3, "qcp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/bmp"

    const-string v3, "bmp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/gif"

    const-string v3, "gif"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/ico"

    const-string v3, "cur"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/ico"

    const-string v3, "ico"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/ief"

    const-string v3, "ief"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/jpeg"

    const-string v3, "jpeg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/jpg"

    const-string v3, "jpg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/jpeg"

    const-string v3, "map"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/jpeg"

    const-string v3, "jpe"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/jpeg"

    const-string v3, "jpg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/pcx"

    const-string v3, "pcx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/png"

    const-string v3, "png"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/svg+xml"

    const-string v3, "svg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/svg+xml"

    const-string v3, "svgz"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/tiff"

    const-string v3, "tiff"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/tiff"

    const-string v3, "tif"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/vnd.djvu"

    const-string v3, "djvu"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/vnd.djvu"

    const-string v3, "djv"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/vnd.wap.wbmp"

    const-string v3, "wbmp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-cmu-raster"

    const-string v3, "ras"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-coreldraw"

    const-string v3, "cdr"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-coreldrawpattern"

    const-string v3, "pat"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-coreldrawtemplate"

    const-string v3, "cdt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-corelphotopaint"

    const-string v3, "cpt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-icon"

    const-string v3, "ico"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-jg"

    const-string v3, "art"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-jng"

    const-string v3, "jng"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-ms-bmp"

    const-string v3, "bmp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-photoshop"

    const-string v3, "psd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-portable-anymap"

    const-string v3, "pnm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-portable-bitmap"

    const-string v3, "pbm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-portable-graymap"

    const-string v3, "pgm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-portable-pixmap"

    const-string v3, "ppm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-rgb"

    const-string v3, "rgb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-xbitmap"

    const-string v3, "xbm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-xpixmap"

    const-string v3, "xpm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-xwindowdump"

    const-string v3, "xwd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "model/iges"

    const-string v3, "igs"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "model/iges"

    const-string v3, "iges"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "model/mesh"

    const-string v3, "msh"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "model/mesh"

    const-string v3, "mesh"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "model/mesh"

    const-string v3, "silo"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/calendar"

    const-string v3, "ics"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/calendar"

    const-string v3, "icz"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/comma-separated-values"

    const-string v3, "csv"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/css"

    const-string v3, "css"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/h323"

    const-string v3, "323"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/iuls"

    const-string v3, "uls"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/mathml"

    const-string v3, "mml"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/plain"

    const-string v3, "txt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/plain"

    const-string v3, "asc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/plain"

    const-string v3, "text"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/plain"

    const-string v3, "diff"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/plain"

    const-string v3, "po"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/richtext"

    const-string v3, "rtx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/rtf"

    const-string v3, "rtf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/texmacs"

    const-string v3, "ts"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/text"

    const-string v3, "phps"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/tab-separated-values"

    const-string v3, "tsv"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/xml"

    const-string v3, "xml"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-bibtex"

    const-string v3, "bib"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-boo"

    const-string v3, "boo"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-c++hdr"

    const-string v3, "h++"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-c++hdr"

    const-string v3, "hpp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-c++hdr"

    const-string v3, "hxx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-c++hdr"

    const-string v3, "hh"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-c++src"

    const-string v3, "c++"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-c++src"

    const-string v3, "cpp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-c++src"

    const-string v3, "cxx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-chdr"

    const-string v3, "h"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-component"

    const-string v3, "htc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-csh"

    const-string v3, "csh"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-csrc"

    const-string v3, "c"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-dsrc"

    const-string v3, "d"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-haskell"

    const-string v3, "hs"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-java"

    const-string v3, "java"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-literate-haskell"

    const-string v3, "lhs"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-moc"

    const-string v3, "moc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-pascal"

    const-string v3, "p"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-pascal"

    const-string v3, "pas"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-pcs-gcd"

    const-string v3, "gcd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-setext"

    const-string v3, "etx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-tcl"

    const-string v3, "tcl"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-tex"

    const-string v3, "tex"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-tex"

    const-string v3, "ltx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-tex"

    const-string v3, "sty"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-tex"

    const-string v3, "cls"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-vcalendar"

    const-string v3, "vcs"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-vcard"

    const-string v3, "vcf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-vnote"

    const-string v3, "vnt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/html"

    const-string v3, "html"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-vtodo"

    const-string v3, "vts"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/3gpp"

    const-string v3, "3gp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/3gpp"

    const-string v3, "3g2"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/dl"

    const-string v3, "dl"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/dv"

    const-string v3, "dif"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/dv"

    const-string v3, "dv"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/fli"

    const-string v3, "fli"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/mpeg"

    const-string v3, "mpeg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/mpeg"

    const-string v3, "mpg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/mpeg"

    const-string v3, "mpe"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/mp4"

    const-string v3, "mp4"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/mpeg"

    const-string v3, "VOB"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/quicktime"

    const-string v3, "qt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/quicktime"

    const-string v3, "mov"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/vnd.mpegurl"

    const-string v3, "mxu"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-la-asf"

    const-string v3, "lsf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-la-asf"

    const-string v3, "lsx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-mng"

    const-string v3, "mng"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-ms-asf"

    const-string v3, "asf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-ms-asf"

    const-string v3, "asx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-ms-wm"

    const-string v3, "wm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-ms-wmv"

    const-string v3, "wmv"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-ms-wmx"

    const-string v3, "wmx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-ms-wvx"

    const-string v3, "wvx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-msvideo"

    const-string v3, "avi"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-sgi-movie"

    const-string v3, "movie"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "x-conference/x-cooltalk"

    const-string v3, "ice"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "x-epoc/x-sisx-app"

    const-string v3, "sisx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/h263"

    const-string v3, "3gp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/mpeg4"

    const-string v3, "mp4"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/divx"

    const-string v3, "divx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_0
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSingletonTypicalAudioType()Lcom/android/mms/util/MessageMimeTypeMap;
    .locals 4

    .prologue
    .line 527
    const-class v1, Lcom/android/mms/util/MessageMimeTypeMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap_typicalAudio:Lcom/android/mms/util/MessageMimeTypeMap;

    if-nez v0, :cond_0

    .line 528
    new-instance v0, Lcom/android/mms/util/MessageMimeTypeMap;

    invoke-direct {v0}, Lcom/android/mms/util/MessageMimeTypeMap;-><init>()V

    sput-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap_typicalAudio:Lcom/android/mms/util/MessageMimeTypeMap;

    .line 531
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap_typicalAudio:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mp4"

    const-string v3, "mp4"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap_typicalAudio:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/3gpp"

    const-string v3, "3gp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_0
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap_typicalAudio:Lcom/android/mms/util/MessageMimeTypeMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "mimeType"
    .parameter "extension"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method


# virtual methods
.method public getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 173
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtensionListFromMimeType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 115
    .local v3, mimeTypeSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 116
    .local v1, getExtensionSet:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v1           #getExtensionSet:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object v0
.end method

.method public getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "extension"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .locals 1
    .parameter "extension"

    .prologue
    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 130
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
