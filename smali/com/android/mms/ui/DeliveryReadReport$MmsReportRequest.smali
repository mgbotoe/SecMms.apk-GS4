.class final Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;
.super Ljava/lang/Object;
.source "DeliveryReadReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeliveryReadReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmsReportRequest"
.end annotation


# instance fields
.field private final mIsDeliveryReportRequsted:Z

.field private final mIsReadReportRequested:Z

.field private final mRecipient:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 4
    .parameter "recipient"
    .parameter "drValue"
    .parameter "rrValue"

    .prologue
    const/16 v3, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 657
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p1, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;->mRecipient:Ljava/lang/String;

    .line 659
    if-ne p2, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;->mIsDeliveryReportRequsted:Z

    .line 660
    if-ne p3, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;->mIsReadReportRequested:Z

    .line 661
    return-void

    :cond_0
    move v0, v2

    .line 659
    goto :goto_0

    :cond_1
    move v1, v2

    .line 660
    goto :goto_1
.end method


# virtual methods
.method public getRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method public isDeliveryReportRequested()Z
    .locals 1

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;->mIsDeliveryReportRequsted:Z

    return v0
.end method

.method public isReadReportRequested()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;->mIsReadReportRequested:Z

    return v0
.end method
