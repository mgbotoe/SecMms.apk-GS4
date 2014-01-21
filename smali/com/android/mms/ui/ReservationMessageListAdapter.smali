.class public Lcom/android/mms/ui/ReservationMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ReservationMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "Mms/ReservationMessageListAdapter"


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

.field mOnContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

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
    iput v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    .line 78
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFontSize:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    .line 87
    iput-boolean v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mIsAnimationEnable:Z

    .line 92
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    .line 93
    iput p3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_nViewResourceId:I

    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    .line 102
    new-instance v0, Lcom/android/mms/ui/ReservationMessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/ReservationMessageListAdapter$1;-><init>(Lcom/android/mms/ui/ReservationMessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 109
    if-nez p2, :cond_0

    .line 110
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setFontSize(I)V

    .line 116
    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    .line 117
    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private changeFontSize()V
    .locals 7

    .prologue
    .line 278
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFontSize:I

    .line 279
    .local v0, fontSize:I
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 296
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 283
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 284
    .local v2, res:Landroid/content/res/Resources;
    packed-switch v0, :pswitch_data_0

    .line 295
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 286
    :pswitch_0
    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 289
    :pswitch_1
    const v3, 0x7f0a0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 290
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 284
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private formatContactListString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 4
    .parameter "recipients"

    .prologue
    .line 399
    if-nez p1, :cond_1

    .line 400
    const/4 v0, 0x0

    .line 420
    :cond_0
    :goto_0
    return-object v0

    .line 402
    :cond_1
    const-string v2, ", "

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, from:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 405
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 406
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c013b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 408
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 410
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 411
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, recipient:Ljava/lang/String;
    const-string v2, "CBmessages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 414
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 415
    :cond_4
    const-string v2, "Pushmessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

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
    .line 270
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    neg-long p1, p1

    .line 273
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 263
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    const/4 v0, 0x0

    .line 266
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

    .line 342
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 344
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 345
    invoke-virtual {p1, v9}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 346
    .local v1, contact:Lcom/android/mms/data/Contact;
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    long-to-int v6, p2

    invoke-static {v5, v6}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 347
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, number:Ljava/lang/String;
    const-string v4, "CBmessages"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 351
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 384
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    :goto_0
    const-string v2, ""

    .line 385
    .local v2, fromNumber:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->formatContactListString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v2

    .line 387
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 390
    iget v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    if-nez v4, :cond_7

    .line 391
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v8}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 396
    :goto_1
    return-void

    .line 352
    .end local v2           #fromNumber:Ljava/lang/String;
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    .restart local v3       #number:Ljava/lang/String;
    :cond_0
    const-string v4, "Pushmessage"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 354
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020206

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 361
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 362
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 365
    :cond_2
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 366
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v3, v8}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    .line 369
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 370
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v3, v8}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 372
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 375
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 376
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    long-to-int v5, p2

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 380
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 393
    .restart local v2       #fromNumber:Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v9}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 394
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

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
    .line 134
    move-object/from16 v11, p1

    .line 135
    .local v11, v:Landroid/view/View;
    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v12, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_nViewResourceId:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 140
    :cond_0
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v12

    if-nez v12, :cond_1

    .line 141
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 144
    :cond_1
    const v12, 0x7f0b014f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mRootLayout:Landroid/widget/LinearLayout;

    .line 145
    const v12, 0x7f0b002d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFromView:Landroid/widget/TextView;

    .line 146
    const v12, 0x7f0b002f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    .line 147
    const v12, 0x7f0b00f5

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDateView:Landroid/widget/TextView;

    .line 148
    const v12, 0x7f0b00f0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 149
    const v12, 0x7f0b00f7

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 150
    const v12, 0x7f0b0150

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    .line 152
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v12, v12, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 153
    .local v9, szMsgType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v12, v12, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 155
    .local v3, lMsgId:J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v3, v4, v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    .line 156
    .local v5, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v5, :cond_3

    .line 157
    const-string v12, "Mms/ReservationMessageListAdapter"

    const-string v13, "msgItem is null, bind view fail"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_2
    :goto_0
    return-void

    .line 161
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    if-lez v12, :cond_a

    .line 162
    const/4 v2, 0x0

    .line 163
    .local v2, checked:Z
    const-string v12, "sms"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 171
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 172
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mIsAnimationEnable:Z

    if-eqz v12, :cond_4

    .line 173
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-wide/16 v14, 0x12c

    new-instance v16, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct/range {v16 .. v16}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    const/high16 v17, 0x42a0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v18}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/mms/animation/MsgListAnimation;->showCheckBoxAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 180
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v12, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 181
    if-nez v2, :cond_5

    .line 182
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    check-cast v12, Lcom/android/mms/ui/ReservationMessageManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/ReservationMessageManager;->setMessageSelectAll(Z)V

    .line 188
    .end local v2           #checked:Z
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Lcom/android/mms/ui/MessageUtils;->getRecipientIdsByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, recipientIds:Ljava/lang/String;
    if-nez v6, :cond_6

    .line 191
    const-string v6, ""

    .line 194
    :cond_6
    const/4 v12, 0x1

    invoke-static {v6, v12}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v7

    .line 196
    .local v7, recipients:Lcom/android/mms/data/ContactList;
    const-string v8, ""

    .line 197
    .local v8, szFrom:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v12

    if-nez v12, :cond_c

    .line 198
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0c013b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 211
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const-string v12, "mms"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 215
    iget-object v10, v5, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 216
    .local v10, szSubject:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, v5, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0c000c

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 227
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDateView:Landroid/widget/TextView;

    iget-wide v13, v5, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->changeFontSize7Step()V

    .line 236
    :goto_5
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v13}, Lcom/android/mms/ui/ReservationMessageListAdapter;->updateAvatarView(Lcom/android/mms/data/ContactList;J)V

    .line 238
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 239
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    invoke-virtual {v12, v11}, Lcom/android/mms/hover/ListHoverController;->setHoverPopupStyle(Landroid/view/View;)V

    goto/16 :goto_0

    .line 165
    .end local v6           #recipientIds:Ljava/lang/String;
    .end local v7           #recipients:Lcom/android/mms/data/ContactList;
    .end local v8           #szFrom:Ljava/lang/String;
    .end local v10           #szSubject:Ljava/lang/String;
    .restart local v2       #checked:Z
    :cond_8
    const-string v12, "wpm"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_1

    .line 168
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_1

    .line 184
    .end local v2           #checked:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 201
    .restart local v6       #recipientIds:Ljava/lang/String;
    .restart local v7       #recipients:Lcom/android/mms/data/ContactList;
    .restart local v8       #szFrom:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c000b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 203
    :cond_c
    const-string v12, ", "

    invoke-virtual {v7, v12}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 204
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 205
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0c013b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 208
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c000b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 218
    .restart local v10       #szSubject:Ljava/lang/String;
    :cond_e
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 219
    iget-object v10, v5, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    goto/16 :goto_4

    .line 220
    :cond_f
    iget-object v12, v5, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 221
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4

    .line 223
    :cond_10
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4

    .line 225
    .end local v10           #szSubject:Ljava/lang/String;
    :cond_11
    iget-object v10, v5, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .restart local v10       #szSubject:Ljava/lang/String;
    goto/16 :goto_4

    .line 234
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->changeFontSize()V

    goto/16 :goto_5
.end method

.method public changeAvatarSizewhenchangeFontSize(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0x9

    const/16 v4, 0x68

    const/16 v3, 0xc

    .line 424
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Landroid/widget/QuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 426
    .local v0, AvatarLP:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x3

    .line 428
    .local v1, fontSize:I
    iget v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    if-nez v2, :cond_0

    .line 429
    iget v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFontSize:I

    .line 431
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 432
    :cond_1
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 433
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 434
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 435
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 447
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v0}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    return-void

    .line 436
    :cond_2
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 437
    :cond_3
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 438
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 439
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 440
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 442
    :cond_4
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 443
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 444
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 445
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public changeFontSize7Step()V
    .locals 8

    .prologue
    const v6, 0x7f0a00ce

    .line 299
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFontSize:I

    .line 300
    .local v0, fontSize:I
    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    .line 338
    :goto_0
    return-void

    .line 303
    :cond_0
    const-string v4, "Mms/ReservationMessageListAdapter"

    const-string v5, "changeFontSize"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 305
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 308
    .local v1, fromLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 309
    .local v3, res:Landroid/content/res/Resources;
    packed-switch v0, :pswitch_data_0

    .line 336
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 311
    :pswitch_0
    const v4, 0x7f0a00d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 312
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 316
    :pswitch_1
    const v4, 0x7f0a00d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 317
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 321
    :pswitch_2
    const v4, 0x7f0a00d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 322
    const v4, 0x7f0a00cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 326
    :pswitch_3
    const v4, 0x7f0a00d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 327
    const v4, 0x7f0a00d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 329
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00d7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 309
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
    .line 512
    const-string v0, "Mms/ReservationMessageListAdapter"

    const-string v1, "clearCheckedList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 516
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 517
    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 10
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    .line 250
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/ReservationMessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 258
    :goto_0
    return-object v0

    .line 254
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 255
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v1, "Mms/ReservationMessageListAdapter"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
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
    .line 544
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentListMode()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    return v0
.end method

.method public isCheckedMessageId(JLjava/lang/String;)Z
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 548
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 553
    :goto_0
    return v0

    .line 550
    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

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
    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_nViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 460
    const-string v0, "Mms/ReservationMessageListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/ReservationMessageListAdapter;)V

    .line 466
    :cond_0
    return-void
.end method

.method public refreshCheckList()Z
    .locals 17

    .prologue
    .line 618
    const-string v14, "Mms/ReservationMessageListAdapter"

    const-string v15, "refreshCheckList()"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 620
    .local v1, currentCursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 622
    .local v10, retVal:Z
    if-nez v1, :cond_0

    move v11, v10

    .line 680
    .end local v10           #retVal:Z
    .local v11, retVal:I
    :goto_0
    return v11

    .line 624
    .end local v11           #retVal:I
    .restart local v10       #retVal:Z
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-nez v14, :cond_1

    move v11, v10

    .line 625
    .restart local v11       #retVal:I
    goto :goto_0

    .line 628
    .end local v11           #retVal:I
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v9, msgListCurrent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v4, -0x1

    .line 631
    .local v4, lMsgId:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v14, v14, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 632
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 634
    const-string v14, "Mms/ReservationMessageListAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refreshCheckList(): msgListCurrent.size()="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 640
    .local v12, smsCheckListCnt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v12, :cond_4

    .line 641
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 642
    .local v7, msgIdTmp:J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 640
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 645
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 646
    .local v3, indexOfMsgIdTmp:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 647
    const-string v14, "Mms/ReservationMessageListAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refreshCheckList(): 1. sms chedk list : removed msgIdTmp ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const/4 v10, 0x1

    goto :goto_2

    .line 653
    .end local v3           #indexOfMsgIdTmp:I
    .end local v7           #msgIdTmp:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 654
    .local v6, mmsCheckListCnt:I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_6

    .line 655
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 656
    .restart local v7       #msgIdTmp:J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 654
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 659
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 660
    .restart local v3       #indexOfMsgIdTmp:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 661
    const-string v14, "Mms/ReservationMessageListAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refreshCheckList(): 2. mms chedk list : removed msgIdTmp ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v10, 0x1

    goto :goto_4

    .line 667
    .end local v3           #indexOfMsgIdTmp:I
    .end local v7           #msgIdTmp:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 668
    .local v13, wpmCheckListCnt:I
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v13, :cond_8

    .line 669
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 670
    .restart local v7       #msgIdTmp:J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 668
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 673
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 674
    .restart local v3       #indexOfMsgIdTmp:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 675
    const-string v14, "Mms/ReservationMessageListAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refreshCheckList(): 3. wpm chedk list : removed msgIdTmp ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const/4 v10, 0x1

    goto :goto_6

    .end local v3           #indexOfMsgIdTmp:I
    .end local v7           #msgIdTmp:J
    :cond_8
    move v11, v10

    .line 680
    .restart local v11       #retVal:I
    goto/16 :goto_0
.end method

.method public refreshFontSize()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFontSize:I

    .line 125
    return-void
.end method

.method public resetCheckedList()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 488
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 489
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 490
    return-void
.end method

.method public setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 558
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .parameter "isAnimationEnable"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mIsAnimationEnable:Z

    .line 121
    return-void
.end method

.method public setChecked(JLjava/lang/String;)V
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 493
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_2
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 499
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 504
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 245
    iput p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFontSize:I

    .line 246
    return-void
.end method

.method public setMessageListMode(I)V
    .locals 1
    .parameter "nListMode"

    .prologue
    .line 474
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    if-ne v0, p1, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    .line 479
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    if-lez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 481
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 482
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    .line 456
    return-void
.end method

.method public toggleCheckBox(JLjava/lang/String;)Z
    .locals 3
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    const/4 v0, 0x0

    .line 520
    const-string v1, "sms"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 540
    :goto_0
    return v0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 526
    :cond_1
    const-string v1, "wpm"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 527
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 531
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 533
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 534
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
