.class Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;
.super Landroid/os/CountDownTimer;
.source "AirButtonMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/help/AirButtonMainActivity$4;->onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AirbuttonStartTimer"
.end annotation


# instance fields
.field mView:Landroid/view/View;

.field final synthetic this$1:Lcom/android/mms/help/AirButtonMainActivity$4;


# direct methods
.method public constructor <init>(Lcom/android/mms/help/AirButtonMainActivity$4;JJ)V
    .locals 0
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 788
    iput-object p1, p0, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;->this$1:Lcom/android/mms/help/AirButtonMainActivity$4;

    .line 789
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 790
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 798
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer$1;

    invoke-direct {v1, p0}, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer$1;-><init>(Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 806
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "l"

    .prologue
    .line 810
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;->mView:Landroid/view/View;

    .line 794
    return-void
.end method
