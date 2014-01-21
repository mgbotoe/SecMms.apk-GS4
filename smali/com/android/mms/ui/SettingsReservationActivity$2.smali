.class Lcom/android/mms/ui/SettingsReservationActivity$2;
.super Ljava/lang/Object;
.source "SettingsReservationActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SettingsReservationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SettingsReservationActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SettingsReservationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/mms/ui/SettingsReservationActivity$2;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 5
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 390
    move v2, p2

    .line 391
    .local v2, yearFinal:I
    move v1, p3

    .line 392
    .local v1, monthOfYearFinal:I
    move v0, p4

    .line 393
    .local v0, dayOfMonthFinal:I
    iget-object v3, p0, Lcom/android/mms/ui/SettingsReservationActivity$2;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    new-instance v4, Lcom/android/mms/ui/SettingsReservationActivity$2$1;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/android/mms/ui/SettingsReservationActivity$2$1;-><init>(Lcom/android/mms/ui/SettingsReservationActivity$2;III)V

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SettingsReservationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method
