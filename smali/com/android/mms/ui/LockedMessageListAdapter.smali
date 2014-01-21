.class public Lcom/android/mms/ui/LockedMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "LockedMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "Mms/LockedMessageListAdapter"


# instance fields
.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckedMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedWpmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mDateView:Landroid/widget/TextView;

.field private final mFactory:Landroid/view/LayoutInflater;

.field private mFontSize:I

.field private mFromView:Landroid/widget/TextView;

.field private mIsAnimationEnable:Z

.field private mListHoverController:Lcom/android/mms/hover/ListHoverController;

.field private mListItemLayout:Landroid/widget/RelativeLayout;

.field private final mMessageItemCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/BaseMessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field public mMsgListMode:I

.field mOnContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

.field mRootLayout:Landroid/widget/LinearLayout;

.field private mSubjectView:Landroid/widget/TextView;

.field private mTypeView:Landroid/widget/ImageView;

.field private m_LayoutInflater:Landroid/view/LayoutInflater;

.field private m_nViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "textViewResourceId"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 71
    iput v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    .line 81
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    .line 90
    iput-boolean v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mIsAnimationEnable:Z

    .line 95
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    .line 96
    iput p3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->m_nViewResourceId:I

    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    .line 105
    new-instance v0, Lcom/android/mms/ui/LockedMessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/LockedMessageListAdapter$1;-><init>(Lcom/android/mms/ui/LockedMessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 112
    if-nez p2, :cond_0

    .line 113
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->setFontSize(I)V

    .line 119
    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    .line 120
    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private changeFontSize(I)V
    .locals 6
    .parameter "fontSize"

    .prologue
    .line 329
    const/4 v2, 0x4

    if-ge p1, v2, :cond_0

    .line 347
    :goto_0
    return-void

    .line 332
    :cond_0
    const-string v2, "Mms/LockedMessageListAdapter"

    const-string v3, "changeFontSize"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 334
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 335
    .local v1, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 346
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 337
    :pswitch_0
    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 340
    :pswitch_1
    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 341
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createFromView()V
    .locals 7

    .prologue
    .line 136
    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 153
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v5, "Mms/LockedMessageListAdapter"

    const-string v6, "createFromView"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 142
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 143
    .local v4, parent:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 144
    .local v1, index:I
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 146
    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 147
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04002c

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    .local v0, from:Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 152
    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private formatContactListString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 4
    .parameter "recipients"

    .prologue
    .line 449
    if-nez p1, :cond_1

    .line 450
    const/4 v0, 0x0

    .line 470
    :cond_0
    :goto_0
    return-object v0

    .line 452
    :cond_1
    const-string v2, ", "

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, from:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 455
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c013b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 458
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 460
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 461
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, recipient:Ljava/lang/String;
    const-string v2, "CBmessages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 464
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 465
    :cond_4
    const-string v2, "Pushmessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0161

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 321
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    neg-long p1, p1

    .line 324
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 314
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isInboxMessage(Ljava/lang/String;Landroid/database/Cursor;)Z
    .locals 4
    .parameter "msgType"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 667
    const-string v3, "mms"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 668
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 670
    .local v0, mmsBoxType:I
    if-ne v0, v2, :cond_2

    .line 680
    .end local v0           #mmsBoxType:I
    :cond_0
    :goto_0
    return v2

    .line 672
    :cond_1
    const-string v3, "sms"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 673
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 675
    .local v1, smsBoxType:I
    if-eq v1, v2, :cond_0

    .line 680
    .end local v1           #smsBoxType:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateAvatarView(Lcom/android/mms/data/ContactList;J)V
    .locals 10
    .parameter "recipients"
    .parameter "threadId"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 392
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 394
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 395
    invoke-virtual {p1, v9}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    .line 396
    .local v2, contact:Lcom/android/mms/data/Contact;
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    long-to-int v6, p2

    invoke-static {v5, v6}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 397
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, number:Ljava/lang/String;
    const-string v4, "CBmessages"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 401
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 434
    .end local v2           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    :goto_0
    const-string v1, ""

    .line 435
    .local v1, avatarNumber:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageListAdapter;->formatContactListString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v1

    .line 437
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 439
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 440
    iget v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    if-nez v4, :cond_7

    .line 441
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v8}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 446
    :goto_1
    return-void

    .line 402
    .end local v1           #avatarNumber:Ljava/lang/String;
    .restart local v2       #contact:Lcom/android/mms/data/Contact;
    .restart local v3       #number:Ljava/lang/String;
    :cond_0
    const-string v4, "Pushmessage"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 403
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 404
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020206

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 412
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 415
    :cond_2
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 416
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v3, v8}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    .line 419
    :cond_3
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 420
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v3, v8}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 422
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 425
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 426
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    long-to-int v5, p2

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 430
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 443
    .restart local v1       #avatarNumber:Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v9}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 444
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 157
    move-object/from16 v14, p1

    .line 158
    .local v14, v:Landroid/view/View;
    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v15, :cond_0

    .line 159
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->m_nViewResourceId:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 162
    :cond_0
    if-nez v14, :cond_2

    .line 163
    const-string v15, "Mms/LockedMessageListAdapter"

    const-string v16, "view is null !!!"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v15

    if-nez v15, :cond_3

    .line 169
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 172
    :cond_3
    const v15, 0x7f0b014f

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mRootLayout:Landroid/widget/LinearLayout;

    .line 173
    const v15, 0x7f0b002d

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    .line 174
    const v15, 0x7f0b002f

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    .line 175
    const v15, 0x7f0b00f5

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mDateView:Landroid/widget/TextView;

    .line 176
    const v15, 0x7f0b00f0

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 177
    const v15, 0x7f0b00f7

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 178
    const v15, 0x7f0b0152

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mTypeView:Landroid/widget/ImageView;

    .line 179
    const v15, 0x7f0b0150

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    .line 181
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 182
    .local v9, oldFontSize:Ljava/lang/Integer;
    if-nez v9, :cond_8

    .line 183
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 191
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v15, v15, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 192
    .local v12, szMsgType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v15, v15, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 195
    .local v6, lMsgId:J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v6, v7, v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/BaseMessageItem;

    move-result-object v8

    .line 197
    .local v8, msgItem:Lcom/android/mms/ui/BaseMessageItem;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    if-lez v15, :cond_b

    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, checked:Z
    const-string v15, "sms"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 200
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 207
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v15, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 216
    if-nez v3, :cond_5

    .line 217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    check-cast v15, Lcom/android/mms/ui/LockedMessageManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/LockedMessageManager;->setMessageSelectAll(Z)V

    .line 225
    .end local v3           #checked:Z
    :cond_5
    :goto_3
    :try_start_0
    iget-object v15, v8, Lcom/android/mms/ui/BaseMessageItem;->mRecipientIds:Ljava/lang/String;

    if-nez v15, :cond_6

    .line 226
    const-string v15, ""

    iput-object v15, v8, Lcom/android/mms/ui/BaseMessageItem;->mRecipientIds:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_6
    :goto_4
    iget-object v15, v8, Lcom/android/mms/ui/BaseMessageItem;->mRecipientIds:Ljava/lang/String;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v10

    .line 236
    .local v10, recipients:Lcom/android/mms/data/ContactList;
    const-string v11, ""

    .line 237
    .local v11, szFrom:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/mms/data/ContactList;->size()I

    move-result v15

    if-nez v15, :cond_d

    .line 238
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 239
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    const v16, 0x7f0c013b

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 251
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    const-string v15, "mms"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 255
    iget-object v13, v8, Lcom/android/mms/ui/BaseMessageItem;->mSubject:Ljava/lang/String;

    .line 256
    .local v13, szSubject:Ljava/lang/String;
    iget v15, v8, Lcom/android/mms/ui/BaseMessageItem;->mMessageType:I

    const/16 v16, 0x82

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 257
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 258
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    const v16, 0x7f0c000c

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 275
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->isInboxMessage(Ljava/lang/String;Landroid/database/Cursor;)Z

    move-result v15

    if-eqz v15, :cond_15

    const v5, 0x7f0201fd

    .line 276
    .local v5, icon:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mTypeView:Landroid/widget/ImageView;

    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mDateView:Landroid/widget/TextView;

    iget-wide v0, v8, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 282
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/mms/ui/LockedMessageListAdapter;->changeFontSize7Step(I)V

    .line 287
    :goto_8
    invoke-virtual {v8}, Lcom/android/mms/ui/BaseMessageItem;->getThreadId()J

    move-result-wide v15

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v10, v1, v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->updateAvatarView(Lcom/android/mms/data/ContactList;J)V

    .line 289
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 290
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    invoke-virtual {v15, v14}, Lcom/android/mms/hover/ListHoverController;->setHoverPopupStyle(Landroid/view/View;)V

    goto/16 :goto_0

    .line 185
    .end local v5           #icon:I
    .end local v6           #lMsgId:J
    .end local v8           #msgItem:Lcom/android/mms/ui/BaseMessageItem;
    .end local v10           #recipients:Lcom/android/mms/data/ContactList;
    .end local v11           #szFrom:Ljava/lang/String;
    .end local v12           #szMsgType:Ljava/lang/String;
    .end local v13           #szSubject:Ljava/lang/String;
    :cond_8
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/LockedMessageListAdapter;->createFromView()V

    .line 187
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 201
    .restart local v3       #checked:Z
    .restart local v6       #lMsgId:J
    .restart local v8       #msgItem:Lcom/android/mms/ui/BaseMessageItem;
    .restart local v12       #szMsgType:Ljava/lang/String;
    :cond_9
    const-string v15, "wpm"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 202
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 204
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 219
    .end local v3           #checked:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_3

    .line 227
    :catch_0
    move-exception v4

    .line 229
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v15, "Mms/LockedMessageListAdapter"

    const-string v16, "NullPointerException"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 241
    .end local v4           #e:Ljava/lang/NullPointerException;
    .restart local v10       #recipients:Lcom/android/mms/data/ContactList;
    .restart local v11       #szFrom:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c000b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5

    .line 243
    :cond_d
    const-string v15, ", "

    invoke-virtual {v10, v15}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 244
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 245
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 246
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    const v16, 0x7f0c013b

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5

    .line 248
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c000b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5

    .line 260
    .restart local v13       #szSubject:Ljava/lang/String;
    :cond_f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/android/mms/ui/BaseMessageItem;->mSubject:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_6

    .line 262
    :cond_10
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_11

    iget-object v15, v8, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 263
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    const v16, 0x7f0c000c

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_6

    .line 264
    :cond_11
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 265
    iget-object v13, v8, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    goto/16 :goto_6

    .line 266
    :cond_12
    iget-object v15, v8, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 267
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/android/mms/ui/BaseMessageItem;->mSubject:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_6

    .line 269
    :cond_13
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/android/mms/ui/BaseMessageItem;->mSubject:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_6

    .line 272
    .end local v13           #szSubject:Ljava/lang/String;
    :cond_14
    iget-object v13, v8, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    .restart local v13       #szSubject:Ljava/lang/String;
    goto/16 :goto_6

    .line 275
    :cond_15
    const v5, 0x7f0201fe

    goto/16 :goto_7

    .line 284
    .restart local v5       #icon:I
    :cond_16
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/ui/LockedMessageListAdapter;->changeFontSize(I)V

    goto/16 :goto_8
.end method

.method public changeAvatarSizewhenchangeFontSize(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0x9

    const/16 v4, 0x68

    const/16 v3, 0xc

    .line 474
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Landroid/widget/QuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 476
    .local v0, AvatarLP:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x3

    .line 478
    .local v1, fontSize:I
    iget v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    if-nez v2, :cond_0

    .line 479
    iget v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    .line 481
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 482
    :cond_1
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 483
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 484
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 485
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 497
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v0}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    return-void

    .line 486
    :cond_2
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 487
    :cond_3
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 488
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 489
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 490
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 492
    :cond_4
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 493
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 494
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 495
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public changeFontSize7Step(I)V
    .locals 7
    .parameter "fontSize"

    .prologue
    const v5, 0x7f0a00ce

    .line 350
    const/4 v3, 0x4

    if-ge p1, v3, :cond_0

    .line 388
    :goto_0
    return-void

    .line 353
    :cond_0
    const-string v3, "Mms/LockedMessageListAdapter"

    const-string v4, "changeFontSize"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 355
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 358
    .local v0, fromLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 359
    .local v2, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 386
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 361
    :pswitch_0
    const v3, 0x7f0a00d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 362
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 366
    :pswitch_1
    const v3, 0x7f0a00d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 367
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 371
    :pswitch_2
    const v3, 0x7f0a00d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 372
    const v3, 0x7f0a00cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 376
    :pswitch_3
    const v3, 0x7f0a00d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 377
    const v3, 0x7f0a00d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 379
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public checkMessageIdForLockedMessages(Landroid/database/Cursor;)V
    .locals 9
    .parameter "cursor"

    .prologue
    .line 689
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v4, mTempCheckedSmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v3, mTempCheckedMmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v5, mTempCheckedWpmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget v7, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    if-lez v7, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 694
    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v7, v7, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 695
    .local v6, szMsgType:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v7, v7, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 696
    .local v1, lMsgId:J
    const/4 v0, 0x0

    .line 697
    .local v0, checked:Z
    const-string v7, "sms"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 698
    iget-object v7, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 699
    if-eqz v0, :cond_1

    .line 700
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 714
    iput-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    .line 715
    iput-object v5, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    .line 716
    iput-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    .line 718
    .end local v0           #checked:Z
    .end local v1           #lMsgId:J
    .end local v6           #szMsgType:Ljava/lang/String;
    :cond_2
    return-void

    .line 702
    .restart local v0       #checked:Z
    .restart local v1       #lMsgId:J
    .restart local v6       #szMsgType:Ljava/lang/String;
    :cond_3
    const-string v7, "wpm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 703
    iget-object v7, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 704
    if-eqz v0, :cond_1

    .line 705
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 708
    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 709
    if-eqz v0, :cond_1

    .line 710
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearCheckedList()V
    .locals 2

    .prologue
    .line 562
    const-string v0, "Mms/LockedMessageListAdapter"

    const-string v1, "clearCheckedList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 565
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 566
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 567
    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/BaseMessageItem;
    .locals 7
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 300
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/LockedMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/BaseMessageItem;

    .line 301
    .local v1, item:Lcom/android/mms/ui/BaseMessageItem;
    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/LockedMessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    :try_start_0
    new-instance v2, Lcom/android/mms/ui/BaseMessageItem;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v2, v3, p1, p4, v4}, Lcom/android/mms/ui/BaseMessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v1           #item:Lcom/android/mms/ui/BaseMessageItem;
    .local v2, item:Lcom/android/mms/ui/BaseMessageItem;
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v4, v2, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/mms/ui/BaseMessageItem;->getMsgId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/LockedMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 309
    .end local v2           #item:Lcom/android/mms/ui/BaseMessageItem;
    .restart local v1       #item:Lcom/android/mms/ui/BaseMessageItem;
    :cond_0
    :goto_0
    return-object v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v3, "Mms/LockedMessageListAdapter"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    .end local v1           #item:Lcom/android/mms/ui/BaseMessageItem;
    .restart local v2       #item:Lcom/android/mms/ui/BaseMessageItem;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #item:Lcom/android/mms/ui/BaseMessageItem;
    .restart local v1       #item:Lcom/android/mms/ui/BaseMessageItem;
    goto :goto_1
.end method

.method public getCheckedCount()I
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentListMode()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    return v0
.end method

.method public isCheckedMessageId(JLjava/lang/String;)Z
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 598
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 603
    :goto_0
    return v0

    .line 600
    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->m_nViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 510
    const-string v0, "Mms/LockedMessageListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/LockedMessageListAdapter;)V

    .line 516
    :cond_0
    return-void
.end method

.method public refreshFontSize()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    .line 128
    return-void
.end method

.method public resetCheckedList()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 538
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 539
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 540
    return-void
.end method

.method public setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 608
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .parameter "isAnimationEnable"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mIsAnimationEnable:Z

    .line 124
    return-void
.end method

.method public setChecked(JLjava/lang/String;)V
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 543
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    :cond_2
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 549
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 554
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 296
    iput p1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    .line 297
    return-void
.end method

.method public setMessageListMode(I)V
    .locals 1
    .parameter "nListMode"

    .prologue
    .line 524
    iget v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    if-ne v0, p1, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    .line 529
    iget v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    if-lez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 531
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 532
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

    .line 506
    return-void
.end method

.method public toggleCheckBox(JLjava/lang/String;)Z
    .locals 3
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    const/4 v0, 0x0

    .line 570
    const-string v1, "sms"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 590
    :goto_0
    return v0

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 576
    :cond_1
    const-string v1, "wpm"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 577
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 583
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 584
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 587
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
