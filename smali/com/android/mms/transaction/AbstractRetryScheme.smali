.class public abstract Lcom/android/mms/transaction/AbstractRetryScheme;
.super Ljava/lang/Object;
.source "AbstractRetryScheme.java"


# static fields
.field public static final INCOMING:I = 0x2

.field public static final OUTGOING:I = 0x1


# instance fields
.field protected mRetriedTimes:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "retriedTimes"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 29
    return-void
.end method


# virtual methods
.method public abstract getRetryLimit()I
.end method

.method public abstract getWaitingInterval()J
.end method
