.class public Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;
.super Landroid/os/Handler;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact$ContentObserverHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyHandler"
.end annotation


# static fields
.field private static PENDING_TIMEOUT:I


# instance fields
.field private mHasEvent:Z

.field private mIsPending:Z

.field private mObserver:Lcom/android/mms/data/Contact$ContentObserverHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2030
    const/16 v0, 0x7d0

    sput v0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->PENDING_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/android/mms/data/Contact$ContentObserverHandler;)V
    .locals 0
    .parameter "looper"
    .parameter "observer"

    .prologue
    .line 2033
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2034
    iput-object p2, p0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->mObserver:Lcom/android/mms/data/Contact$ContentObserverHandler;

    .line 2035
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->mIsPending:Z

    .line 2053
    iget-boolean v0, p0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->mHasEvent:Z

    if-eqz v0, :cond_0

    .line 2054
    invoke-virtual {p0}, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->onEvent()V

    .line 2056
    :cond_0
    return-void
.end method

.method public onEvent()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2038
    iget-boolean v0, p0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->mIsPending:Z

    if-eqz v0, :cond_0

    .line 2039
    iput-boolean v1, p0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->mHasEvent:Z

    .line 2046
    :goto_0
    return-void

    .line 2041
    :cond_0
    iput-boolean v1, p0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->mIsPending:Z

    .line 2042
    iput-boolean v2, p0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->mHasEvent:Z

    .line 2043
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->mObserver:Lcom/android/mms/data/Contact$ContentObserverHandler;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact$ContentObserverHandler;->performOnChanged()V

    .line 2044
    sget v0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->PENDING_TIMEOUT:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
