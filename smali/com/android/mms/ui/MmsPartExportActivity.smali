.class public Lcom/android/mms/ui/MmsPartExportActivity;
.super Landroid/app/Activity;
.source "MmsPartExportActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsPartExportActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 17
    const-string v2, "Mms/MmsPartExportActivity"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPartExportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 19
    .local v1, partUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.mms"

    const-string v3, "com.samsung.mms.content.MmsPartExportService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-string v2, "part_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPartExportActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 23
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPartExportActivity;->finish()V

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const-string v2, "Mms/MmsPartExportActivity"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "Mms/MmsPartExportActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 34
    const-string v0, "Mms/MmsPartExportActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
