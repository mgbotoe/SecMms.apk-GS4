.class Lcom/android/mms/ui/SelectMapActivity$7;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$7;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$7;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$7;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #getter for: Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$700(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/mms/ui/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/SelectMapActivity;->access$1300(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Z

    .line 608
    return-void
.end method
