.class Lcom/android/mms/help/AirButtonMainActivity$3$1;
.super Ljava/lang/Object;
.source "AirButtonMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/help/AirButtonMainActivity$3;->onShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/help/AirButtonMainActivity$3;


# direct methods
.method constructor <init>(Lcom/android/mms/help/AirButtonMainActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/mms/help/AirButtonMainActivity$3$1;->this$1:Lcom/android/mms/help/AirButtonMainActivity$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity$3$1;->this$1:Lcom/android/mms/help/AirButtonMainActivity$3;

    iget-object v0, v0, Lcom/android/mms/help/AirButtonMainActivity$3;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v0, v0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->show()V

    .line 672
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity$3$1;->this$1:Lcom/android/mms/help/AirButtonMainActivity$3;

    iget-object v0, v0, Lcom/android/mms/help/AirButtonMainActivity$3;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    #getter for: Lcom/android/mms/help/AirButtonMainActivity;->helpguide2:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/mms/help/AirButtonMainActivity;->access$100(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 673
    return-void
.end method
