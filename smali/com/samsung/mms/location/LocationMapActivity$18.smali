.class Lcom/samsung/mms/location/LocationMapActivity$18;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/LocationMapActivity;->createLocSettingDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2809
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$18;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2811
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$18;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v0}, Lcom/samsung/mms/location/LocationMapActivity;->finish()V

    .line 2812
    return-void
.end method
