.class final Lcom/samsung/mms/location/LocationUtils$1;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 371
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 373
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 374
    return-void
.end method
