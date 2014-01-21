.class Lcom/android/mms/help/AirViewMainActivity$3;
.super Ljava/lang/Object;
.source "AirViewMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/help/AirViewMainActivity;->showDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/help/AirViewMainActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/help/AirViewMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/mms/help/AirViewMainActivity$3;->this$0:Lcom/android/mms/help/AirViewMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity$3;->this$0:Lcom/android/mms/help/AirViewMainActivity;

    invoke-virtual {v0}, Lcom/android/mms/help/AirViewMainActivity;->finish()V

    .line 226
    return-void
.end method
