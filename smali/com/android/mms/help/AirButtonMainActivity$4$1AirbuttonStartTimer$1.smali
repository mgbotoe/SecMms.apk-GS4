.class Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer$1;
.super Ljava/lang/Object;
.source "AirButtonMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;


# direct methods
.method constructor <init>(Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer$1;->this$2:Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer$1;->this$2:Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;

    iget-object v0, v0, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;->this$1:Lcom/android/mms/help/AirButtonMainActivity$4;

    iget-object v0, v0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v0, v0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer$1;->this$2:Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;

    iget-object v0, v0, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;->this$1:Lcom/android/mms/help/AirButtonMainActivity$4;

    iget-object v0, v0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v0, v0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->dismiss()V

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer$1;->this$2:Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;

    iget-object v0, v0, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;->this$1:Lcom/android/mms/help/AirButtonMainActivity$4;

    iget-object v0, v0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer$1;->this$2:Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;

    iget-object v1, v1, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;->this$1:Lcom/android/mms/help/AirButtonMainActivity$4;

    iget-object v1, v1, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v0, v1}, Lcom/android/mms/help/AirButtonMainActivity;->hideInfoBubble(Landroid/app/Activity;)V

    .line 804
    return-void
.end method
