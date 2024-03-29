.class public abstract Lcom/android/mms/transaction/ISnsRemoteService$Stub;
.super Landroid/os/Binder;
.source "ISnsRemoteService.java"

# interfaces
.implements Lcom/android/mms/transaction/ISnsRemoteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/ISnsRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/ISnsRemoteService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.mms.transaction.ISnsRemoteService"

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.mms.transaction.ISnsRemoteService"

    invoke-virtual {p0, p0, v0}, Lcom/android/mms/transaction/ISnsRemoteService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/mms/transaction/ISnsRemoteService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.android.mms.transaction.ISnsRemoteService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/mms/transaction/ISnsRemoteService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/android/mms/transaction/ISnsRemoteService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/android/mms/transaction/ISnsRemoteService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/mms/transaction/ISnsRemoteService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v1, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 46
    :sswitch_0
    const-string v2, "com.android.mms.transaction.ISnsRemoteService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v2, "com.android.mms.transaction.ISnsRemoteService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/ISnsRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/mms/transaction/ISnsRemoteServiceCallback;

    move-result-object v0

    .line 54
    .local v0, _arg0:Lcom/android/mms/transaction/ISnsRemoteServiceCallback;
    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/ISnsRemoteService$Stub;->registerCallback(Lcom/android/mms/transaction/ISnsRemoteServiceCallback;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0           #_arg0:Lcom/android/mms/transaction/ISnsRemoteServiceCallback;
    :sswitch_2
    const-string v2, "com.android.mms.transaction.ISnsRemoteService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/ISnsRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/mms/transaction/ISnsRemoteServiceCallback;

    move-result-object v0

    .line 63
    .restart local v0       #_arg0:Lcom/android/mms/transaction/ISnsRemoteServiceCallback;
    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/ISnsRemoteService$Stub;->unregisterCallback(Lcom/android/mms/transaction/ISnsRemoteServiceCallback;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
