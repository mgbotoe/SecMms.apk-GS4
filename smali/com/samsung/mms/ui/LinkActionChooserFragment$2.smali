.class final Lcom/samsung/mms/ui/LinkActionChooserFragment$2;
.super Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;
.source "LinkActionChooserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/LinkActionChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;-><init>(I)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "url"
    .parameter "text"

    .prologue
    .line 233
    invoke-static {p1, p3}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    return-void
.end method
