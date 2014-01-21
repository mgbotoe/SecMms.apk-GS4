.class public abstract Lcom/tencent/engine/IEngineService$Stub;
.super Landroid/os/Binder;
.source "IEngineService.java"

# interfaces
.implements Lcom/tencent/engine/IEngineService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/engine/IEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/engine/IEngineService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.engine.IEngineService"

.field static final TRANSACTION_checkVersionInfo:I = 0x3

.field static final TRANSACTION_getInterceptResult:I = 0x1

.field static final TRANSACTION_updateRuleInfo:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.tencent.engine.IEngineService"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/engine/IEngineService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/engine/IEngineService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.tencent.engine.IEngineService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tencent/engine/IEngineService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/tencent/engine/IEngineService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/tencent/engine/IEngineService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/tencent/engine/IEngineService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.tencent.engine.IEngineService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.tencent.engine.IEngineService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/tencent/engine/IEngineService$Stub;->getInterceptResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 53
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 59
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_2
    const-string v5, "com.tencent.engine.IEngineService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 62
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Lcom/tencent/engine/IEngineService$Stub;->updateRuleInfo([B)Z

    move-result v2

    .line 63
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 70
    .end local v0           #_arg0:[B
    .end local v2           #_result:Z
    :sswitch_3
    const-string v5, "com.tencent.engine.IEngineService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    sget-object v5, Lcom/tencent/engine/BinderVersionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/engine/BinderVersionInfo;

    .line 78
    .local v0, _arg0:Lcom/tencent/engine/BinderVersionInfo;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/tencent/engine/IEngineService$Stub;->checkVersionInfo(Lcom/tencent/engine/BinderVersionInfo;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {v0, p3, v4}, Lcom/tencent/engine/BinderVersionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:Lcom/tencent/engine/BinderVersionInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/tencent/engine/BinderVersionInfo;
    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
