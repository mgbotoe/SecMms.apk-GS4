.class public Lorg/mime4j/decoder/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"


# instance fields
.field private buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

.field private initialCapacity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lorg/mime4j/decoder/ByteQueue;->initialCapacity:I

    .line 27
    new-instance v0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-direct {v0}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;-><init>()V

    iput-object v0, p0, Lorg/mime4j/decoder/ByteQueue;->buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lorg/mime4j/decoder/ByteQueue;->initialCapacity:I

    .line 31
    new-instance v0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-direct {v0, p1}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mime4j/decoder/ByteQueue;->buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    .line 32
    iput p1, p0, Lorg/mime4j/decoder/ByteQueue;->initialCapacity:I

    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lorg/mime4j/decoder/ByteQueue;->initialCapacity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 49
    new-instance v0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    iget v1, p0, Lorg/mime4j/decoder/ByteQueue;->initialCapacity:I

    invoke-direct {v0, v1}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mime4j/decoder/ByteQueue;->buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-direct {v0}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;-><init>()V

    iput-object v0, p0, Lorg/mime4j/decoder/ByteQueue;->buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    goto :goto_0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/mime4j/decoder/ByteQueue;->buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result v0

    return v0
.end method

.method public dequeue()B
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/mime4j/decoder/ByteQueue;->buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->remove()B

    move-result v0

    return v0
.end method

.method public enqueue(B)V
    .locals 1
    .parameter "b"

    .prologue
    .line 36
    iget-object v0, p0, Lorg/mime4j/decoder/ByteQueue;->buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v0, p1}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->add(B)Z

    .line 37
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/mime4j/decoder/ByteQueue;->buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
