.class Lcom/android/mms/widget/MmsWidgetService$MmsFactory$2;
.super Landroid/database/ContentObserver;
.source "MmsWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/MmsWidgetService$MmsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/widget/MmsWidgetService$MmsFactory;


# direct methods
.method constructor <init>(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$2;->this$0:Lcom/android/mms/widget/MmsWidgetService$MmsFactory;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 411
    const-string v0, "Mms/WidgetService"

    const-string v1, "TimeFormat is changed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$2;->this$0:Lcom/android/mms/widget/MmsWidgetService$MmsFactory;

    #calls: Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->notifyDataChanged()V
    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->access$100(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;)V

    .line 414
    return-void
.end method
