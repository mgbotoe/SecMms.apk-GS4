.class public Lcom/android/mms/help/MessageDetails;
.super Ljava/lang/Object;
.source "MessageDetails.java"


# instance fields
.field from:Ljava/lang/String;

.field icon:I

.field sub:Ljava/lang/String;

.field time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/android/mms/help/MessageDetails;->icon:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/mms/help/MessageDetails;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getSub()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/mms/help/MessageDetails;->sub:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/mms/help/MessageDetails;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 26
    iput p1, p0, Lcom/android/mms/help/MessageDetails;->icon:I

    .line 27
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/mms/help/MessageDetails;->from:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setSub(Ljava/lang/String;)V
    .locals 0
    .parameter "sub"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/mms/help/MessageDetails;->sub:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/mms/help/MessageDetails;->time:Ljava/lang/String;

    .line 35
    return-void
.end method
