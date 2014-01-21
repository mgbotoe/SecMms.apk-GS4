.class public Lcom/android/mms/ui/FakeCallActivity;
.super Landroid/app/Activity;
.source "FakeCallActivity.java"


# static fields
.field private static final ANIMATIOT_START_OFFSET:I = 0x2bc


# instance fields
.field private mBubbleAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v1, 0x7f040035

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FakeCallActivity;->setContentView(I)V

    .line 21
    const v1, 0x7f050001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/FakeCallActivity;->mBubbleAnimation:Landroid/view/animation/Animation;

    .line 22
    iget-object v1, p0, Lcom/android/mms/ui/FakeCallActivity;->mBubbleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 24
    const v1, 0x7f0b010f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FakeCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 25
    .local v0, textView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/mms/ui/FakeCallActivity;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 27
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/mms/ui/FakeCallActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/FakeCallActivity$1;-><init>(Lcom/android/mms/ui/FakeCallActivity;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 37
    return-void
.end method
