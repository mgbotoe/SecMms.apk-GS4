.class public Lcom/android/mms/ui/ViewTitleHeader;
.super Landroid/widget/LinearLayout;
.source "ViewTitleHeader.java"


# static fields
.field static final CACHE_SIZE:I = 0x32


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field mDisplayAddress:Ljava/lang/String;

.field mMsgID:J

.field mMsgItem:Lcom/android/mms/ui/MessageItem;

.field mMsgType:Ljava/lang/String;

.field mTitleIcon01:Landroid/widget/ImageView;

.field mTitleIcon02:Landroid/widget/ImageView;

.field mTitleIcon03:Landroid/widget/ImageView;

.field mTitleSender:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private createViewTitleHeader()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 124
    const v0, 0x7f0b02ae

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ViewTitleHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f0b02af

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ViewTitleHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    .line 126
    const v0, 0x7f0b02b0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ViewTitleHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon03:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon03:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    invoke-direct {p0}, Lcom/android/mms/ui/ViewTitleHeader;->setTitleSender()V

    .line 134
    iget-wide v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/mms/ui/ViewTitleHeader;->setTitleIcon()V

    .line 137
    :cond_0
    return-void
.end method

.method private setTitleIcon()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 170
    const-wide/16 v0, 0x0

    .line 173
    .local v0, isMsgLock:J
    const-string v2, "ViewTitleHeader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTitleIcon,mMsgType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "wpm"

    iget-object v3, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgType:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgID:J

    iget-object v5, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;)J

    move-result-wide v0

    .line 178
    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    const v3, 0x7f020218

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    const v3, 0x7f020217

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    :cond_2
    return-void
.end method

.method private setTitleSender()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 141
    const-string v0, "mms"

    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContext:Landroid/content/Context;

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "msgItem"
    .parameter "messageId"
    .parameter "type"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContentResolver:Landroid/content/ContentResolver;

    .line 55
    iput-wide p3, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgID:J

    .line 56
    iput-object p5, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgType:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 59
    iget-wide v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgID:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 60
    const-string v4, ""

    .line 61
    .local v4, szDisplayAddress:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, v6, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, arrayAddress:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, ""

    .line 64
    .local v5, szRecipients:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, v6, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {p1, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 66
    const-string v6, ";"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, dests:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_0

    .line 68
    aget-object v6, v1, v2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v1           #dests:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 71
    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .end local v0           #arrayAddress:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #szRecipients:Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 75
    iput-object v4, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    .line 119
    .end local v4           #szDisplayAddress:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ViewTitleHeader;->createViewTitleHeader()V

    .line 120
    return-void

    .line 77
    .restart local v4       #szDisplayAddress:Ljava/lang/String;
    :cond_3
    const-string v6, "mms"

    iget-object v7, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 78
    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v6, :cond_4

    const v6, 0x7f0c000d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 81
    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContext:Landroid/content/Context;

    invoke-static {v6, p3, p4}, Lcom/android/mms/ui/MessageUtils;->getViewTitleStrings(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v3

    .line 97
    .local v3, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto :goto_1

    .line 100
    .end local v3           #phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 101
    const v6, 0x7f0c013b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto :goto_1

    .line 103
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 104
    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto :goto_1

    .line 107
    :cond_6
    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v6, :cond_2

    .line 108
    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v6, v6, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-eqz v6, :cond_7

    .line 109
    const v6, 0x7f0c00fb

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto :goto_1

    .line 111
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 112
    const v6, 0x7f0c013b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto/16 :goto_1

    .line 114
    :cond_8
    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public getSenderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleIconCount()I
    .locals 2

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, visibleIconNum:I
    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 225
    add-int/lit8 v0, v0, 0x1

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 228
    add-int/lit8 v0, v0, 0x1

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon03:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon03:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 231
    add-int/lit8 v0, v0, 0x1

    .line 234
    :cond_2
    return v0
.end method

.method public isNeededVisible()Z
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x4

    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 214
    :cond_1
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFailedeIcon(Z)V
    .locals 2
    .parameter "bFailed"

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    const v1, 0x7f020217

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLockIcon(Z)V
    .locals 2
    .parameter "isLock"

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    const v1, 0x7f020218

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
