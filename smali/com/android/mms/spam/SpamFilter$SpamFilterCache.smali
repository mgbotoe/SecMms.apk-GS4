.class public Lcom/android/mms/spam/SpamFilter$SpamFilterCache;
.super Ljava/lang/Object;
.source "SpamFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SpamFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpamFilterCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SpamFilter$SpamFilterCache$Entry;
    }
.end annotation


# static fields
.field private static final mDisableDump:Z = true

.field private static sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/mms/spam/SpamFilter$SpamFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 235
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    .line 237
    iput-object p1, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mContext:Landroid/content/Context;

    .line 238
    return-void
.end method

.method public static changeCheckStatus(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "type"
    .parameter "filter"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 837
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 880
    :goto_0
    return v4

    .line 840
    :cond_0
    const-string v4, "Mms/SpamFilter"

    const-string v7, "changeCheckStatus"

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :try_start_0
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 843
    .local v3, id:I
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 845
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 849
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    .line 850
    if-eqz p2, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 851
    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 852
    const-string v4, " "

    const-string v7, ""

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 853
    const-string v4, "-"

    const-string v7, ""

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 855
    :cond_2
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 856
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 857
    const/4 v4, 0x0

    invoke-static {p0, v4, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->updateSpamNumber(Landroid/content/Context;ZI)V

    .line 858
    const-string v4, "Mms/SpamFilter"

    const-string v7, "checkEnableStatus return true"

    invoke-static {v4, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 859
    goto/16 :goto_0

    .line 865
    :cond_3
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 866
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 867
    const/4 v4, 0x0

    invoke-static {p0, v4, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->updateSpamNumber(Landroid/content/Context;ZI)V

    .line 868
    const-string v4, "Mms/SpamFilter"

    const-string v7, "checkEnableStatus return true"

    invoke-static {v4, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 869
    goto/16 :goto_0

    .line 874
    .end local v0           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:I
    :catch_0
    move-exception v1

    .line 875
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "Mms/SpamFilter"

    const-string v6, "NullPointerException in checkAlreadyInUse()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 876
    goto/16 :goto_0

    .line 879
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    const-string v4, "Mms/SpamFilter"

    const-string v6, "changeCheckStatus return false"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 880
    goto/16 :goto_0
.end method

.method public static checkAlreadyEnabledandUsed(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "type"
    .parameter "filter"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 755
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 786
    :goto_0
    return v4

    .line 759
    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 760
    .local v3, id:I
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 761
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 765
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v4

    if-eqz v4, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    .line 766
    if-eqz p2, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 767
    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 768
    const-string v4, " "

    const-string v7, ""

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 769
    const-string v4, "-"

    const-string v7, ""

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 771
    :cond_2
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    .line 772
    goto :goto_0

    .line 777
    :cond_3
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v4

    if-eqz v4, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    .line 778
    goto/16 :goto_0

    .line 782
    .end local v0           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:I
    :catch_0
    move-exception v1

    .line 783
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "Mms/SpamFilter"

    const-string v6, "NullPointerException in checkAlreadyInUse()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 784
    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    move v4, v5

    .line 786
    goto/16 :goto_0
.end method

.method public static checkAlreadyInUse(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "type"
    .parameter "filter"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 704
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 751
    :goto_0
    return v4

    .line 708
    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 709
    .local v3, id:I
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 711
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-nez v4, :cond_5

    .line 713
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 717
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 718
    if-eqz p2, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 719
    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 720
    const-string v4, " "

    const-string v7, ""

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 721
    const-string v4, "-"

    const-string v7, ""

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 723
    :cond_2
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 724
    const-string v4, "Mms/SpamFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*** checkAlreadyInUse filter:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "data.mFilter"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 725
    goto/16 :goto_0

    .line 730
    :cond_3
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 732
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, v6, :cond_4

    if-eqz p2, :cond_4

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v5

    .line 733
    goto/16 :goto_0

    :cond_4
    move v4, v6

    .line 735
    goto/16 :goto_0

    .line 741
    :cond_5
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    .line 743
    goto/16 :goto_0

    .line 747
    .end local v0           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:I
    :catch_0
    move-exception v1

    .line 748
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "Mms/SpamFilter"

    const-string v6, "NullPointerException in checkAlreadyInUse()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 749
    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6
    move v4, v5

    .line 751
    goto/16 :goto_0
.end method

.method public static checkEnableStatus(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "type"
    .parameter "filter"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 790
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 833
    :goto_0
    return v4

    .line 793
    :cond_0
    const-string v4, "Mms/SpamFilter"

    const-string v7, "checkEnableStatus"

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :try_start_0
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 796
    .local v3, id:I
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 798
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 802
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    .line 803
    if-eqz p2, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 804
    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 805
    const-string v4, " "

    const-string v7, ""

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 806
    const-string v4, "-"

    const-string v7, ""

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 808
    :cond_2
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 809
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 810
    const/4 v4, 0x1

    invoke-static {p0, v4, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->updateSpamNumber(Landroid/content/Context;ZI)V

    .line 811
    const-string v4, "Mms/SpamFilter"

    const-string v7, "checkEnableStatus return true"

    invoke-static {v4, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 812
    goto/16 :goto_0

    .line 818
    :cond_3
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 819
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 820
    const/4 v4, 0x1

    invoke-static {p0, v4, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->updateSpamNumber(Landroid/content/Context;ZI)V

    .line 821
    const-string v4, "Mms/SpamFilter"

    const-string v7, "checkEnableStatus return true"

    invoke-static {v4, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 822
    goto/16 :goto_0

    .line 827
    .end local v0           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:I
    :catch_0
    move-exception v1

    .line 828
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "Mms/SpamFilter"

    const-string v6, "NullPointerException in checkAlreadyInUse()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 829
    goto/16 :goto_0

    .line 832
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    const-string v4, "Mms/SpamFilter"

    const-string v6, "checkEnableStatus return false"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 833
    goto/16 :goto_0
.end method

.method public static clear()V
    .locals 2

    .prologue
    .line 241
    const-string v0, "Mms/SpamFilter"

    const-string v1, "SpamFilter clear"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v1

    .line 244
    :try_start_0
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 245
    monitor-exit v1

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static delete(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 390
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_0
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    .line 394
    return-void
.end method

.method public static delete(ILjava/lang/String;)V
    .locals 5
    .parameter "type"
    .parameter "filter"

    .prologue
    .line 397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    sget-object v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v3, v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 400
    .local v2, id:I
    sget-object v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v3, v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 402
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 406
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v3

    if-ne v3, p0, :cond_2

    .line 407
    if-eqz p1, :cond_2

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 408
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 409
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 410
    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 412
    :cond_3
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 413
    sget-object v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v3, v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 419
    :cond_4
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v3

    if-ne v3, p0, :cond_2

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    sget-object v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v3, v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static dump()V
    .locals 0

    .prologue
    .line 904
    return-void
.end method

.method public static fill()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 249
    const-string v10, "Mms/SpamFilter"

    const-string v11, "SpamFilter fill() begin"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v10, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v10, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mContext:Landroid/content/Context;

    .line 252
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 255
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 256
    const-string v8, "Mms/SpamFilter"

    const-string v9, "null Cursor in fill()"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 261
    :cond_0
    :try_start_0
    sget-object v10, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 262
    :try_start_1
    sget-object v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v11, v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 263
    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 264
    const/4 v11, 0x0

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 265
    .local v2, id:I
    const/4 v11, 0x1

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 266
    .local v3, type:I
    const/4 v11, 0x2

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_2

    move v4, v8

    .line 267
    .local v4, enable:Z
    :goto_2
    const/4 v11, 0x3

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, filter:Ljava/lang/String;
    const/4 v11, 0x4

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 270
    .local v6, criteria:I
    if-eqz v4, :cond_1

    .line 271
    new-instance v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    .line 272
    .local v1, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    sget-object v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v11, v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 275
    .end local v1           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v2           #id:I
    .end local v3           #type:I
    .end local v4           #enable:Z
    .end local v5           #filter:Ljava/lang/String;
    .end local v6           #criteria:I
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 277
    :catchall_1
    move-exception v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v8

    .restart local v2       #id:I
    .restart local v3       #type:I
    :cond_2
    move v4, v9

    .line 266
    goto :goto_2

    .line 275
    .end local v2           #id:I
    .end local v3           #type:I
    :cond_3
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 280
    const-string v8, "Mms/SpamFilter"

    const-string v9, "SpamFilter fill() finished"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static fillIfCountChanged()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 285
    const-string v11, "Mms/SpamFilter"

    const-string v12, "SpamFilter fillIfCountChanged() begin"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :try_start_0
    sget-object v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 296
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 297
    const-string v9, "Mms/SpamFilter"

    const-string v10, "null Cursor in fill()"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .end local v0           #context:Landroid/content/Context;
    .end local v7           #c:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v8

    .line 290
    .local v8, e:Ljava/lang/NullPointerException;
    const-string v9, "Mms/SpamFilter"

    const-string v10, "sInstance is null in fillIfCountChanged()"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    .end local v8           #e:Ljava/lang/NullPointerException;
    .restart local v0       #context:Landroid/content/Context;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_0
    if-eqz v7, :cond_5

    .line 304
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v11

    sget-object v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v12, v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-ne v11, v12, :cond_1

    .line 305
    const-string v9, "Mms/SpamFilter"

    const-string v10, "count of db and cache is same. Skip refreshing cache !"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 323
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 308
    :cond_1
    :try_start_2
    sget-object v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 309
    :try_start_3
    sget-object v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v12, v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 310
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 311
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 312
    .local v2, id:I
    const/4 v12, 0x1

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 313
    .local v3, type:I
    const/4 v12, 0x2

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_3

    move v4, v9

    .line 314
    .local v4, enable:Z
    :goto_2
    const/4 v12, 0x3

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, filter:Ljava/lang/String;
    const/4 v12, 0x4

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 316
    .local v6, criteria:I
    if-eqz v4, :cond_2

    .line 317
    new-instance v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    .line 318
    .local v1, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    sget-object v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v12, v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 321
    .end local v1           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v2           #id:I
    .end local v3           #type:I
    .end local v4           #enable:Z
    .end local v5           #filter:Ljava/lang/String;
    .end local v6           #criteria:I
    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 323
    :catchall_1
    move-exception v9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v9

    .restart local v2       #id:I
    .restart local v3       #type:I
    :cond_3
    move v4, v10

    .line 313
    goto :goto_2

    .line 321
    .end local v2           #id:I
    .end local v3           #type:I
    :cond_4
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 323
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 326
    :cond_5
    const-string v9, "Mms/SpamFilter"

    const-string v10, "SpamFilter fillIfCountChanged() finished"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/mms/spam/SpamFilter$SpamFilterCache;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 225
    new-instance v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    .line 226
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache$1;

    invoke-direct {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 233
    return-void
.end method

.method public static insert(ILcom/android/mms/spam/SpamFilter$SpamFilterData;)V
    .locals 2
    .parameter "id"
    .parameter "data"

    .prologue
    .line 331
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    .line 333
    return-void
.end method

.method public static isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Z
    .locals 10
    .parameter "context"
    .parameter "encText"

    .prologue
    const/4 v7, 0x0

    .line 539
    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpamOptionOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    .line 575
    :goto_0
    return v6

    .line 543
    :cond_0
    const/4 v5, 0x0

    .line 544
    .local v5, text:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 545
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 547
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 548
    .local v2, emptyText:Z
    if-eqz v2, :cond_2

    move v6, v7

    .line 549
    goto :goto_0

    .line 552
    :cond_2
    :try_start_0
    sget-object v8, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :try_start_1
    sget-object v6, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v6, v6, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 555
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 556
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 557
    .local v3, id:I
    sget-object v6, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v6, v6, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 559
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 562
    if-nez v2, :cond_3

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 565
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 566
    const-string v6, "Mms/SpamFilter"

    const-string v9, "filtered by string"

    invoke-static {v6, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const/4 v6, 0x1

    monitor-exit v8

    goto :goto_0

    .line 571
    .end local v0           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v3           #id:I
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 572
    :catch_0
    move-exception v1

    .line 573
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v6, "Mms/SpamFilter"

    const-string v8, "NullPointerExcetpion occurred. isSpam(context, encText)"

    invoke-static {v6, v8}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #e:Ljava/lang/NullPointerException;
    :goto_1
    move v6, v7

    .line 575
    goto :goto_0

    .line 571
    .restart local v4       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;Lcom/google/android/mms/pdu/EncodedStringValue;)Z
    .locals 3
    .parameter "context"
    .parameter "encNumber"
    .parameter "encText"

    .prologue
    .line 579
    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpamOptionOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 580
    const/4 v2, 0x0

    .line 588
    :goto_0
    return v2

    .line 582
    :cond_0
    const/4 v0, 0x0

    .line 583
    .local v0, number:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 584
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 585
    :cond_1
    const/4 v1, 0x0

    .line 586
    .local v1, text:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 587
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 588
    :cond_2
    invoke-static {p0, v0, v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)Z
    .locals 14
    .parameter "context"
    .parameter "pdu"

    .prologue
    .line 429
    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpamOptionOn(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 430
    const/4 v11, 0x0

    .line 490
    .end local p1
    :goto_0
    return v11

    .line 434
    .restart local p1
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 435
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "messageblock_mode"

    const/4 v13, 0x2

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 437
    .local v0, blockMessageMode:I
    if-nez v0, :cond_1

    .line 438
    const/4 v11, 0x0

    goto :goto_0

    .line 439
    :cond_1
    const/4 v11, 0x1

    if-ne v0, v11, :cond_2

    .line 440
    const/4 v11, 0x1

    goto :goto_0

    .line 445
    .end local v0           #blockMessageMode:I
    :cond_2
    const/4 v6, 0x0

    .line 446
    .local v6, number:Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 447
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 450
    :cond_3
    invoke-static {p0, v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isUnknownSender(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 451
    const/4 v11, 0x1

    goto :goto_0

    .line 455
    :cond_4
    const/4 v1, 0x0

    .line 456
    .local v1, body:Lcom/google/android/mms/pdu/PduBody;
    instance-of v11, p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v11, :cond_8

    .line 457
    check-cast p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 459
    if-nez v1, :cond_5

    .line 460
    const/4 v11, 0x0

    goto :goto_0

    .line 462
    :cond_5
    const/4 v9, 0x0

    .line 463
    .local v9, szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v3, 0x0

    .line 464
    .local v3, data:[B
    const/4 v2, 0x0

    .line 465
    .local v2, contentType:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v8

    .line 466
    .local v8, partsNum:I
    const/4 v5, 0x0

    .local v5, i:I
    move-object v10, v9

    .end local v9           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v10, szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_1
    if-ge v5, v8, :cond_8

    .line 467
    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 469
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    :try_start_0
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v11

    if-eqz v11, :cond_9

    .line 470
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    .line 471
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v3

    .line 472
    const-string v11, "text/plain"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 475
    if-nez v3, :cond_7

    move-object v9, v10

    .line 466
    .end local v10           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v9       #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move-object v10, v9

    .end local v9           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v10       #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_1

    .line 478
    :cond_7
    new-instance v9, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v9, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v10           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v9       #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_1
    invoke-static {p0, v9}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-eqz v11, :cond_6

    .line 480
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 484
    .end local v9           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v10       #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v4

    move-object v9, v10

    .line 485
    .end local v10           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, ex:Ljava/lang/Exception;
    .restart local v9       #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_3
    const-string v11, "Mms/SpamFilter"

    const-string v12, " isSpam Error.."

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 490
    .end local v2           #contentType:Ljava/lang/String;
    .end local v3           #data:[B
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #i:I
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v8           #partsNum:I
    .end local v9           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 484
    .restart local v2       #contentType:Ljava/lang/String;
    .restart local v3       #data:[B
    .restart local v5       #i:I
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v8       #partsNum:I
    .restart local v9       #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1
    move-exception v4

    goto :goto_3

    .end local v9           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v10       #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_9
    move-object v9, v10

    .end local v10           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v9       #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2
.end method

.method public static isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "number"
    .parameter "text"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 592
    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpamOptionOn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v8

    .line 700
    :goto_0
    return v7

    .line 597
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 598
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "messageblock_mode"

    const/4 v11, 0x2

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 600
    .local v0, blockMessageMode:I
    if-nez v0, :cond_1

    move v7, v8

    .line 601
    goto :goto_0

    .line 602
    :cond_1
    if-ne v0, v9, :cond_2

    move v7, v9

    .line 603
    goto :goto_0

    .line 608
    .end local v0           #blockMessageMode:I
    :cond_2
    invoke-static {p0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isUnknownSender(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v9

    .line 609
    goto :goto_0

    .line 617
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 618
    .local v3, emptyNumber:Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 619
    .local v4, emptyText:Z
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    move v7, v8

    .line 620
    goto :goto_0

    .line 622
    :cond_4
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->fillIfCountChanged()V

    .line 624
    :try_start_0
    sget-object v10, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :try_start_1
    sget-object v7, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v7, v7, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 626
    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 627
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 628
    .local v5, id:I
    sget-object v7, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v7, v7, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 629
    .local v1, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v7

    if-nez v7, :cond_8

    .line 630
    if-nez v3, :cond_5

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 633
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 635
    :pswitch_0
    const-string v7, "Mms/SpamFilter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exactly same as data.mFilter: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "number"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 640
    if-eqz p1, :cond_5

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    .line 642
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 643
    const-string v7, " "

    const-string v11, ""

    invoke-virtual {p1, v7, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 644
    const-string v7, "-"

    const-string v11, ""

    invoke-virtual {p1, v7, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 646
    :cond_6
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 647
    const-string v7, "Mms/SpamFilter"

    const-string v11, "filtered by number CRITERIA_EXACTLY_SAME"

    invoke-static {v7, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    monitor-exit v10

    move v7, v9

    goto/16 :goto_0

    .line 652
    :cond_7
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 653
    const-string v7, "Mms/SpamFilter"

    const-string v11, "filtered by number CRITERIA_EXACTLY_SAME"

    invoke-static {v7, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    monitor-exit v10

    move v7, v9

    goto/16 :goto_0

    .line 660
    :pswitch_1
    if-eqz p1, :cond_5

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 661
    const-string v7, "Mms/SpamFilter"

    const-string v11, "filtered by number"

    invoke-static {v7, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    monitor-exit v10

    move v7, v9

    goto/16 :goto_0

    .line 667
    :pswitch_2
    if-eqz p1, :cond_5

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 668
    const-string v7, "Mms/SpamFilter"

    const-string v11, "filtered by number"

    invoke-static {v7, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    monitor-exit v10

    move v7, v9

    goto/16 :goto_0

    .line 674
    :pswitch_3
    if-eqz p1, :cond_5

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 675
    const-string v7, "Mms/SpamFilter"

    const-string v11, "filtered by number"

    invoke-static {v7, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    monitor-exit v10

    move v7, v9

    goto/16 :goto_0

    .line 681
    :cond_8
    if-nez v4, :cond_5

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 684
    if-eqz p2, :cond_5

    .line 685
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 687
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 688
    const-string v7, "Mms/SpamFilter"

    const-string v11, "filtered by string"

    invoke-static {v7, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    monitor-exit v10

    move v7, v9

    goto/16 :goto_0

    .line 694
    .end local v1           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v5           #id:I
    :cond_9
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    .end local v6           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_2
    const-string v7, "Mms/SpamFilter"

    const-string v9, "isSpam return false"

    invoke-static {v7, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 700
    goto/16 :goto_0

    .line 694
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 695
    :catch_0
    move-exception v2

    .line 696
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v7, "Mms/SpamFilter"

    const-string v9, "NullPointerExcetpion occurred."

    invoke-static {v7, v9}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 633
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static isSpamOptionOn(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 494
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v4

    if-nez v4, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v2

    .line 497
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 499
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "messageblock_mode"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 500
    .local v0, blockMessageMode:I
    if-eqz v0, :cond_0

    .line 502
    if-ne v0, v3, :cond_3

    move v2, v3

    .line 503
    goto :goto_0

    .line 507
    .end local v0           #blockMessageMode:I
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSpamOption(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 508
    .local v1, spamOption:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v1           #spamOption:Ljava/lang/Boolean;
    :cond_3
    move v2, v3

    .line 513
    goto :goto_0
.end method

.method private static isUnknownSender(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "number"

    .prologue
    const v6, 0x7f0c013b

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 517
    const/4 v2, 0x0

    .line 518
    .local v2, unknownMode:Z
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 520
    .local v0, isUnknownSender:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 521
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 522
    .local v1, spamPreference:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_spam_option_unknown_num"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 523
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v5

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 531
    .end local v1           #spamPreference:Landroid/content/SharedPreferences;
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 535
    :goto_2
    return v5

    .restart local v1       #spamPreference:Landroid/content/SharedPreferences;
    :cond_1
    move v3, v4

    .line 523
    goto :goto_0

    .line 527
    .end local v1           #spamPreference:Landroid/content/SharedPreferences;
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSpamFilterUnknown(Landroid/content/Context;)Z

    move-result v2

    .line 528
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v3, v5

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_3

    :cond_5
    move v5, v4

    .line 535
    goto :goto_2
.end method

.method public static update(ILcom/android/mms/spam/SpamFilter$SpamFilterData;)V
    .locals 2
    .parameter "id"
    .parameter "data"

    .prologue
    .line 336
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_0
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_1
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    .line 343
    return-void
.end method

.method public static update(ILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "filter"

    .prologue
    .line 346
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    :goto_0
    return-void

    .line 349
    :cond_0
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 350
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    #setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$102(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static update(ILjava/lang/String;Z)V
    .locals 3
    .parameter "id"
    .parameter "filter"
    .parameter "enable"

    .prologue
    .line 379
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    :goto_0
    return-void

    .line 382
    :cond_0
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 383
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    #setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$102(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Ljava/lang/String;)Ljava/lang/String;

    .line 384
    #setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0, p2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$002(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Z)Z

    .line 386
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static update(ILjava/lang/String;ZI)V
    .locals 3
    .parameter "id"
    .parameter "filter"
    .parameter "enable"
    .parameter "criteria"

    .prologue
    .line 367
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    :goto_0
    return-void

    .line 370
    :cond_0
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 371
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    #setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$102(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    #setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0, p2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$002(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Z)Z

    .line 373
    #setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0, p3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$202(Lcom/android/mms/spam/SpamFilter$SpamFilterData;I)I

    .line 375
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static update(IZ)V
    .locals 4
    .parameter "id"
    .parameter "enable"

    .prologue
    .line 356
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    :goto_0
    return-void

    .line 359
    :cond_0
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 360
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    const-string v1, "Mms/SpamFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update before data= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data.mEnable= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    #setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$002(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Z)Z

    .line 362
    const-string v1, "Mms/SpamFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update after data= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data.mEnable= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static updateSpamNumber(Landroid/content/Context;ZI)V
    .locals 5
    .parameter "context"
    .parameter "checked"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 885
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 887
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "Mms/SpamFilter"

    const-string v3, "updateSpamNumber"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v3, "enable"

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 892
    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 893
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 897
    invoke-static {p2, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->update(IZ)V

    .line 898
    return-void

    .line 888
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
