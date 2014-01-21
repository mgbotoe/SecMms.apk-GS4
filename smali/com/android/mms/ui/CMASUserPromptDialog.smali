.class public Lcom/android/mms/ui/CMASUserPromptDialog;
.super Landroid/app/Activity;
.source "CMASUserPromptDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMASUserPromptDialog/Dialog"


# instance fields
.field private mStatusbarManager:Landroid/app/StatusBarManager;

.field private sDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/CMASUserPromptDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/mms/ui/CMASUserPromptDialog;->launchCmasSetting()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/mms/ui/CMASUserPromptDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private isLockscreenExist(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 108
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASUserPromptDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 109
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const/4 v1, 0x1

    .line 112
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchCmasSetting()V
    .locals 5

    .prologue
    .line 116
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.CMASPreferenceActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 121
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASUserPromptDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;

    .line 144
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASUserPromptDialog;->finish()V

    .line 147
    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASUserPromptDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 148
    .local v0, mStatusbarManager:Landroid/app/StatusBarManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 150
    const-string v1, "CMASUserPromptDialog/Dialog"

    const-string v2, "dismissDialog"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 48
    const-string v2, "CMASUserPromptDialog/Dialog"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CMASUserPromptDialog;->requestWindowFeature(I)Z

    .line 52
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASUserPromptDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/CMASUserPromptDialog;->isLockscreenExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASUserPromptDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f0202ad

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASUserPromptDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x28

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 59
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04001e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 62
    .local v1, view:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 64
    const v2, 0x7f0b0082

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c03ac

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/CMASUserPromptDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0c03ad

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/CMASUserPromptDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v2, 0x7f0c03ab

    new-instance v3, Lcom/android/mms/ui/CMASUserPromptDialog$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/CMASUserPromptDialog$1;-><init>(Lcom/android/mms/ui/CMASUserPromptDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    const v2, 0x7f0c00ea

    new-instance v3, Lcom/android/mms/ui/CMASUserPromptDialog$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/CMASUserPromptDialog$2;-><init>(Lcom/android/mms/ui/CMASUserPromptDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    new-instance v2, Lcom/android/mms/ui/CMASUserPromptDialog$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/CMASUserPromptDialog$3;-><init>(Lcom/android/mms/ui/CMASUserPromptDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CMASUserPromptDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->mStatusbarManager:Landroid/app/StatusBarManager;

    .line 99
    iget-object v2, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->mStatusbarManager:Landroid/app/StatusBarManager;

    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;

    .line 102
    iget-object v2, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 103
    return-void

    .line 55
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #view:Landroid/widget/LinearLayout;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASUserPromptDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f0202ac

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 136
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASUserPromptDialog;->dismissDialog()V

    .line 137
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 158
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASUserPromptDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/CMASUserPromptDialog;->isLockscreenExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASUserPromptDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0202ad

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 165
    :cond_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASUserPromptDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0202ac

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 130
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASUserPromptDialog;->dismissDialog()V

    .line 131
    return-void
.end method
