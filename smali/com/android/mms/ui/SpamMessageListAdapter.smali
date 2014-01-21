.class public Lcom/android/mms/ui/SpamMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SpamMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "Mms/SpamMessageListAdapter"


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
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field public mMsgListMode:I

.field mOnContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

.field mRootLayout:Landroid/widget/LinearLayout;

.field private mSelectedMessagePos:J

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
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 64
    iput v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    .line 80
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mSelectedMessagePos:J

    .line 84
    iput-boolean v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mIsAnimationEnable:Z

    .line 89
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    .line 90
    iput p3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_nViewResourceId:I

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    .line 99
    new-instance v0, Lcom/android/mms/ui/SpamMessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/SpamMessageListAdapter$1;-><init>(Lcom/android/mms/ui/SpamMessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 106
    if-nez p2, :cond_0

    .line 107
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SpamMessageListAdapter;->setFontSize(I)V

    .line 113
    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    .line 114
    return-void

    .line 109
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private changeFontSize(I)V
    .locals 6
    .parameter "fontSize"

    .prologue
    .line 255
    const/4 v2, 0x4

    if-ge p1, v2, :cond_0

    .line 273
    :goto_0
    return-void

    .line 258
    :cond_0
    const-string v2, "Mms/SpamMessageListAdapter"

    const-string v3, "changeFontSize"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 260
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 261
    .local v1, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 272
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 263
    :pswitch_0
    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 266
    :pswitch_1
    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 267
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private formatContactListString(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 3
    .parameter "contact"

    .prologue
    .line 376
    if-nez p1, :cond_1

    .line 377
    const/4 v0, 0x0

    .line 387
    :cond_0
    :goto_0
    return-object v0

    .line 379
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, contactName:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "CBmessages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 383
    :cond_2
    if-eqz v0, :cond_0

    const-string v1, "Pushmessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 247
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    neg-long p1, p1

    .line 250
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 240
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateAvatarView(Lcom/android/mms/data/Contact;I)V
    .locals 8
    .parameter "contact"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 320
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 325
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, p2}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 326
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, number:Ljava/lang/String;
    const-string v3, "CBmessages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 330
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 362
    :goto_0
    const-string v1, ""

    .line 363
    .local v1, fromNumber:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageListAdapter;->formatContactListString(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    .line 365
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v7}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 369
    iget v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    if-nez v3, :cond_5

    .line 370
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 373
    :goto_1
    return-void

    .line 331
    .end local v1           #fromNumber:Ljava/lang/String;
    :cond_0
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 333
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020206

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 341
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 344
    :cond_2
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 345
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v2, v6}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    .line 348
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 349
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v2, v6}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 351
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 372
    .restart local v1       #fromNumber:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v7}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 131
    move-object v10, p1

    .line 132
    .local v10, v:Landroid/view/View;
    if-nez v10, :cond_0

    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v11, :cond_0

    .line 133
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    iget v12, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_nViewResourceId:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 136
    :cond_0
    const v11, 0x7f0b0290

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mRootLayout:Landroid/widget/LinearLayout;

    .line 137
    const v11, 0x7f0b002d

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    .line 138
    const v11, 0x7f0b002f

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    .line 139
    const v11, 0x7f0b00f5

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mDateView:Landroid/widget/TextView;

    .line 140
    const v11, 0x7f0b00f0

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/QuickContactBadge;

    iput-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 141
    const v11, 0x7f0b00f7

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 142
    const v11, 0x7f0b0150

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    .line 144
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v11, v11, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, szMsgType:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v11, v11, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 148
    .local v4, lMsgId:J
    move-object/from16 v0, p3

    invoke-virtual {p0, v8, v4, v5, v0}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    .line 150
    .local v6, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v6, :cond_2

    .line 151
    const-string v11, "Mms/SpamMessageListAdapter"

    const-string v12, "msgItem is null, bind view fail"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    iget v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    if-lez v11, :cond_7

    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, checked:Z
    const-string v11, "sms"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 158
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 165
    :goto_1
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 173
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v11, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 174
    if-nez v2, :cond_3

    .line 175
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/android/mms/ui/SpamMessageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/SpamMessageManager;->setMessageSelectAll(Z)V

    .line 183
    .end local v2           #checked:Z
    :cond_3
    :goto_2
    iget-object v1, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 184
    .local v1, addr:Ljava/lang/String;
    const/4 v11, 0x1

    invoke-static {v1, v11}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    .line 186
    .local v3, contact:Lcom/android/mms/data/Contact;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 187
    const-string v7, ""

    .line 188
    .local v7, szFrom:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 189
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f0c013b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 192
    :goto_3
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .end local v7           #szFrom:Ljava/lang/String;
    :goto_4
    const-string v11, "mms"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 199
    iget-object v9, v6, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 200
    .local v9, szSubject:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 201
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f0c000c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 205
    :cond_4
    :goto_5
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mDateView:Landroid/widget/TextView;

    iget-wide v12, v6, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 210
    iget v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/SpamMessageListAdapter;->changeFontSize7Step(I)V

    .line 214
    :goto_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-direct {p0, v3, v11}, Lcom/android/mms/ui/SpamMessageListAdapter;->updateAvatarView(Lcom/android/mms/data/Contact;I)V

    .line 216
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 217
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    invoke-virtual {v11, v10}, Lcom/android/mms/hover/ListHoverController;->setHoverPopupStyle(Landroid/view/View;)V

    goto/16 :goto_0

    .line 159
    .end local v1           #addr:Ljava/lang/String;
    .end local v3           #contact:Lcom/android/mms/data/Contact;
    .end local v9           #szSubject:Ljava/lang/String;
    .restart local v2       #checked:Z
    :cond_5
    const-string v11, "wpm"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 160
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_1

    .line 162
    :cond_6
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_1

    .line 177
    .end local v2           #checked:Z
    :cond_7
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 178
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 191
    .restart local v1       #addr:Ljava/lang/String;
    .restart local v3       #contact:Lcom/android/mms/data/Contact;
    .restart local v7       #szFrom:Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c000b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    .line 194
    .end local v7           #szFrom:Ljava/lang/String;
    :cond_9
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 203
    :cond_a
    iget-object v9, v6, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .restart local v9       #szSubject:Ljava/lang/String;
    goto :goto_5

    .line 212
    :cond_b
    iget v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    invoke-direct {p0, v11}, Lcom/android/mms/ui/SpamMessageListAdapter;->changeFontSize(I)V

    goto :goto_6
.end method

.method public changeAvatarSizewhenchangeFontSize(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0x9

    const/16 v4, 0x68

    const/16 v3, 0xc

    .line 391
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Landroid/widget/QuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 393
    .local v0, AvatarLP:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x3

    .line 395
    .local v1, fontSize:I
    iget v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    if-nez v2, :cond_0

    .line 396
    iget v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    .line 398
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 399
    :cond_1
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 400
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 401
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 402
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 414
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v0}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    return-void

    .line 403
    :cond_2
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 404
    :cond_3
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 405
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 406
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 407
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 409
    :cond_4
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 410
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 411
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 412
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public changeFontSize7Step(I)V
    .locals 7
    .parameter "fontSize"

    .prologue
    const v5, 0x7f0a00ce

    .line 276
    const/4 v3, 0x4

    if-ge p1, v3, :cond_0

    .line 314
    :goto_0
    return-void

    .line 279
    :cond_0
    const-string v3, "Mms/SpamMessageListAdapter"

    const-string v4, "changeFontSize"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 281
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 284
    .local v0, fromLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 285
    .local v2, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 312
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 287
    :pswitch_0
    const v3, 0x7f0a00d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 288
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 292
    :pswitch_1
    const v3, 0x7f0a00d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 293
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 297
    :pswitch_2
    const v3, 0x7f0a00d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 298
    const v3, 0x7f0a00cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 302
    :pswitch_3
    const v3, 0x7f0a00d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 303
    const v3, 0x7f0a00d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 305
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public clearCheckedList()V
    .locals 2

    .prologue
    .line 479
    const-string v0, "Mms/SpamMessageListAdapter"

    const-string v1, "clearCheckedList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 482
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 483
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 484
    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 10
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    .line 227
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/SpamMessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/SpamMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    :goto_0
    return-object v0

    .line 231
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 232
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v1, "Mms/SpamMessageListAdapter"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v8

    goto :goto_1

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_0
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public getCheckedCount()I
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentListMode()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    return v0
.end method

.method public initListItemSelectedMessagePos()V
    .locals 2

    .prologue
    .line 589
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mSelectedMessagePos:J

    .line 590
    return-void
.end method

.method public isCheckedMessageId(JLjava/lang/String;)Z
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 515
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 520
    :goto_0
    return v0

    .line 517
    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

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
    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_nViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 427
    const-string v0, "Mms/SpamMessageListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/SpamMessageListAdapter;)V

    .line 433
    :cond_0
    return-void
.end method

.method public refreshFontSize()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    .line 122
    return-void
.end method

.method public resetCheckedList()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 455
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 456
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 457
    return-void
.end method

.method public setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 525
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .parameter "isAnimationEnable"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mIsAnimationEnable:Z

    .line 118
    return-void
.end method

.method public setChecked(JLjava/lang/String;)V
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 460
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 465
    :cond_2
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 471
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 222
    iput p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    .line 223
    return-void
.end method

.method public setListItemSelected(J)V
    .locals 0
    .parameter "messagePos"

    .prologue
    .line 585
    iput-wide p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mSelectedMessagePos:J

    .line 586
    return-void
.end method

.method public setMessageListMode(I)V
    .locals 1
    .parameter "nListMode"

    .prologue
    .line 441
    iget v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    if-ne v0, p1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    .line 446
    iget v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    if-lez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 448
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 449
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

    .line 423
    return-void
.end method

.method public toggleCheckBox(JLjava/lang/String;)Z
    .locals 3
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    const/4 v0, 0x0

    .line 487
    const-string v1, "sms"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 507
    :goto_0
    return v0

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 493
    :cond_1
    const-string v1, "wpm"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 494
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 495
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 500
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 501
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 504
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
