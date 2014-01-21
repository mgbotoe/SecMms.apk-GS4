.class public Lcom/quramsoft/qdio/QuramFileInputStream;
.super Ljava/lang/Object;
.source "QuramFileInputStream.java"


# instance fields
.field private position:I

.field private raf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "filename"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const/4 v1, 0x0

    iput v1, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I

    .line 19
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->raf:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 24
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 3

    .prologue
    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    long-to-int v1, v1

    .line 240
    :goto_0
    return v1

    .line 236
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 248
    const/4 v1, 0x0

    iput v1, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getByte()B
    .locals 3

    .prologue
    .line 106
    const/4 v2, 0x1

    new-array v0, v2, [B

    .line 111
    .local v0, byteVal:[B
    :try_start_0
    iget-object v2, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    iget v2, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I

    .line 120
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    return v2

    .line 113
    :catch_0
    move-exception v1

    .line 115
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getBytes([BI)V
    .locals 2
    .parameter "buffer"
    .parameter "read_counts"

    .prologue
    .line 143
    array-length v1, p1

    if-le v1, p2, :cond_0

    .line 155
    :goto_0
    return-void

    .line 149
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getBytes(I)[B
    .locals 3
    .parameter "read_counts"

    .prologue
    .line 125
    new-array v0, p1, [B

    .line 130
    .local v0, byteVal:[B
    :try_start_0
    iget-object v2, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    iget v2, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I

    .line 139
    return-object v0

    .line 132
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getFloat()F
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 30
    new-array v2, v3, [B

    .line 32
    .local v2, floatValWord:[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 37
    .local v0, buf:Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v3, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 45
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 48
    iget v3, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I

    .line 50
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    return v3

    .line 39
    :catch_0
    move-exception v1

    .line 41
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getInt()I
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 55
    new-array v2, v3, [B

    .line 57
    .local v2, intValWord:[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    .local v0, buf:Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v3, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 71
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 74
    iget v3, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I

    .line 76
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    return v3

    .line 65
    :catch_0
    move-exception v1

    .line 67
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getInts(I)[I
    .locals 11
    .parameter "read_counts"

    .prologue
    .line 159
    div-int/lit8 v9, p1, 0x4

    new-array v8, v9, [I

    .line 160
    .local v8, retVal:[I
    new-array v6, p1, [B

    .line 161
    .local v6, intVal:[B
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 166
    .local v2, buf:Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v9, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v9, v6}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 174
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 176
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 179
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    div-int/lit8 v9, p1, 0x4

    if-lt v5, v9, :cond_0

    .line 195
    return-object v8

    .line 168
    .end local v5           #i:I
    :catch_0
    move-exception v3

    .line 170
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v5       #i:I
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 182
    .local v7, r:B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 183
    .local v4, g:B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 184
    .local v1, b:B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 191
    .local v0, a:B
    and-int/lit16 v9, v0, 0xff

    shl-int/lit8 v9, v9, 0x18

    and-int/lit16 v10, v7, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    and-int/lit16 v10, v4, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    and-int/lit16 v10, v1, 0xff

    shl-int/lit8 v10, v10, 0x0

    or-int/2addr v9, v10

    aput v9, v8, v5

    .line 179
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I

    return v0
.end method

.method public getShort()S
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 81
    new-array v2, v3, [B

    .line 83
    .local v2, shortValWord:[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 88
    .local v0, buf:Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v3, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 96
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 99
    iget v3, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    return v3

    .line 90
    :catch_0
    move-exception v1

    .line 92
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public remaining()I
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/quramsoft/qdio/QuramFileInputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public seekFile(I)Z
    .locals 5
    .parameter "byteCountFromSET"

    .prologue
    const/4 v1, 0x0

    .line 215
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I

    .line 217
    iget-object v2, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 218
    iget-object v2, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 219
    iget v2, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->position:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    const/4 v1, 0x1

    .line 226
    :goto_0
    return v1

    .line 222
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public skipByte(I)V
    .locals 2
    .parameter "byteCount"

    .prologue
    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/quramsoft/qdio/QuramFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
