.class public abstract Lcom/tencent/update/IBinderUpdateListener$Stub;
.super Landroid/os/Binder;
.source "IBinderUpdateListener.java"

# interfaces
.implements Lcom/tencent/update/IBinderUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/update/IBinderUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/update/IBinderUpdateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.update.IBinderUpdateListener"

.field static final TRANSACTION_onProgressChanged:I = 0x1

.field static final TRANSACTION_onUpdateCanceled:I = 0x5

.field static final TRANSACTION_onUpdateEvent:I = 0x2

.field static final TRANSACTION_onUpdateFinished:I = 0x3

.field static final TRANSACTION_onUpdateStarted:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.tencent.update.IBinderUpdateListener"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/update/IBinderUpdateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/update/IBinderUpdateListener;
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
    const-string v1, "com.tencent.update.IBinderUpdateListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tencent/update/IBinderUpdateListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/tencent/update/IBinderUpdateListener;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/tencent/update/IBinderUpdateListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/tencent/update/IBinderUpdateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.tencent.update.IBinderUpdateListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.tencent.update.IBinderUpdateListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    sget-object v3, Lcom/tencent/update/BinderUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/update/BinderUpdateInfo;

    .line 56
    .local v0, _arg0:Lcom/tencent/update/BinderUpdateInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/tencent/update/IBinderUpdateListener$Stub;->onProgressChanged(Lcom/tencent/update/BinderUpdateInfo;I)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v0, p3, v2}, Lcom/tencent/update/BinderUpdateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 53
    .end local v0           #_arg0:Lcom/tencent/update/BinderUpdateInfo;
    .end local v1           #_arg1:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/tencent/update/BinderUpdateInfo;
    goto :goto_1

    .line 64
    .restart local v1       #_arg1:I
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v0           #_arg0:Lcom/tencent/update/BinderUpdateInfo;
    .end local v1           #_arg1:I
    :sswitch_2
    const-string v3, "com.tencent.update.IBinderUpdateListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    sget-object v3, Lcom/tencent/update/BinderUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/update/BinderUpdateInfo;

    .line 79
    .restart local v0       #_arg0:Lcom/tencent/update/BinderUpdateInfo;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/tencent/update/IBinderUpdateListener$Stub;->onUpdateEvent(Lcom/tencent/update/BinderUpdateInfo;I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {v0, p3, v2}, Lcom/tencent/update/BinderUpdateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:Lcom/tencent/update/BinderUpdateInfo;
    .end local v1           #_arg1:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/tencent/update/BinderUpdateInfo;
    goto :goto_2

    .line 87
    .restart local v1       #_arg1:I
    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v0           #_arg0:Lcom/tencent/update/BinderUpdateInfo;
    .end local v1           #_arg1:I
    :sswitch_3
    const-string v3, "com.tencent.update.IBinderUpdateListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/tencent/update/IBinderUpdateListener$Stub;->onUpdateFinished()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    :sswitch_4
    const-string v3, "com.tencent.update.IBinderUpdateListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/tencent/update/IBinderUpdateListener$Stub;->onUpdateStarted()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 107
    :sswitch_5
    const-string v3, "com.tencent.update.IBinderUpdateListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/tencent/update/IBinderUpdateListener$Stub;->onUpdateCanceled()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
