.class final Lcom/samsung/mms/location/LocationUtils$2;
.super Ljava/lang/Object;
.source "LocationUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/LocationUtils;->startVzwNavigate(Landroid/app/Activity;Lcom/nbi/map/data/Place;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/samsung/mms/location/LocationUtils$2;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 353
    if-eqz p1, :cond_0

    .line 354
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 358
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    sget-object v3, Lcom/samsung/mms/location/LocationUtils;->VZNAV_PACKAGE_URI:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 360
    .local v1, goToMarket:Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/mms/location/LocationUtils$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v1           #goToMarket:Landroid/content/Intent;
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 364
    .local v0, anfException:Landroid/content/ActivityNotFoundException;
    const-string v2, "LocationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vzNavigateListener.onClick() - Error loading market: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Lcom/samsung/mms/location/LocationUtils$2;->val$activity:Landroid/app/Activity;

    const v3, 0x7f0c02e9

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/mms/location/LocationUtils;->showToastOnUIThread(Landroid/app/Activity;II)V

    goto :goto_0
.end method
