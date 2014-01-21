.class Lcom/android/mms/ui/SelectMapActivity$5$2;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SelectMapActivity$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SelectMapActivity$5;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectMapActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$5$2;->this$1:Lcom/android/mms/ui/SelectMapActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$5$2;->this$1:Lcom/android/mms/ui/SelectMapActivity$5;

    iget-object v0, v0, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$5$2;->this$1:Lcom/android/mms/ui/SelectMapActivity$5;

    iget-object v1, v1, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #getter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$400(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    #calls: Lcom/android/mms/ui/SelectMapActivity;->updateMapFromLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/mms/ui/SelectMapActivity;->access$1100(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    .line 298
    return-void
.end method
