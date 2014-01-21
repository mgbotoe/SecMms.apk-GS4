.class Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ReservationMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendNowListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;)V
    .locals 4
    .parameter
    .parameter "msgItem"

    .prologue
    .line 1743
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1744
    const-string v1, "Mms/ReservationMessageManager"

    const-string v2, "SendNowListener"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    const/4 v0, 0x0

    .line 1746
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "sms"

    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1747
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 1751
    :cond_0
    :goto_0
    const-string v1, "Mms/ReservationMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNow(),msgItem.mType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    iget-wide v1, p2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2302(Lcom/android/mms/ui/ReservationMessageManager;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1754
    const-string v1, "Mms/ReservationMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNow(),sendnowUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2300(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    iget-object v1, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2402(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1757
    iget-object v1, p2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2502(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1758
    iget-wide v1, p2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {p1, v1, v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$2602(Lcom/android/mms/ui/ReservationMessageManager;J)J

    .line 1759
    iget-object v1, p2, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2702(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1760
    iget v1, p2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    int-to-long v1, v1

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J
    invoke-static {p1, v1, v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$2802(Lcom/android/mms/ui/ReservationMessageManager;J)J

    .line 1761
    iget-boolean v1, p2, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowLocked:Z
    invoke-static {p1, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2902(Lcom/android/mms/ui/ReservationMessageManager;Z)Z

    .line 1763
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1764
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1765
    iget-object v1, p2, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v2, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowDeliveryReport:Z
    invoke-static {p1, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$3002(Lcom/android/mms/ui/ReservationMessageManager;Z)Z

    .line 1766
    iget-boolean v1, p2, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowReadReport:Z
    invoke-static {p1, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$3102(Lcom/android/mms/ui/ReservationMessageManager;Z)Z

    .line 1769
    :cond_1
    return-void

    .line 1748
    :cond_2
    const-string v1, "mms"

    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1749
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1765
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v8, 0x0

    .line 1772
    const-string v1, "sms"

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2400(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1773
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2500(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ";"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1775
    .local v2, szDests:[Ljava/lang/String;
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$600(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2700(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    move-object v1, v0

    .line 1776
    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowLocked:Z
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2900(Lcom/android/mms/ui/ReservationMessageManager;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    .line 1777
    const-string v1, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNow(),szDests = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2500(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgItem.mBody = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2700(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1780
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1781
    const/4 v7, 0x0

    .line 1782
    .local v7, svcCmd:I
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowDeliveryReport:Z
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$3000(Lcom/android/mms/ui/ReservationMessageManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1783
    or-int/lit8 v7, v7, 0x1

    .line 1785
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowReadReport:Z
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$3100(Lcom/android/mms/ui/ReservationMessageManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1786
    or-int/lit8 v7, v7, 0x2

    :cond_1
    move-object v1, v0

    .line 1788
    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    invoke-virtual {v1, v7, v8}, Lcom/android/mms/transaction/SmsMessageSender;->setServiceCommand(ILjava/lang/String;)V

    .line 1794
    .end local v7           #svcCmd:I
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 1796
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$600(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2300(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1797
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$600(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1813
    .end local v0           #sender:Lcom/android/mms/transaction/MessageSender;
    .end local v2           #szDests:[Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1814
    return-void

    .line 1798
    .restart local v0       #sender:Lcom/android/mms/transaction/MessageSender;
    .restart local v2       #szDests:[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1799
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send SMS message, mSendNowThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1801
    .end local v0           #sender:Lcom/android/mms/transaction/MessageSender;
    .end local v2           #szDests:[Ljava/lang/String;
    .end local v6           #e:Ljava/lang/Exception;
    :cond_4
    const-string v1, "mms"

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2400(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1802
    new-instance v0, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$600(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2300(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2800(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 1803
    .restart local v0       #sender:Lcom/android/mms/transaction/MessageSender;
    const-string v1, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNow(),sendnowUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2300(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSendNowSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2800(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1807
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$600(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2300(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1808
    :cond_5
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$600(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1809
    :catch_1
    move-exception v6

    .line 1810
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v1, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2300(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
