.class public Lcom/android/mms/dom/smil/SmilParElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source "SmilParElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILParElement;


# static fields
.field private static SMIL_DEFAULT_PAR_TIME:F = 0.0f

.field private static SMIL_MINIMUM_PAR_TIME:F = 0.0f

.field private static SMIL_MODIFIED_PAR_TIME:F = 0.0f

.field public static final SMIL_SLIDE_END_EVENT:Ljava/lang/String; = "SmilSlideEnd"

.field public static final SMIL_SLIDE_START_EVENT:Ljava/lang/String; = "SmilSlideStart"


# instance fields
.field mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, 0x40a0

    .line 41
    sput v0, Lcom/android/mms/dom/smil/SmilParElementImpl;->SMIL_MINIMUM_PAR_TIME:F

    .line 43
    sput v0, Lcom/android/mms/dom/smil/SmilParElementImpl;->SMIL_MODIFIED_PAR_TIME:F

    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/dom/smil/SmilParElementImpl;->SMIL_DEFAULT_PAR_TIME:F

    return-void
.end method

.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 1
    .parameter "owner"
    .parameter "tagName"

    .prologue
    .line 108
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/android/mms/dom/smil/SmilParElementImpl$1;

    invoke-direct {v0, p0, p0}, Lcom/android/mms/dom/smil/SmilParElementImpl$1;-><init>(Lcom/android/mms/dom/smil/SmilParElementImpl;Lorg/w3c/dom/smil/SMILElement;)V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    .line 109
    return-void
.end method


# virtual methods
.method public beginElement()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->beginElement()Z

    move-result v0

    return v0
.end method

.method public endElement()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->endElement()Z

    move-result v0

    return v0
.end method

.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 1
    .parameter "instant"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method getBeginConstraints()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x2

    return v0
.end method

.method public getDur()F
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getDur()F

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 160
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMediaDuration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget v0, Lcom/android/mms/dom/smil/SmilParElementImpl;->SMIL_DEFAULT_PAR_TIME:F

    .line 166
    :goto_0
    return v0

    .line 163
    :cond_0
    sget v0, Lcom/android/mms/dom/smil/SmilParElementImpl;->SMIL_MODIFIED_PAR_TIME:F

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getDur()F

    move-result v0

    goto :goto_0
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getEndSync()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getEndSync()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFill()S
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getFill()S

    move-result v0

    return v0
.end method

.method public getFillDefault()S
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getFillDefault()S

    move-result v0

    return v0
.end method

.method public getImplicitDuration()F
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getImplicitDuration()F

    move-result v0

    return v0
.end method

.method public getRepeatCount()F
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getRepeatCount()F

    move-result v0

    return v0
.end method

.method public getRepeatDur()F
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getRepeatDur()F

    move-result v0

    return v0
.end method

.method public getRestart()S
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getRestart()S

    move-result v0

    return v0
.end method

.method public getTimeChildren()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public pauseElement()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->pauseElement()V

    .line 195
    return-void
.end method

.method public resumeElement()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->resumeElement()V

    .line 199
    return-void
.end method

.method public seekElement(F)V
    .locals 1
    .parameter "seekTo"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->seekElement(F)V

    .line 203
    return-void
.end method

.method public setBegin(Lorg/w3c/dom/smil/TimeList;)V
    .locals 1
    .parameter "begin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setBegin(Lorg/w3c/dom/smil/TimeList;)V

    .line 207
    return-void
.end method

.method public setDur(F)V
    .locals 1
    .parameter "dur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setDur(F)V

    .line 211
    return-void
.end method

.method public setEnd(Lorg/w3c/dom/smil/TimeList;)V
    .locals 1
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setEnd(Lorg/w3c/dom/smil/TimeList;)V

    .line 215
    return-void
.end method

.method public setEndSync(Ljava/lang/String;)V
    .locals 1
    .parameter "endSync"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setEndSync(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public setFill(S)V
    .locals 1
    .parameter "fill"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setFill(S)V

    .line 219
    return-void
.end method

.method public setFillDefault(S)V
    .locals 1
    .parameter "fillDefault"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setFillDefault(S)V

    .line 223
    return-void
.end method

.method public setRepeatCount(F)V
    .locals 1
    .parameter "repeatCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setRepeatCount(F)V

    .line 227
    return-void
.end method

.method public setRepeatDur(F)V
    .locals 1
    .parameter "repeatDur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setRepeatDur(F)V

    .line 231
    return-void
.end method

.method public setRestart(S)V
    .locals 1
    .parameter "restart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setRestart(S)V

    .line 235
    return-void
.end method
