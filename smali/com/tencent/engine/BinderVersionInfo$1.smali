.class final Lcom/tencent/engine/BinderVersionInfo$1;
.super Ljava/lang/Object;
.source "BinderVersionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/engine/BinderVersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tencent/engine/BinderVersionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/engine/BinderVersionInfo;
    .locals 2
    .parameter "in"

    .prologue
    .line 23
    new-instance v0, Lcom/tencent/engine/BinderVersionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/engine/BinderVersionInfo;-><init>(Landroid/os/Parcel;Lcom/tencent/engine/BinderVersionInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/tencent/engine/BinderVersionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/engine/BinderVersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/engine/BinderVersionInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 27
    new-array v0, p1, [Lcom/tencent/engine/BinderVersionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/tencent/engine/BinderVersionInfo$1;->newArray(I)[Lcom/tencent/engine/BinderVersionInfo;

    move-result-object v0

    return-object v0
.end method
