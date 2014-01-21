.class public Lcom/android/mms/help/TwHelpAnimatedDialog;
.super Lcom/android/mms/help/TwHelpDialog;
.source "TwHelpAnimatedDialog.java"


# static fields
.field private static final ANIMATIOT_START_OFFSET:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "Mms/TwHelpAnimatedDialog"


# instance fields
.field private mBubbleAnimation:Landroid/view/animation/Animation;

.field private mCurrentPointAnimation:I

.field private mCurrentPointAnimation3:I

.field private mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

.field private mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

.field private mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

.field private mPointAnimationView_land:Landroid/view/View;

.field private mPointAnimationView_pot:Landroid/view/View;

.field private mPointAnimationView_pot2:Landroid/view/View;

.field private mPointAnimations_land:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mPointAnimations_pot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mPointAnimations_pot2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/mms/help/TwHelpDialog;-><init>(Landroid/content/Context;)V

    .line 26
    iput v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    .line 27
    iput v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I

    .line 187
    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$4;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$4;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

    .line 212
    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$5;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$5;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

    .line 237
    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$6;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$6;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/mms/help/TwHelpDialog;-><init>(Landroid/content/Context;I)V

    .line 26
    iput v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    .line 27
    iput v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I

    .line 187
    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$4;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$4;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

    .line 212
    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$5;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$5;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

    .line 237
    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$6;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$6;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/help/TwHelpDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 26
    iput v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    .line 27
    iput v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I

    .line 187
    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$4;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$4;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

    .line 212
    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$5;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$5;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

    .line 237
    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$6;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$6;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private SetAnimationEffectonLand(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 152
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;

    .line 154
    const v1, 0x7f050007

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 155
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 156
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const v1, 0x7f050008

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 160
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    const v1, 0x7f050009

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 164
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    const v1, 0x7f05000a

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 168
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const v1, 0x7f05000b

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 172
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    const v1, 0x7f050001

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    .line 177
    new-instance v1, Lcom/android/mms/help/TwHelpAnimatedDialog$3;

    invoke-direct {v1, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$3;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 185
    return-void
.end method

.method private SetAnimationEffectonPot(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;

    .line 80
    const v1, 0x7f050007

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 81
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 82
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    const v1, 0x7f050008

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 86
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const v1, 0x7f050009

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 90
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const v1, 0x7f05000a

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 94
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const v1, 0x7f05000b

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 98
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    const v1, 0x7f050001

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    .line 102
    new-instance v1, Lcom/android/mms/help/TwHelpAnimatedDialog$1;

    invoke-direct {v1, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$1;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 110
    return-void
.end method

.method private SetAnimationEffectonPot2(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 114
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;

    .line 116
    const v1, 0x7f050007

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 117
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 118
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const v1, 0x7f050008

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 122
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const v1, 0x7f050009

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 126
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    const v1, 0x7f05000a

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 130
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const v1, 0x7f05000b

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 134
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    const v1, 0x7f050001

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    .line 139
    new-instance v1, Lcom/android/mms/help/TwHelpAnimatedDialog$2;

    invoke-direct {v1, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$2;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/help/TwHelpAnimatedDialog;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/help/TwHelpAnimatedDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/help/TwHelpAnimatedDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/mms/help/TwHelpAnimatedDialog;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/help/TwHelpAnimatedDialog;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/help/TwHelpAnimatedDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/help/TwHelpAnimatedDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/mms/help/TwHelpAnimatedDialog;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/help/TwHelpAnimatedDialog;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/help/TwHelpAnimatedDialog;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/help/TwHelpAnimatedDialog;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/help/TwHelpAnimatedDialog;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/help/TwHelpAnimatedDialog;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_land:Landroid/view/View;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->SetAnimationEffectonPot(Landroid/content/Context;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->SetAnimationEffectonLand(Landroid/content/Context;)V

    .line 71
    sget-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->SetAnimationEffectonPot2(Landroid/content/Context;)V

    .line 74
    :cond_1
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Lcom/android/mms/help/TwHelpDialog;->onAttachedToWindow()V

    .line 39
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot:Landroid/view/View;

    .line 40
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;

    iget v2, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 41
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_land:Landroid/view/View;

    .line 42
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_land:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;

    iget v2, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 43
    sget-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot2:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot2:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 46
    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot2:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;

    iget v2, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 49
    :cond_1
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 50
    return-void
.end method

.method public stopAnimation_land()V
    .locals 2

    .prologue
    .line 279
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_land:Landroid/view/View;

    .line 280
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_land:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_land:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 282
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_land:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    :cond_0
    return-void
.end method

.method public stopAnimation_pot()V
    .locals 2

    .prologue
    .line 263
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 266
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    :cond_0
    return-void
.end method

.method public stopAnimation_pot2()V
    .locals 2

    .prologue
    .line 271
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot2:Landroid/view/View;

    .line 272
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot2:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot2:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 274
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot2:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_0
    return-void
.end method
