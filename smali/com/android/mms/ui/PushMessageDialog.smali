.class public Lcom/android/mms/ui/PushMessageDialog;
.super Landroid/app/Activity;
.source "PushMessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/PushMessageDialog"


# instance fields
.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private mOkListener:Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/mms/ui/PushMessageDialog;->mDialog:Landroid/app/AlertDialog;

    .line 43
    iput-object v0, p0, Lcom/android/mms/ui/PushMessageDialog;->mOkListener:Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;

    .line 89
    new-instance v0, Lcom/android/mms/ui/PushMessageDialog$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/PushMessageDialog$2;-><init>(Lcom/android/mms/ui/PushMessageDialog;)V

    iput-object v0, p0, Lcom/android/mms/ui/PushMessageDialog;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 95
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/PushMessageDialog;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/android/mms/ui/PushMessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f0202b0

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/mms/ui/PushMessageDialog;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "href"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, href:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/PushMessageDialog;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "sender"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, sender:Ljava/lang/String;
    new-instance v5, Lcom/android/mms/ui/PushMessageDialog$1;

    invoke-direct {v5, p0, v2}, Lcom/android/mms/ui/PushMessageDialog$1;-><init>(Lcom/android/mms/ui/PushMessageDialog;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/mms/ui/PushMessageDialog;->mOkListener:Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;

    .line 62
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0c0167

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 64
    const v5, 0x104000a

    iget-object v6, p0, Lcom/android/mms/ui/PushMessageDialog;->mOkListener:Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    const/high16 v5, 0x104

    iget-object v6, p0, Lcom/android/mms/ui/PushMessageDialog;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040064

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 69
    .local v4, view:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 71
    const-string v0, ""

    .line 72
    .local v0, body:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/ui/PushMessageDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0082

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_0
    const-string v5, "wtai://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/PushMessageDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0169

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    const v5, 0x7f0b0219

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v5, 0x7f0b021a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/PushMessageDialog;->mDialog:Landroid/app/AlertDialog;

    .line 84
    iget-object v5, p0, Lcom/android/mms/ui/PushMessageDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 87
    return-void

    .line 78
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/PushMessageDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0168

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
