.class public Lcom/android/mms/ui/SettingsTransmitMessageActivity;
.super Landroid/app/Activity;
.source "SettingsTransmitMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MENU_CHECK:I = 0x1

.field private static final MENU_EXIT:I = 0x2

.field public static final REQUEST_SETTINGS_TRANSMIT_RESERVATION_TIME:I = 0x64

.field public static final SETTINGS_DELIVERY_REPORT:Ljava/lang/String; = "DELIVERY_REPORT"

.field public static final SETTINGS_READ_REPORT:Ljava/lang/String; = "READ_REPORT"

.field public static final SETTINGS_RESERVATION_TIME:Ljava/lang/String; = "RESERVATION_TIME"

.field private static final TAG:Ljava/lang/String; = "SettingTransmitMessageActivity"


# instance fields
.field mCheckBoxOrString:Z

.field private mDeliveryReadReportInfoViewSentence:Landroid/widget/LinearLayout;

.field public mDeliveryReport:Z

.field private mDeliveryReportView:Landroid/widget/CheckBox;

.field private mDeliveryReportViewSentence:Landroid/widget/LinearLayout;

.field private mIsLandscape:Z

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field public mReadReport:Z

.field private mReadReportView:Landroid/widget/CheckBox;

.field private mReadReportViewSentence:Landroid/widget/LinearLayout;

.field public mReservationTime:J

.field private mReservationView:Landroid/widget/CheckBox;

.field private mReservationViewSentence:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-boolean v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mCheckBoxOrString:Z

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    .line 41
    iput-boolean v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReport:Z

    .line 42
    iput-boolean v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReport:Z

    .line 45
    iput-object v3, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 46
    iput-object v3, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuDone:Landroid/view/MenuItem;

    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 115
    const v0, 0x7f0b0258

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportViewSentence:Landroid/widget/LinearLayout;

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportViewSentence:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f0b025b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportViewSentence:Landroid/widget/LinearLayout;

    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportViewSentence:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x7f0b025e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReadReportInfoViewSentence:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReadReportInfoViewSentence:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f0b0260

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationViewSentence:Landroid/widget/LinearLayout;

    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationViewSentence:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v0, 0x7f0b0259

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportView:Landroid/widget/CheckBox;

    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x7f0b025c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportView:Landroid/widget/CheckBox;

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f0b0261

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->setViewStatusFromItent(Landroid/content/Intent;)V

    .line 138
    iget-wide v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private onClickedRequestDeliveryReadReportInfo(Landroid/widget/LinearLayout;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 308
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0412

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 311
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 312
    const v1, 0x7f0c0413

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 313
    const v1, 0x7f0c00e9

    new-instance v2, Lcom/android/mms/ui/SettingsTransmitMessageActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity$1;-><init>(Lcom/android/mms/ui/SettingsTransmitMessageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 318
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 319
    return-void
.end method

.method private onClickedRequestReadreportConfirm(Landroid/widget/CheckBox;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 273
    iget-boolean v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mCheckBoxOrString:Z

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->releaseCheck(Landroid/widget/CheckBox;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->releaseCheck(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private onClickedRequestReceivedConfirm(Landroid/widget/CheckBox;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 259
    iget-boolean v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mCheckBoxOrString:Z

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->releaseCheck(Landroid/widget/CheckBox;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->releaseCheck(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private onClickedReservation(Landroid/widget/CheckBox;)V
    .locals 5
    .parameter "view"

    .prologue
    const/16 v4, 0x64

    const/4 v2, 0x0

    .line 287
    iget-boolean v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mCheckBoxOrString:Z

    if-eqz v1, :cond_1

    .line 288
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->releaseCheck(Landroid/widget/CheckBox;)V

    .line 305
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 293
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 294
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationViewSentence:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SettingsReservationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "RESERVATION_TIME"

    iget-wide v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v0, v4}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 300
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationViewSentence:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SettingsReservationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "RESERVATION_TIME"

    iget-wide v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 303
    invoke-virtual {p0, v0, v4}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private setResultData()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 148
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iput-boolean v3, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReport:Z

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    iput-boolean v3, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReport:Z

    .line 160
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    .line 164
    :cond_0
    const-string v1, "RESERVATION_TIME"

    iget-wide v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 165
    const-string v1, "DELIVERY_REPORT"

    iget-boolean v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReport:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string v1, "READ_REPORT"

    iget-boolean v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReport:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->setResult(ILandroid/content/Intent;)V

    .line 169
    return-void

    .line 151
    :cond_1
    iput-boolean v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReport:Z

    goto :goto_0

    .line 157
    :cond_2
    iput-boolean v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReport:Z

    goto :goto_1
.end method

.method private setViewStatusFromItent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 172
    if-eqz p1, :cond_0

    .line 173
    const-string v0, "RESERVATION_TIME"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    .line 174
    const-string v0, "DELIVERY_REPORT"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReport:Z

    .line 175
    const-string v0, "READ_REPORT"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReport:Z

    .line 178
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReport:Z

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReport:Z

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 186
    :cond_2
    iget-wide v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 190
    :cond_3
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 211
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationViewSentence:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 214
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 216
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 217
    const-string v0, "RESERVATION_TIME"

    invoke-virtual {p3, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    .line 219
    iget-wide v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 230
    instance-of v1, p1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 231
    check-cast v0, Landroid/widget/CheckBox;

    .line 232
    .local v0, checkbox:Landroid/widget/CheckBox;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mCheckBoxOrString:Z

    .line 233
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportView:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_1

    .line 234
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->onClickedRequestReceivedConfirm(Landroid/widget/CheckBox;)V

    .line 252
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_0
    :goto_0
    return-void

    .line 235
    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportView:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_2

    .line 236
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->onClickedRequestReadreportConfirm(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_0

    .line 238
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->onClickedReservation(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 240
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_3
    instance-of v1, p1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 241
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mCheckBoxOrString:Z

    .line 242
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportViewSentence:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_4

    .line 243
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportView:Landroid/widget/CheckBox;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->onClickedRequestReceivedConfirm(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 244
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportViewSentence:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_5

    .line 245
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportView:Landroid/widget/CheckBox;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->onClickedRequestReadreportConfirm(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 246
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationViewSentence:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_6

    .line 247
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->onClickedReservation(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 248
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReadReportInfoViewSentence:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReadReportInfoViewSentence:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->onClickedRequestDeliveryReadReportInfo(Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mIsLandscape:Z

    .line 73
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->invalidateOptionsMenu()V

    .line 74
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v2, 0x7f040078

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->setContentView(I)V

    .line 54
    invoke-direct {p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->initialize()V

    .line 55
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 57
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mIsLandscape:Z

    .line 64
    return-void

    .line 63
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

    .line 80
    const/4 v0, 0x2

    const v1, 0x7f0c017c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 83
    const/4 v0, 0x1

    const v1, 0x7f0c004f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 86
    iget-boolean v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f02022d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02022c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 94
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keycode"
    .parameter "event"

    .prologue
    .line 194
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->setResultData()V

    .line 196
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->finish()V

    .line 197
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 110
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 100
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->setResultData()V

    .line 101
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->finish()V

    goto :goto_0

    .line 104
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->finish()V

    goto :goto_0

    .line 107
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->finish()V

    goto :goto_0

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method releaseCheck(Landroid/widget/CheckBox;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 256
    return-void
.end method
