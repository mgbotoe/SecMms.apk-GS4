.class public Lcom/android/mms/ui/DirectCallTutorialActivity;
.super Landroid/app/Activity;
.source "DirectCallTutorialActivity.java"

# interfaces
.implements Lcom/android/mms/ui/DirectCallActivityInterface;


# static fields
.field private static final ANIMATIOT_START_OFFSET:I = 0x2bc

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms/DirectCallingTutorial"


# instance fields
.field private mBubbleAnimation:Landroid/view/animation/Animation;

.field private mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "12345678"

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "12345678"

    return-object v0
.end method

.method public hideSipForDirectCall()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public isAvailableDirectCall()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/mms/ui/DirectCallTutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 29
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x400

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 30
    invoke-virtual {p0}, Lcom/android/mms/ui/DirectCallTutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 32
    const v2, 0x7f040031

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DirectCallTutorialActivity;->setContentView(I)V

    .line 34
    const v2, 0x7f050001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mBubbleAnimation:Landroid/view/animation/Animation;

    .line 35
    iget-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mBubbleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 37
    const v2, 0x7f0b0109

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DirectCallTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 38
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 40
    new-instance v2, Lcom/android/mms/util/DirectCallingManager;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/android/mms/util/DirectCallingManager;-><init>(ILcom/android/mms/ui/DirectCallActivityInterface;)V

    iput-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    .line 41
    iget-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    new-instance v3, Lcom/android/mms/ui/DirectCallTutorialActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/DirectCallTutorialActivity$1;-><init>(Lcom/android/mms/ui/DirectCallTutorialActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DirectCallingManager;->setFinishTutorialListener(Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;)V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    .line 84
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DirectCallingManager;->pause(Landroid/content/Context;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DirectCallingManager;->resume(Landroid/content/Context;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 52
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 75
    return-void
.end method
