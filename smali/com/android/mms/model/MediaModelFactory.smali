.class public Lcom/android/mms/model/MediaModelFactory;
.super Ljava/lang/Object;
.source "MediaModelFactory.java"


# static fields
.field private static final CID_COLON:Ljava/lang/String; = "cid:"

.field private static final CID_COLON_CAP:Ljava/lang/String; = "Cid:"

.field private static final TAG:Ljava/lang/String; = "Mms/media"

.field private static final X_VCARD_TYPE1:Ljava/lang/String; = "x-vCard"

.field private static final X_VCARD_TYPE2:Ljava/lang/String; = "x-vcard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEmptyTextModel(Landroid/content/Context;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;
    .locals 7
    .parameter "context"
    .parameter "wrapper"
    .parameter "regionModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 284
    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/mms/model/TextModel;

    const-string v2, "text/plain"

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/mms/model/TextModel;

    const-string v1, "text/plain"

    invoke-direct {v0, p0, v1, v3, p2}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    goto :goto_0
.end method

.method public static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 250
    const-string v0, "&lt;"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 24
    .parameter "pb"
    .parameter "src"

    .prologue
    .line 85
    const/16 v17, 0x0

    .line 86
    .local v17, part:Lcom/google/android/mms/pdu/PduPart;
    const/4 v9, 0x0

    .line 87
    .local v9, index:I
    const/4 v6, 0x0

    .line 88
    .local v6, extention:Ljava/lang/String;
    const/4 v12, 0x0

    .line 89
    .local v12, mimeType:Ljava/lang/String;
    const/4 v15, 0x0

    .line 90
    .local v15, newSrc:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v5, extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 93
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/MediaModelFactory;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 94
    const-string v21, "cid:"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 95
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "<"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "cid:"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, ">"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v17

    .line 121
    :cond_0
    :goto_0
    if-nez v17, :cond_4

    .line 123
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v13

    .line 124
    .local v13, mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    if-eqz p1, :cond_1

    .line 125
    const/16 v21, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 126
    add-int/lit8 v21, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 128
    :cond_1
    invoke-virtual {v13, v6}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 129
    if-eqz v12, :cond_4

    .line 130
    invoke-virtual {v13, v12}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionListFromMimeType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 131
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 133
    .local v3, arrayListSize:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v3, :cond_4

    .line 134
    if-eqz p1, :cond_2

    .line 135
    const/16 v21, 0x0

    add-int/lit8 v22, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 137
    :cond_2
    const-string v21, "cid:"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 138
    const-string v21, "cid:"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 142
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v17

    .line 143
    if-eqz v17, :cond_11

    .line 152
    .end local v3           #arrayListSize:I
    .end local v8           #i:I
    .end local v13           #mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    :cond_4
    if-nez v17, :cond_7

    .line 153
    const/4 v11, -0x1

    .line 154
    .local v11, mediaSrcIndex:I
    if-eqz p1, :cond_5

    .line 155
    const/16 v21, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 156
    :cond_5
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v11, v0, :cond_7

    .line 157
    const/4 v10, 0x0

    .line 158
    .local v10, mediaSrc:Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 159
    const/16 v21, 0x0

    const/16 v22, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 160
    :cond_6
    if-eqz v10, :cond_7

    .line 161
    const-string v21, "cid:"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 162
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "<"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "cid:"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, ">"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v17

    .line 186
    .end local v10           #mediaSrc:Ljava/lang/String;
    .end local v11           #mediaSrcIndex:I
    :cond_7
    :goto_3
    if-nez v17, :cond_b

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v18

    .line 188
    .local v18, partsNum:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_4
    move/from16 v0, v18

    if-ge v8, v0, :cond_b

    .line 189
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v20

    .line 190
    .local v20, tmpPart:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v20, :cond_16

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v21

    if-eqz v21, :cond_16

    .line 191
    new-instance v7, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    .line 192
    .local v7, fileName:Ljava/lang/String;
    const/4 v14, 0x0

    .line 193
    .local v14, newFileName:Ljava/lang/String;
    const/16 v21, 0x2e

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    if-lez v21, :cond_8

    .line 194
    const/16 v21, 0x0

    const/16 v22, 0x2e

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    .end local v14           #newFileName:Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 196
    .restart local v14       #newFileName:Ljava/lang/String;
    :cond_8
    move-object/from16 v10, p1

    .line 197
    .restart local v10       #mediaSrc:Ljava/lang/String;
    if-eqz p1, :cond_16

    .line 198
    const/16 v21, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    .line 199
    const/16 v21, 0x0

    const/16 v22, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 200
    const-string v21, "cid:"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_9

    const-string v21, "Cid:"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 201
    :cond_9
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 208
    :cond_a
    :goto_5
    if-eqz v14, :cond_16

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 209
    move-object/from16 v17, v20

    .line 219
    .end local v7           #fileName:Ljava/lang/String;
    .end local v8           #i:I
    .end local v10           #mediaSrc:Ljava/lang/String;
    .end local v14           #newFileName:Ljava/lang/String;
    .end local v18           #partsNum:I
    .end local v20           #tmpPart:Lcom/google/android/mms/pdu/PduPart;
    :cond_b
    if-nez v17, :cond_18

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v16

    .line 225
    .local v16, num:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_6
    move/from16 v0, v16

    if-ge v8, v0, :cond_18

    .line 226
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v20

    .line 227
    .restart local v20       #tmpPart:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v19

    .line 228
    .local v19, tmpData:[B
    if-nez v19, :cond_17

    .line 225
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 96
    .end local v8           #i:I
    .end local v16           #num:I
    .end local v19           #tmpData:[B
    .end local v20           #tmpPart:Lcom/google/android/mms/pdu/PduPart;
    :cond_d
    const-string v21, "Cid:"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 97
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "<"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "Cid:"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, ">"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v17

    goto/16 :goto_0

    .line 99
    :cond_e
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "<"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, ">"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v17

    .line 100
    if-nez v17, :cond_f

    .line 101
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v17

    .line 103
    :cond_f
    if-nez v17, :cond_0

    .line 104
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v17

    .line 105
    if-nez v17, :cond_0

    .line 106
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v17

    .line 108
    if-nez v17, :cond_0

    .line 109
    const/16 v21, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 110
    add-int/lit8 v21, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 111
    const/16 v21, 0x0

    add-int/lit8 v22, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 112
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v17

    goto/16 :goto_0

    .line 139
    .restart local v3       #arrayListSize:I
    .restart local v8       #i:I
    .restart local v13       #mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    :cond_10
    const-string v21, "Cid:"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 140
    const-string v21, "Cid:"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 133
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 164
    .end local v3           #arrayListSize:I
    .end local v8           #i:I
    .end local v13           #mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    .restart local v10       #mediaSrc:Ljava/lang/String;
    .restart local v11       #mediaSrcIndex:I
    :cond_12
    const-string v21, "Cid:"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 165
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "<"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "Cid:"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, ">"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v17

    goto/16 :goto_3

    .line 169
    :cond_13
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "<"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, ">"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v17

    .line 170
    if-nez v17, :cond_7

    .line 171
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v17

    .line 172
    if-nez v17, :cond_7

    .line 173
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v17

    .line 174
    if-nez v17, :cond_7

    .line 175
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v17

    goto/16 :goto_3

    .line 204
    .end local v11           #mediaSrcIndex:I
    .restart local v7       #fileName:Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v14       #newFileName:Ljava/lang/String;
    .restart local v18       #partsNum:I
    .restart local v20       #tmpPart:Lcom/google/android/mms/pdu/PduPart;
    :cond_14
    const-string v21, "cid:"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_15

    const-string v21, "Cid:"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 205
    :cond_15
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    .line 188
    .end local v7           #fileName:Ljava/lang/String;
    .end local v10           #mediaSrc:Ljava/lang/String;
    .end local v14           #newFileName:Ljava/lang/String;
    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 231
    .end local v18           #partsNum:I
    .restart local v16       #num:I
    .restart local v19       #tmpData:[B
    :cond_17
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v21 .. v21}, Lorg/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, decodedContentLocation:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 234
    move-object/from16 v17, v20

    .line 235
    const-string v21, "Mms/media"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "cl is a encoded string:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v4           #decodedContentLocation:Ljava/lang/String;
    .end local v8           #i:I
    .end local v16           #num:I
    .end local v19           #tmpData:[B
    .end local v20           #tmpPart:Lcom/google/android/mms/pdu/PduPart;
    :cond_18
    if-eqz v17, :cond_19

    .line 242
    return-object v17

    .line 245
    :cond_19
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "No part found for the model."

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method private static getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;I)Lcom/android/mms/model/MediaModel;
    .locals 23
    .parameter "context"
    .parameter "tag"
    .parameter "src"
    .parameter "sme"
    .parameter "part"
    .parameter "regionModel"
    .parameter "parDuration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v17

    .line 293
    .local v17, bytes:[B
    if-nez v17, :cond_0

    .line 294
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Content-Type of the part may not be null."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 297
    :cond_0
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 298
    .local v4, contentType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 299
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 303
    new-instance v7, Lcom/android/mms/drm/DrmWrapper;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v7, v4, v0, v1}, Lcom/android/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;)V

    .line 304
    .local v7, wrapper:Lcom/android/mms/drm/DrmWrapper;
    const-string v3, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 305
    new-instance v2, Lcom/android/mms/model/TextModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v6

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 381
    .end local v7           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    :cond_1
    :goto_0
    const/16 v16, 0x0

    .line 382
    .local v16, begin:I
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v21

    .line 383
    .local v21, tl:Lorg/w3c/dom/smil/TimeList;
    if-eqz v21, :cond_2

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v3

    if-lez v3, :cond_2

    .line 385
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v20

    .line 386
    .local v20, t:Lorg/w3c/dom/smil/Time;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v5

    const-wide v9, 0x408f400000000000L

    mul-double/2addr v5, v9

    double-to-int v0, v5

    move/from16 v16, v0

    .line 388
    .end local v20           #t:Lorg/w3c/dom/smil/Time;
    :cond_2
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/mms/model/MediaModel;->setBegin(I)V

    .line 391
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getDur()F

    move-result v3

    const/high16 v5, 0x447a

    mul-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v19, v0

    .line 392
    .local v19, duration:I
    if-gtz v19, :cond_4

    .line 393
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v21

    .line 394
    if-eqz v21, :cond_4

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v3

    if-lez v3, :cond_4

    .line 396
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v20

    .line 397
    .restart local v20       #t:Lorg/w3c/dom/smil/Time;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/Time;->getTimeType()I

    move-result v3

    if-eqz v3, :cond_4

    .line 398
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v5

    const-wide v9, 0x408f400000000000L

    mul-double/2addr v5, v9

    double-to-int v3, v5

    sub-int v19, v3, v16

    .line 400
    if-nez v19, :cond_4

    instance-of v3, v2, Lcom/android/mms/model/AudioModel;

    if-nez v3, :cond_3

    instance-of v3, v2, Lcom/android/mms/model/VideoModel;

    if-eqz v3, :cond_4

    .line 402
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    mul-int/lit16 v0, v3, 0x3e8

    move/from16 v19, v0

    .line 403
    const-string v3, "Mms:app"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 404
    const-string v3, "Mms/media"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaModelFactory] compute new duration for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .end local v20           #t:Lorg/w3c/dom/smil/Time;
    :cond_4
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v22

    .line 413
    .local v22, type:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 414
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v22

    .line 416
    :cond_5
    instance-of v3, v2, Lcom/android/mms/model/ImageModel;

    if-eqz v3, :cond_6

    const-string v3, "image/gif"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 417
    move/from16 v19, p6

    .line 420
    :cond_6
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 423
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getFill()S

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    .line 424
    return-object v2

    .line 307
    .end local v16           #begin:I
    .end local v19           #duration:I
    .end local v21           #tl:Lorg/w3c/dom/smil/TimeList;
    .end local v22           #type:Ljava/lang/String;
    .restart local v7       #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :cond_7
    const-string v3, "img"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 308
    new-instance v2, Lcom/android/mms/model/ImageModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object v12, v7

    move-object/from16 v13, p5

    move/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;I)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 309
    :cond_8
    const-string v3, "video"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 310
    new-instance v2, Lcom/android/mms/model/VideoModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object v12, v7

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 311
    :cond_9
    const-string v3, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 312
    new-instance v2, Lcom/android/mms/model/AudioModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v4, v1, v7}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 313
    :cond_a
    const-string v3, "ref"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 314
    invoke-virtual {v7}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v18

    .line 315
    .local v18, drmContentType:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 316
    new-instance v2, Lcom/android/mms/model/TextModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v6

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 318
    :cond_b
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 319
    new-instance v2, Lcom/android/mms/model/ImageModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object v12, v7

    move-object/from16 v13, p5

    move/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;I)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 321
    :cond_c
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 322
    new-instance v2, Lcom/android/mms/model/VideoModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object v12, v7

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 323
    :cond_d
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 324
    new-instance v2, Lcom/android/mms/model/AudioModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v4, v1, v7}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 326
    :cond_e
    const-string v3, "Mms/media"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaModelFactory] getGenericMediaModel Unsupported Content-Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/MediaModelFactory;->createEmptyTextModel(Landroid/content/Context;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    goto/16 :goto_0

    .line 331
    .end local v18           #drmContentType:Ljava/lang/String;
    :cond_f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported TAG: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 334
    .end local v7           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :cond_10
    const-string v3, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 336
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "x-vCard"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "x-vcard"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 338
    :cond_11
    new-instance v8, Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lcom/samsung/mms/model/LocationVcardModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 339
    .local v8, l:Lcom/samsung/mms/model/LocationVcardModel;
    if-eqz v8, :cond_12

    invoke-virtual {v8}, Lcom/samsung/mms/model/LocationVcardModel;->isLocation()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 341
    const-string v3, "NGM"

    const-string v5, "This is a location Media Model"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    move-object v2, v8

    .line 346
    .end local v8           #l:Lcom/samsung/mms/model/LocationVcardModel;
    :cond_12
    if-nez v2, :cond_1

    .line 348
    const-string v3, "NGM"

    const-string v5, "This is not a location Media Model"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v2, Lcom/android/mms/model/TextModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v13

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v14

    move-object v9, v2

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v12, p2

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 351
    :cond_13
    const-string v3, "img"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 352
    new-instance v2, Lcom/android/mms/model/ImageModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v13

    move-object v9, v2

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v12, p2

    move-object/from16 v14, p5

    move/from16 v15, p6

    invoke-direct/range {v9 .. v15}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;I)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 354
    :cond_14
    const-string v3, "video"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 355
    new-instance v2, Lcom/android/mms/model/VideoModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v13

    move-object v9, v2

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v12, p2

    move-object/from16 v14, p5

    invoke-direct/range {v9 .. v14}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 356
    :cond_15
    const-string v3, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 357
    new-instance v2, Lcom/android/mms/model/AudioModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 358
    :cond_16
    const-string v3, "ref"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 359
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 360
    new-instance v2, Lcom/android/mms/model/TextModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v13

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v14

    move-object v9, v2

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v12, p2

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 362
    :cond_17
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 363
    new-instance v2, Lcom/android/mms/model/ImageModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v13

    move-object v9, v2

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v12, p2

    move-object/from16 v14, p5

    move/from16 v15, p6

    invoke-direct/range {v9 .. v15}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;I)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 365
    :cond_18
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 366
    new-instance v2, Lcom/android/mms/model/VideoModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v13

    move-object v9, v2

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v12, p2

    move-object/from16 v14, p5

    invoke-direct/range {v9 .. v14}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 368
    :cond_19
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 369
    new-instance v2, Lcom/android/mms/model/AudioModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 371
    :cond_1a
    const-string v3, "Mms/media"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaModelFactory] getGenericMediaModel Unsupported Content-Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1}, Lcom/android/mms/model/MediaModelFactory;->createEmptyTextModel(Landroid/content/Context;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    goto/16 :goto_0

    .line 376
    :cond_1b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported TAG: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;
    .locals 14
    .parameter "context"
    .parameter "sme"
    .parameter "layouts"
    .parameter "pb"
    .parameter "parDuration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, tag:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, src:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/mms/model/MediaModelFactory;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 58
    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableParsingAudioFilenameFromPart()Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    const-string v1, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    new-instance v3, Ljava/lang/String;

    .end local v3           #src:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 64
    .restart local v3       #src:Ljava/lang/String;
    const-string v1, "Mms/media"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set audio filename from part,len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    invoke-static {v3}, Lorg/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    instance-of v1, p1, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    if-eqz v1, :cond_2

    move-object v4, p1

    .line 77
    check-cast v4, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v1, p0

    move-object/from16 v5, p2

    move/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/mms/model/MediaModelFactory;->getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;I)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    .line 80
    :goto_1
    return-object v1

    .line 68
    :cond_1
    const-string v1, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v3, Ljava/lang/String;

    .end local v3           #src:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 70
    .restart local v3       #src:Ljava/lang/String;
    const-string v1, "Mms/media"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set audio filename from content location,len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, v2

    move-object v9, v3

    move-object v10, p1

    move-object v11, v6

    move/from16 v13, p4

    invoke-static/range {v7 .. v13}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;I)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    goto :goto_1
.end method

.method private static getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;I)Lcom/android/mms/model/MediaModel;
    .locals 9
    .parameter "context"
    .parameter "tag"
    .parameter "src"
    .parameter "srme"
    .parameter "layouts"
    .parameter "part"
    .parameter "parDuration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-interface {p3}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->getRegion()Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v8

    .line 257
    .local v8, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    if-eqz v8, :cond_0

    .line 258
    invoke-interface {v8}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 259
    .local v5, region:Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v6, p6

    .line 260
    invoke-static/range {v0 .. v6}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    .line 263
    .end local v5           #region:Lcom/android/mms/model/RegionModel;
    :cond_0
    const/4 v7, 0x0

    .line 265
    .local v7, rId:Ljava/lang/String;
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    const-string v7, "Text"

    .line 271
    :goto_1
    invoke-virtual {p4, v7}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 272
    .restart local v5       #region:Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v6, p6

    .line 273
    invoke-static/range {v0 .. v6}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    goto :goto_0

    .line 268
    .end local v5           #region:Lcom/android/mms/model/RegionModel;
    :cond_1
    const-string v7, "Image"

    goto :goto_1

    .line 277
    .end local v7           #rId:Ljava/lang/String;
    .restart local v5       #region:Lcom/android/mms/model/RegionModel;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Region not found or bad region ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
