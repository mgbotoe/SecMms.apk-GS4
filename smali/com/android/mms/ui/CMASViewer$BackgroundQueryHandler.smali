.class final Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CMASViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CMASViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASViewer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/CMASViewer;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    .line 215
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 216
    return-void
.end method


# virtual methods
.method public CMASViewerSetData(Landroid/database/Cursor;)V
    .locals 10
    .parameter "cursor"

    .prologue
    const v9, 0x7f0c01f5

    .line 262
    const-string v5, "CMASViewer"

    const-string v6, "CMASViewerSetData"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/16 v6, 0xe

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    #setter for: Lcom/android/mms/ui/CMASViewer;->msgId:J
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/CMASViewer;->access$202(Lcom/android/mms/ui/CMASViewer;J)J

    .line 265
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/mms/ui/CMASViewer;->access$302(Lcom/android/mms/ui/CMASViewer;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    #setter for: Lcom/android/mms/ui/CMASViewer;->msgDate:J
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/CMASViewer;->access$402(Lcom/android/mms/ui/CMASViewer;J)J

    .line 267
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/16 v6, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    #setter for: Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I
    invoke-static {v5, v6}, Lcom/android/mms/ui/CMASViewer;->access$502(Lcom/android/mms/ui/CMASViewer;I)I

    .line 268
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/16 v6, 0x10

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    #setter for: Lcom/android/mms/ui/CMASViewer;->msgExpiry:J
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/CMASViewer;->access$602(Lcom/android/mms/ui/CMASViewer;J)J

    .line 269
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    #setter for: Lcom/android/mms/ui/CMASViewer;->mLocked:I
    invoke-static {v5, v6}, Lcom/android/mms/ui/CMASViewer;->access$702(Lcom/android/mms/ui/CMASViewer;I)I

    .line 271
    const-string v5, "CMASViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CMASViewerSetData msgId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgId:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$200(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msgText "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$300(Lcom/android/mms/ui/CMASViewer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msgServiceCategory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$500(Lcom/android/mms/ui/CMASViewer;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msgDate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgDate:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$400(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msgExpiry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgExpiry:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$600(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mLocked "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->mLocked:I
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$700(Lcom/android/mms/ui/CMASViewer;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_text_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$800(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0c01ba

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 276
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_data_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$900(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/ui/CMASViewer;->access$300(Lcom/android/mms/ui/CMASViewer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$500(Lcom/android/mms/ui/CMASViewer;)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 317
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1000(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0c01e4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 318
    const-string v5, "CMASViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Wrong msgServiceCategory for CMAS with msgServiceCategory = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$500(Lcom/android/mms/ui/CMASViewer;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "MMMM dd, yyyy, h:mmaa"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 323
    .local v3, formatter:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 324
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgDate:J
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$400(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 326
    const-string v5, "CMASViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgDate:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$400(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_date_time_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1100(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgExpiry:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$600(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 331
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MMM dd, yyyy, h:mmaa"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 332
    .local v4, formatter1:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 333
    .local v1, calendar1:Ljava/util/Calendar;
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgExpiry:J
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$600(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 334
    const-string v5, "CMASViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->msgExpiry:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$600(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/CMASViewer;->access$100(Lcom/android/mms/ui/CMASViewer;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, expirty_time_text:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_msg_expiry_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1200(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    .end local v1           #calendar1:Ljava/util/Calendar;
    .end local v4           #formatter1:Ljava/text/SimpleDateFormat;
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #calls: Lcom/android/mms/ui/CMASViewer;->CmasViewerSetTxtSize()V
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1300(Lcom/android/mms/ui/CMASViewer;)V

    .line 351
    return-void

    .line 284
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v2           #expirty_time_text:Ljava/lang/String;
    .end local v3           #formatter:Ljava/text/SimpleDateFormat;
    :sswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1000(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0c01c5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 290
    :sswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1000(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0c01c6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 300
    :sswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1000(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0c01c7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 305
    :sswitch_3
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1000(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0c01c8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 313
    :sswitch_4
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1000(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0c01c9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 346
    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v3       #formatter:Ljava/text/SimpleDateFormat;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/CMASViewer;->access$100(Lcom/android/mms/ui/CMASViewer;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/CMASViewer;->access$100(Lcom/android/mms/ui/CMASViewer;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c01e5

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    .restart local v2       #expirty_time_text:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->cmas_msg_expiry_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1200(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    const-string v5, "CMASViewer"

    const-string v6, "msgExpiry is null"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x1001 -> :sswitch_1
        0x1002 -> :sswitch_2
        0x1003 -> :sswitch_3
        0x1004 -> :sswitch_4
        0x1112 -> :sswitch_0
        0x1113 -> :sswitch_1
        0x1114 -> :sswitch_1
        0x1115 -> :sswitch_2
        0x1116 -> :sswitch_2
        0x1117 -> :sswitch_2
        0x1118 -> :sswitch_2
        0x1119 -> :sswitch_2
        0x111a -> :sswitch_2
        0x111b -> :sswitch_3
        0x111c -> :sswitch_4
        0x111d -> :sswitch_4
        0x111e -> :sswitch_4
        0x111f -> :sswitch_4
    .end sparse-switch
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 355
    const-string v0, "CMASViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteComplete with token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sparse-switch p1, :sswitch_data_0

    .line 363
    :goto_0
    return-void

    .line 360
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #calls: Lcom/android/mms/ui/CMASViewer;->finishTask()V
    invoke-static {v0}, Lcom/android/mms/ui/CMASViewer;->access$1400(Lcom/android/mms/ui/CMASViewer;)V

    goto :goto_0

    .line 357
    :sswitch_data_0
    .sparse-switch
        0x70a -> :sswitch_0
        0x25e4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 219
    const-string v2, "CMASViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete with token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with cursor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-nez p3, :cond_1

    .line 257
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 226
    .restart local p2
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 244
    :sswitch_0
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 246
    .local v0, threadId:J
    iget-object v2, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/CMASViewer;->access$100(Lcom/android/mms/ui/CMASViewer;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 228
    .end local v0           #threadId:J
    .restart local p2
    :sswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    #getter for: Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2}, Lcom/android/mms/ui/CMASViewer;->access$000(Lcom/android/mms/ui/CMASViewer;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 230
    const/4 v2, -0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 231
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    const-string v2, "CMASViewer"

    const-string v3, "onQueryComplete cursor moveToNext"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0, p3}, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->CMASViewerSetData(Landroid/database/Cursor;)V

    goto :goto_0

    .line 226
    nop

    :sswitch_data_0
    .sparse-switch
        0x70b -> :sswitch_0
        0x2537 -> :sswitch_1
    .end sparse-switch
.end method
