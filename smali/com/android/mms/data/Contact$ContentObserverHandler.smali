.class Lcom/android/mms/data/Contact$ContentObserverHandler;
.super Landroid/database/ContentObserver;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentObserverHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 2011
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2012
    new-instance v0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;-><init>(Landroid/os/Looper;Lcom/android/mms/data/Contact$ContentObserverHandler;)V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContentObserverHandler;->mHandler:Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;

    .line 2013
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 2017
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2018
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContentObserverHandler;->mHandler:Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->onEvent()V

    .line 2019
    return-void
.end method

.method public performOnChanged()V
    .locals 0

    .prologue
    .line 2022
    invoke-static {}, Lcom/android/mms/data/Contact;->performUpdate()V

    .line 2023
    return-void
.end method
