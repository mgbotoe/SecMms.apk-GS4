.class Lcom/android/mms/help/AirButtonMainActivity$3;
.super Ljava/lang/Object;
.source "AirButtonMainActivity.java"

# interfaces
.implements Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/help/AirButtonMainActivity;->createWidgetFromView(Landroid/view/View;)Lcom/samsung/android/airbutton/AirButtonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/help/AirButtonMainActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/help/AirButtonMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/mms/help/AirButtonMainActivity$3;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 686
    return-void
.end method

.method public onShow()V
    .locals 4

    .prologue
    .line 669
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/help/AirButtonMainActivity$3$1;

    invoke-direct {v1, p0}, Lcom/android/mms/help/AirButtonMainActivity$3$1;-><init>(Lcom/android/mms/help/AirButtonMainActivity$3;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 676
    return-void
.end method
