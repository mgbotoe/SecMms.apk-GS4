.class public Lcom/android/mms/ui/SettingsReservationActivity;
.super Landroid/app/Activity;
.source "SettingsReservationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;
    }
.end annotation


# static fields
.field private static final MAX_YEAR:I = 0x7f5

.field private static final MENU_CHECK:I = 0x1

.field private static final MENU_EXIT:I = 0x2

.field public static final REQUEST_SETTINGS_TRANSMIT_RESERVATION_TIME:I = 0x64

.field public static final RESERVATION_OK:I = 0x0

.field public static final SETTINGS_RESERVATION_TIME:Ljava/lang/String; = "RESERVATION_TIME"

.field private static final TAG:Ljava/lang/String; = "Mms/SettingsReservationActivity"

.field public static mCalendar:Ljava/util/Calendar;


# instance fields
.field bOriginalCheckState:Z

.field private mDateFormat:Ljava/text/DateFormat;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDateView:Landroid/widget/Button;

.field private mDay:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mHour:I

.field private mHourofDay:I

.field private mIsLandscape:Z

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMin:I

.field private mMinDay:I

.field private mMinMonth:I

.field private mMinYear:I

.field private mMonth:I

.field private mReservationCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSendTimeBakup:J

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mTimeView:Landroid/widget/Button;

.field private mYear:I

.field timeSettingChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 49
    iput-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 52
    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->bOriginalCheckState:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->timeSettingChanged:Z

    .line 367
    new-instance v0, Lcom/android/mms/ui/SettingsReservationActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SettingsReservationActivity$1;-><init>(Lcom/android/mms/ui/SettingsReservationActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 385
    new-instance v0, Lcom/android/mms/ui/SettingsReservationActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SettingsReservationActivity$2;-><init>(Lcom/android/mms/ui/SettingsReservationActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SettingsReservationActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SettingsReservationActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SettingsReservationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->refreshMinValue()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SettingsReservationActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mSendTimeBakup:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SettingsReservationActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mSendTimeBakup:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SettingsReservationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mYear:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SettingsReservationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMonth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SettingsReservationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDay:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SettingsReservationActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SettingsReservationActivity;->refreshReservationTime(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SettingsReservationActivity;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SettingsReservationActivity;->isEnableReservationTime(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SettingsReservationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SettingsReservationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    return v0
.end method

.method public static checkReservationTime(J)I
    .locals 6
    .parameter "reservationTime"

    .prologue
    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 325
    .local v0, currentTime:J
    sub-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 326
    const v2, 0x7f0c02cd

    .line 334
    :goto_0
    return v2

    .line 328
    :cond_0
    sub-long v2, p0, v0

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 329
    const v2, 0x7f0c02ce

    goto :goto_0

    .line 331
    :cond_1
    sub-long v2, p0, v0

    const-wide v4, 0x757b12c00L

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 332
    const v2, 0x7f0c02cf

    goto :goto_0

    .line 334
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 212
    const-string v2, "Mms/SettingsReservationActivity"

    const-string v3, "initialize CaLl: "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateFormat:Ljava/text/DateFormat;

    .line 235
    const v2, 0x7f0b00f5

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    .line 236
    const v2, 0x7f0b002e

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    .line 237
    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setHoverPopupType(I)V

    .line 240
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    .line 241
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "RESERVATION_TIME"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 242
    .local v0, reservationTime:J
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SettingsReservationActivity;->refreshReservationTime(J)V

    .line 251
    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 252
    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 254
    invoke-direct {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->refreshMinValue()V

    .line 255
    return-void
.end method

.method private isEnableReservationTime(J)Z
    .locals 7
    .parameter "reservationTime"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 302
    const-string v4, "Mms/SettingsReservationActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnableReservationTime CaLl: milliSec = %d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {p1, p2}, Lcom/android/mms/ui/SettingsReservationActivity;->checkReservationTime(J)I

    move-result v1

    .line 304
    .local v1, messageResourceId:I
    if-nez v1, :cond_0

    .line 315
    :goto_0
    return v2

    .line 307
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0297

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 309
    const v4, 0x7f0c02ce

    if-ne v1, v4, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 313
    :goto_1
    const v2, 0x7f0c00c1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 314
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    move v2, v3

    .line 315
    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private refreshMinValue()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x3e8

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 408
    .local v1, minTime:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 409
    .local v0, mMinCalendar:Ljava/util/Calendar;
    div-long v3, v1, v5

    mul-long v1, v3, v5

    .line 410
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 412
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinYear:I

    .line 413
    iget v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinYear:I

    const/16 v4, 0x7f5

    if-lt v3, v4, :cond_0

    .line 414
    const/16 v3, 0x7f4

    iput v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinYear:I

    .line 415
    const/16 v3, 0xb

    iput v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinMonth:I

    .line 416
    const/16 v3, 0x1f

    iput v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinDay:I

    .line 421
    :goto_0
    return-void

    .line 418
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinMonth:I

    .line 419
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinDay:I

    goto :goto_0
.end method

.method private refreshReservationTime(J)V
    .locals 11
    .parameter "reservationTime"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v2, 0xc

    .line 270
    const-string v1, "Mms/SettingsReservationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshReservationTime CaLl: reservationTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-gtz v1, :cond_0

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 274
    :cond_0
    const-wide/16 v3, 0x3e8

    div-long v3, p1, v3

    const-wide/16 v5, 0x3e8

    mul-long p1, v3, v5

    .line 275
    sget-object v1, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 276
    sget-object v1, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mYear:I

    .line 277
    sget-object v1, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMonth:I

    .line 278
    sget-object v1, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDay:I

    .line 279
    sget-object v1, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHour:I

    .line 280
    sget-object v1, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    .line 281
    sget-object v1, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    .line 282
    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    const-string v2, "%02d : %02d"

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    iget v4, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 300
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, CountryIso:Ljava/lang/String;
    const-string v1, "KR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 291
    iget-object v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    const-string v4, "%s %02d : %02d"

    new-array v5, v10, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0c02d4

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v5, v9

    iget v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHour:I

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v7

    iget v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0c02d5

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHour:I

    goto :goto_2

    .line 295
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    const-string v4, "%02d : %02d %s"

    new-array v5, v10, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHour:I

    if-nez v1, :cond_5

    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    iget v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v7

    iget v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    if-ge v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 295
    :cond_5
    iget v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHour:I

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method private setCancelResultDate()V
    .locals 4

    .prologue
    .line 264
    const-string v1, "Mms/SettingsReservationActivity"

    const-string v2, "setResultData CaLl: "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 266
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "RESERVATION_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 267
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/SettingsReservationActivity;->setResult(ILandroid/content/Intent;)V

    .line 268
    return-void
.end method

.method private setResultData()V
    .locals 4

    .prologue
    .line 258
    const-string v1, "Mms/SettingsReservationActivity"

    const-string v2, "setResultData CaLl: "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 260
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "RESERVATION_TIME"

    sget-object v2, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 261
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/SettingsReservationActivity;->setResult(ILandroid/content/Intent;)V

    .line 262
    return-void
.end method


# virtual methods
.method public OnClickReservationOnOff(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, -0x1

    const v3, -0x777778

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mReservationCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mReservationCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 210
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mReservationCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 207
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    .line 339
    const-string v0, "Mms/SettingsReservationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick CaLl: view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 344
    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mYear:I

    const/16 v1, 0x7f5

    if-lt v0, v1, :cond_2

    .line 345
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    const/16 v3, 0x7f4

    const/16 v4, 0xb

    const/16 v5, 0x1f

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    .line 350
    :goto_1
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 351
    .local v7, mTime:Landroid/text/format/Time;
    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mYear:I

    const/16 v1, 0x7f5

    if-lt v0, v1, :cond_3

    .line 352
    const/16 v0, 0x1f

    const/16 v1, 0xb

    const/16 v2, 0x7f4

    invoke-virtual {v7, v0, v1, v2}, Landroid/text/format/Time;->set(III)V

    .line 357
    :goto_2
    iget-object v6, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    check-cast v6, Landroid/app/DatePickerDialog;

    .line 358
    .local v6, mDatePickerDialog:Landroid/app/DatePickerDialog;
    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 359
    const/16 v0, 0x1f

    const/16 v1, 0xb

    const/16 v2, 0x7f4

    invoke-virtual {v7, v0, v1, v2}, Landroid/text/format/Time;->set(III)V

    .line 360
    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 347
    .end local v6           #mDatePickerDialog:Landroid/app/DatePickerDialog;
    .end local v7           #mTime:Landroid/text/format/Time;
    :cond_2
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mYear:I

    iget v4, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMonth:I

    iget v5, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 354
    .restart local v7       #mTime:Landroid/text/format/Time;
    :cond_3
    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinDay:I

    iget v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinMonth:I

    iget v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinYear:I

    invoke-virtual {v7, v0, v1, v2}, Landroid/text/format/Time;->set(III)V

    goto :goto_2

    .line 362
    .end local v7           #mTime:Landroid/text/format/Time;
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 363
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    iget v4, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    .line 364
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mIsLandscape:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->invalidateOptionsMenu()V

    .line 151
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const-string v2, "Mms/SettingsReservationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate CaLl: savedInstanceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const v2, 0x7f040077

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->setContentView(I)V

    .line 111
    invoke-direct {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->initialize()V

    .line 113
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 114
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 115
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mIsLandscape:Z

    .line 120
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->invalidateOptionsMenu()V

    .line 121
    return-void

    .line 119
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 156
    const/4 v0, 0x2

    const v1, 0x7f0c017c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 158
    const/4 v0, 0x1

    const v1, 0x7f0c0022

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 159
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 161
    iget-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f02022d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 163
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02022c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 168
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 137
    .local v0, actionBar:Landroid/app/ActionBar;
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 138
    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    .line 142
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 143
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 172
    const-string v1, "Mms/SettingsReservationActivity"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 191
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 175
    :sswitch_0
    const-string v1, "Mms/SettingsReservationActivity"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v1, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->isEnableReservationTime(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->setResultData()V

    .line 178
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->finish()V

    goto :goto_0

    .line 183
    :sswitch_1
    const-string v1, "Mms/SettingsReservationActivity"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->setCancelResultDate()V

    .line 185
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->finish()V

    goto :goto_0

    .line 188
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->finish()V

    goto :goto_0

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 133
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 126
    sget-object v0, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SettingsReservationActivity;->refreshReservationTime(J)V

    .line 127
    return-void
.end method
