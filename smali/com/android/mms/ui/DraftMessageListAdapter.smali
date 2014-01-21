.class public Lcom/android/mms/ui/DraftMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "DraftMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "Mms/DraftMessageListAdapter"


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

.field mOnContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

.field mRootLayout:Landroid/widget/LinearLayout;

.field private mSubjectView:Landroid/widget/TextView;

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

    .line 91
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 68
    iput v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    .line 78
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    .line 87
    iput-boolean v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mIsAnimationEnable:Z

    .line 92
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    .line 93
    iput p3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->m_nViewResourceId:I

    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    .line 102
    new-instance v0, Lcom/android/mms/ui/DraftMessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/DraftMessageListAdapter$1;-><init>(Lcom/android/mms/ui/DraftMessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 109
    if-nez p2, :cond_0

    .line 110
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DraftMessageListAdapter;->setFontSize(I)V

    .line 116
    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    .line 117
    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private changeFontSize(I)V
    .locals 6
    .parameter "fontSize"

    .prologue
    .line 330
    const/4 v2, 0x4

    if-ge p1, v2, :cond_0

    .line 348
    :goto_0
    return-void

    .line 333
    :cond_0
    const-string v2, "Mms/DraftMessageListAdapter"

    const-string v3, "changeFontSize"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 335
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 336
    .local v1, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 347
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 338
    :pswitch_0
    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 341
    :pswitch_1
    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 342
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 336
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
    .line 142
    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 159
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v5, "Mms/DraftMessageListAdapter"

    const-string v6, "createFromView"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 148
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 149
    .local v4, parent:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 150
    .local v1, index:I
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 152
    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 153
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04002c

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    .local v0, from:Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 158
    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private formatContactListString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 4
    .parameter "recipients"

    .prologue
    .line 450
    if-nez p1, :cond_1

    .line 451
    const/4 v0, 0x0

    .line 471
    :cond_0
    :goto_0
    return-object v0

    .line 453
    :cond_1
    const-string v2, ", "

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, from:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 456
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c013b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 459
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 461
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 462
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, recipient:Ljava/lang/String;
    const-string v2, "CBmessages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 465
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 466
    :cond_4
    const-string v2, "Pushmessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

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
    .line 322
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    neg-long p1, p1

    .line 325
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 315
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

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

    .line 393
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 395
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 396
    invoke-virtual {p1, v9}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 397
    .local v1, contact:Lcom/android/mms/data/Contact;
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    long-to-int v6, p2

    invoke-static {v5, v6}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 398
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, number:Ljava/lang/String;
    const-string v4, "CBmessages"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 402
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 435
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    :goto_0
    const-string v2, ""

    .line 436
    .local v2, fromNumber:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageListAdapter;->formatContactListString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v2

    .line 438
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 440
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 441
    iget v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    if-nez v4, :cond_7

    .line 442
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v8}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 447
    :goto_1
    return-void

    .line 403
    .end local v2           #fromNumber:Ljava/lang/String;
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    .restart local v3       #number:Ljava/lang/String;
    :cond_0
    const-string v4, "Pushmessage"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 404
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 405
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020206

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 413
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 416
    :cond_2
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 417
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v3, v8}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    .line 420
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 421
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v3, v8}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 423
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 426
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 427
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    long-to-int v5, p2

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 431
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 444
    .restart local v2       #fromNumber:Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v9}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 445
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 19
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 163
    move-object/from16 v11, p1

    .line 164
    .local v11, v:Landroid/view/View;
    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v12, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->m_nViewResourceId:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 168
    :cond_0
    if-nez v11, :cond_2

    .line 169
    const-string v12, "Mms/DraftMessageListAdapter"

    const-string v13, "view is null !!!"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v12

    if-nez v12, :cond_3

    .line 175
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 178
    :cond_3
    const v12, 0x7f0b014f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mRootLayout:Landroid/widget/LinearLayout;

    .line 179
    const v12, 0x7f0b002d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    .line 180
    const v12, 0x7f0b002f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    .line 181
    const v12, 0x7f0b00f5

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mDateView:Landroid/widget/TextView;

    .line 182
    const v12, 0x7f0b00f0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 183
    const v12, 0x7f0b00f7

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 184
    const v12, 0x7f0b0150

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    .line 186
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 187
    .local v6, oldFontSize:Ljava/lang/Integer;
    if-nez v6, :cond_5

    .line 188
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 196
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v12, v12, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, szMsgType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v12, v12, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 200
    .local v3, lMsgId:J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v3, v4, v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/BaseMessageItem;

    move-result-object v5

    .line 202
    .local v5, msgItem:Lcom/android/mms/ui/BaseMessageItem;
    if-nez v5, :cond_6

    .line 203
    const-string v12, "Mms/DraftMessageListAdapter"

    const-string v13, "msgItem is null, bind view fail"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    .end local v3           #lMsgId:J
    .end local v5           #msgItem:Lcom/android/mms/ui/BaseMessageItem;
    .end local v9           #szMsgType:Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    if-eq v12, v13, :cond_4

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/DraftMessageListAdapter;->createFromView()V

    .line 192
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 208
    .restart local v3       #lMsgId:J
    .restart local v5       #msgItem:Lcom/android/mms/ui/BaseMessageItem;
    .restart local v9       #szMsgType:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    if-lez v12, :cond_d

    .line 209
    const/4 v2, 0x0

    .line 210
    .local v2, checked:Z
    const-string v12, "sms"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 211
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 219
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 220
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mIsAnimationEnable:Z

    if-eqz v12, :cond_7

    .line 221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-wide/16 v14, 0x12c

    new-instance v16, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct/range {v16 .. v16}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    const/high16 v17, 0x42a0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v18}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/mms/animation/MsgListAnimation;->showCheckBoxAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 228
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v12, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 229
    if-nez v2, :cond_8

    .line 230
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    check-cast v12, Lcom/android/mms/ui/DraftMessageManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/DraftMessageManager;->setMessageSelectAll(Z)V

    .line 237
    .end local v2           #checked:Z
    :cond_8
    :goto_3
    iget-object v12, v5, Lcom/android/mms/ui/BaseMessageItem;->mRecipientIds:Ljava/lang/String;

    if-nez v12, :cond_9

    .line 238
    const-string v12, ""

    iput-object v12, v5, Lcom/android/mms/ui/BaseMessageItem;->mRecipientIds:Ljava/lang/String;

    .line 243
    :cond_9
    iget-object v12, v5, Lcom/android/mms/ui/BaseMessageItem;->mRecipientIds:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v7

    .line 245
    .local v7, recipients:Lcom/android/mms/data/ContactList;
    const-string v8, ""

    .line 246
    .local v8, szFrom:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v12

    if-nez v12, :cond_f

    .line 247
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 248
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0c013b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 260
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    const-string v12, "mms"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 264
    iget-object v10, v5, Lcom/android/mms/ui/BaseMessageItem;->mSubject:Ljava/lang/String;

    .line 265
    .local v10, szSubject:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, v5, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0c000c

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 276
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mDateView:Landroid/widget/TextView;

    iget-wide v13, v5, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v12

    if-eqz v12, :cond_15

    .line 281
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/DraftMessageListAdapter;->changeFontSize7Step(I)V

    .line 286
    :goto_6
    invoke-virtual {v5}, Lcom/android/mms/ui/BaseMessageItem;->getThreadId()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v13}, Lcom/android/mms/ui/DraftMessageListAdapter;->updateAvatarView(Lcom/android/mms/data/ContactList;J)V

    .line 288
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 289
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    invoke-virtual {v12, v11}, Lcom/android/mms/hover/ListHoverController;->setHoverPopupStyle(Landroid/view/View;)V

    goto/16 :goto_0

    .line 212
    .end local v7           #recipients:Lcom/android/mms/data/ContactList;
    .end local v8           #szFrom:Ljava/lang/String;
    .end local v10           #szSubject:Ljava/lang/String;
    .restart local v2       #checked:Z
    :cond_b
    const-string v12, "wpm"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 213
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_2

    .line 215
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_2

    .line 232
    .end local v2           #checked:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_3

    .line 250
    .restart local v7       #recipients:Lcom/android/mms/data/ContactList;
    .restart local v8       #szFrom:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c000b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 252
    :cond_f
    const-string v12, ", "

    invoke-virtual {v7, v12}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 253
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 254
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 255
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0c013b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 257
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c000b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 267
    .restart local v10       #szSubject:Ljava/lang/String;
    :cond_11
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 268
    iget-object v10, v5, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    goto/16 :goto_5

    .line 269
    :cond_12
    iget-object v12, v5, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 270
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/mms/ui/BaseMessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    .line 272
    :cond_13
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/mms/ui/BaseMessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    .line 274
    .end local v10           #szSubject:Ljava/lang/String;
    :cond_14
    iget-object v10, v5, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    .restart local v10       #szSubject:Ljava/lang/String;
    goto/16 :goto_5

    .line 283
    :cond_15
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/DraftMessageListAdapter;->changeFontSize(I)V

    goto/16 :goto_6
.end method

.method public changeAvatarSizewhenchangeFontSize(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0x9

    const/16 v4, 0x68

    const/16 v3, 0xc

    .line 475
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Landroid/widget/QuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 477
    .local v0, AvatarLP:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x3

    .line 479
    .local v1, fontSize:I
    iget v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    if-nez v2, :cond_0

    .line 480
    iget v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    .line 482
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 483
    :cond_1
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 484
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 485
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 486
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 498
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v0}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    return-void

    .line 487
    :cond_2
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 488
    :cond_3
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 489
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 490
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 491
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 493
    :cond_4
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 494
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 495
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 496
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public changeFontSize7Step(I)V
    .locals 7
    .parameter "fontSize"

    .prologue
    const v5, 0x7f0a00ce

    .line 351
    const/4 v3, 0x4

    if-ge p1, v3, :cond_0

    .line 389
    :goto_0
    return-void

    .line 354
    :cond_0
    const-string v3, "Mms/DraftMessageListAdapter"

    const-string v4, "changeFontSize"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 356
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 359
    .local v0, fromLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 360
    .local v2, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 387
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 362
    :pswitch_0
    const v3, 0x7f0a00d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 363
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 367
    :pswitch_1
    const v3, 0x7f0a00d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 368
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 372
    :pswitch_2
    const v3, 0x7f0a00d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 373
    const v3, 0x7f0a00cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 377
    :pswitch_3
    const v3, 0x7f0a00d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 378
    const v3, 0x7f0a00d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 380
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public checkMessageIdForSmsDrafts(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 617
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v3, mTempCheckedSmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 619
    iget v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    if-lez v5, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 621
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 622
    .local v4, szMsgType:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 623
    .local v1, lMsgId:J
    const/4 v0, 0x0

    .line 624
    .local v0, checked:Z
    const-string v5, "sms"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 625
    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 626
    if-eqz v0, :cond_1

    .line 627
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 631
    iput-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    .line 633
    .end local v0           #checked:Z
    .end local v1           #lMsgId:J
    .end local v4           #szMsgType:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public clearCheckedList()V
    .locals 2

    .prologue
    .line 563
    const-string v0, "Mms/DraftMessageListAdapter"

    const-string v1, "clearCheckedList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 566
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 567
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 568
    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/BaseMessageItem;
    .locals 7
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 300
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/DraftMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/BaseMessageItem;

    .line 302
    .local v1, item:Lcom/android/mms/ui/BaseMessageItem;
    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/DraftMessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    :try_start_0
    new-instance v2, Lcom/android/mms/ui/BaseMessageItem;

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v2, v3, p1, p4, v4}, Lcom/android/mms/ui/BaseMessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v1           #item:Lcom/android/mms/ui/BaseMessageItem;
    .local v2, item:Lcom/android/mms/ui/BaseMessageItem;
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v4, v2, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/mms/ui/BaseMessageItem;->getMsgId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/DraftMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 310
    .end local v2           #item:Lcom/android/mms/ui/BaseMessageItem;
    .restart local v1       #item:Lcom/android/mms/ui/BaseMessageItem;
    :cond_0
    :goto_0
    return-object v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v3, "Mms/DraftMessageListAdapter"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
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
    .line 595
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentListMode()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    return v0
.end method

.method public isCheckedMessageId(JLjava/lang/String;)Z
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 599
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 604
    :goto_0
    return v0

    .line 601
    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

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
    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->m_nViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "Mms/DraftMessageListAdapter"

    const-string v1, "notifyDataSetChanged()."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 130
    return-void
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 511
    const-string v0, "Mms/DraftMessageListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/DraftMessageListAdapter;)V

    .line 517
    :cond_0
    return-void
.end method

.method public refreshFontSize()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    .line 134
    return-void
.end method

.method public resetCheckedList()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 539
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 540
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 541
    return-void
.end method

.method public setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 609
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .parameter "isAnimationEnable"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mIsAnimationEnable:Z

    .line 121
    return-void
.end method

.method public setChecked(JLjava/lang/String;)V
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 544
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 549
    :cond_2
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 550
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

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
    iput p1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    .line 297
    return-void
.end method

.method public setMessageListMode(I)V
    .locals 1
    .parameter "nListMode"

    .prologue
    .line 525
    iget v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    if-ne v0, p1, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    .line 530
    iget v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    if-lez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 532
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 533
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

    .line 507
    return-void
.end method

.method public toggleCheckBox(JLjava/lang/String;)Z
    .locals 3
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    const/4 v0, 0x0

    .line 571
    const-string v1, "sms"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 591
    :goto_0
    return v0

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 577
    :cond_1
    const-string v1, "wpm"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 578
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 579
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 584
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 585
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 588
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
