.class public Lcom/android/mms/ui/ConversationListItem;
.super Landroid/widget/RelativeLayout;
.source "ConversationListItem.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Landroid/view/View$OnDragListener;


# static fields
.field public static LIST_FROM_TEXT_SIZE_HUGE:F = 0.0f

.field public static LIST_FROM_TEXT_SIZE_LARGE:F = 0.0f

.field public static LIST_FROM_TEXT_SIZE_NORMAL:F = 0.0f

.field public static LIST_FROM_TEXT_SIZE_SMALL:F = 0.0f

.field public static LIST_FROM_TEXT_SIZE_TINY:F = 0.0f

.field public static LIST_HEIGHT_HUGE:I = 0x0

.field public static LIST_HEIGHT_LARGE:I = 0x0

.field public static LIST_HEIGHT_NORMAL:I = 0x0

.field public static LIST_HEIGHT_SMALL:I = 0x0

.field public static LIST_HEIGHT_TINY:I = 0x0

.field public static LIST_SUBJECT_TEXT_SIZE_HUGE:F = 0.0f

.field public static LIST_SUBJECT_TEXT_SIZE_LARGE:F = 0.0f

.field public static LIST_SUBJECT_TEXT_SIZE_NORMAL:F = 0.0f

.field public static LIST_SUBJECT_TEXT_SIZE_SMALL:F = 0.0f

.field public static LIST_SUBJECT_TEXT_SIZE_TINY:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "Mms/ConversationListItem"


# instance fields
.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mConversationDetailsLayout:Landroid/widget/RelativeLayout;

.field private mDateView:Landroid/widget/TextView;

.field private mFontSize:I

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsDeleteMode:Z

.field private mIsMoveMode:Z

.field private mIsSaveMode:Z

.field private mIsSplitMode:Z

.field private mMsgPointer:Landroid/widget/ImageView;

.field private mOldFontSize:I

.field private mPresenceView:Landroid/widget/ImageView;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mStatusView:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mUnreadCount:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x4190

    const/16 v1, 0x40

    .line 91
    const/high16 v0, 0x4194

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_TINY:F

    .line 92
    const/high16 v0, 0x41a4

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_SMALL:F

    .line 93
    const/high16 v0, 0x41b0

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    .line 94
    const/high16 v0, 0x41e4

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_LARGE:F

    .line 95
    const/high16 v0, 0x4220

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_HUGE:F

    .line 97
    const/high16 v0, 0x4140

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    .line 98
    const/high16 v0, 0x4160

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    .line 99
    const/high16 v0, 0x4180

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    .line 100
    sput v2, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    .line 101
    sput v2, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    .line 103
    const/16 v0, 0x2c

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_TINY:I

    .line 104
    const/16 v0, 0x32

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_SMALL:I

    .line 105
    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_NORMAL:I

    .line 106
    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_LARGE:I

    .line 107
    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_HUGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsSaveMode:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsMoveMode:Z

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    .line 82
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsSplitMode:Z

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 88
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsSaveMode:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsMoveMode:Z

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    .line 82
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsSplitMode:Z

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 88
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateFromView()V

    return-void
.end method

.method private formatMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 168
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 169
    .local v2, recipients:Lcom/android/mms/data/ContactList;
    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, from:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c013b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_0
    :goto_0
    return-object v0

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 178
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, recipient:Ljava/lang/String;
    const-string v3, "CBmessages"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_3
    const-string v3, "Pushmessage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0161

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private reCreateNameView()V
    .locals 7

    .prologue
    .line 318
    const v5, 0x7f0b002d

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 319
    .local v0, from:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 323
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 324
    .local v4, parent:Landroid/view/ViewGroup;
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 325
    .local v1, index:I
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 327
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 328
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04002c

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #from:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 329
    .restart local v0       #from:Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 332
    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private setConversationDetailsMargin(I)V
    .locals 6
    .parameter "marginInDp"

    .prologue
    .line 266
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationDetailsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 267
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 268
    .local v2, r:Landroid/content/res/Resources;
    const/4 v3, 0x1

    int-to-float v4, p1

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v1, v3

    .line 269
    .local v1, px:I
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 270
    return-void
.end method

.method private updateAvatarView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 192
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v5, :cond_0

    .line 263
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 196
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-ne v5, v8, :cond_a

    .line 197
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 198
    .local v1, contact:Lcom/android/mms/data/Contact;
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    long-to-int v4, v5

    .line 199
    .local v4, threadId:I
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 200
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, number:Ljava/lang/String;
    const-string v5, "CBmessages"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 203
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 204
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 243
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #threadId:I
    :goto_1
    const-string v2, ""

    .line 244
    .local v2, fromNumber:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 245
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 250
    :goto_2
    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    if-eqz v5, :cond_d

    .line 251
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v7}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 256
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v5

    if-eqz v5, :cond_e

    sget-boolean v5, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 258
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->getSecretAvatar(J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    :goto_4
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto/16 :goto_0

    .line 205
    .end local v2           #fromNumber:Ljava/lang/String;
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    .restart local v3       #number:Ljava/lang/String;
    .restart local v4       #threadId:I
    :cond_1
    const-string v5, "Pushmessage"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 207
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020206

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 208
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 209
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 210
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 211
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    .line 212
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 213
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    .line 215
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201f9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    .line 218
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 219
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRCS()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 220
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 222
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 226
    :cond_7
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 227
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v3, v8}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 230
    :cond_8
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 231
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v3, v8}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 233
    :cond_9
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 236
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #threadId:I
    :cond_a
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-nez v5, :cond_b

    .line 237
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    long-to-int v4, v5

    .line 238
    .restart local v4       #threadId:I
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 239
    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 240
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #threadId:I
    :cond_b
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201fc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 247
    .restart local v2       #fromNumber:Ljava/lang/String;
    :cond_c
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 253
    :cond_d
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 260
    :cond_e
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4
.end method

.method private updateFromView()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const v1, 0x7f0c01e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 279
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getPresenceResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->setPresenceIcon(I)V

    .line 286
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRemovingContactThumbnail()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsSplitMode:Z

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 289
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->setConversationDetailsMargin(I)V

    goto :goto_0

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationDetailsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 293
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->setConversationDetailsMargin(I)V

    .line 295
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    goto :goto_0

    .line 299
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V
    .locals 18
    .parameter "context"
    .parameter "conversation"

    .prologue
    .line 425
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    .line 427
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    if-eq v2, v3, :cond_0

    .line 428
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->reCreateNameView()V

    .line 429
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    .line 432
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v16

    .line 433
    .local v16, unreadCount:I
    if-lez v16, :cond_4

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c042c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 446
    :goto_0
    const/4 v11, 0x0

    .line 447
    .local v11, dateViewVisibility:I
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-nez v2, :cond_5

    .line 448
    const/16 v11, 0x8

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    :goto_1
    const/4 v14, 0x0

    .line 463
    .local v14, statusViewVisibility:I
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    const v3, 0x7f0c000a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 506
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 529
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    .line 531
    .local v9, contacts:Lcom/android/mms/data/ContactList;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 532
    invoke-virtual {v9}, Lcom/android/mms/data/ContactList;->getPresenceResId()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListItem;->setPresenceIcon(I)V

    .line 534
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 535
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListItem;->changeFontSize7Step(I)V

    .line 540
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 542
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v13, v2

    .line 543
    .local v13, mFromViewMarginRight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v13, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 546
    .end local v13           #mFromViewMarginRight:I
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRemovingContactThumbnail()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 547
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/ConversationListItem;->mIsSplitMode:Z

    if-eqz v2, :cond_e

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 549
    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/ConversationListItem;->setConversationDetailsMargin(I)V

    .line 563
    :goto_5
    return-void

    .line 439
    .end local v9           #contacts:Lcom/android/mms/data/ContactList;
    .end local v11           #dateViewVisibility:I
    .end local v14           #statusViewVisibility:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c042d

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v7, v8

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 442
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 451
    .restart local v11       #dateViewVisibility:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v3

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const v3, 0x7f0c01b5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 459
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 457
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 467
    .restart local v14       #statusViewVisibility:I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasError()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    const v3, 0x7f0c0137

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 471
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasSending()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    const v3, 0x7f0c0136

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 475
    const/16 v11, 0x8

    .line 477
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMMSStatusUIForCHN()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    long-to-int v15, v2

    .line 479
    .local v15, thread_id:I
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "m_id"

    aput-object v3, v5, v2

    .line 480
    .local v5, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/util/NetworkConnectionUtils;->isMmsNetworkAvailable(Landroid/content/Context;)Z

    move-result v12

    .line 481
    .local v12, isAvail:Z
    if-nez v12, :cond_1

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 483
    .local v6, where:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 486
    .local v10, cursorCdma:Landroid/database/Cursor;
    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 487
    const-string v2, "Mms/ConversationListItem"

    const-string v3, "pending status : change to pending status"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    const v3, 0x7f0c0233

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 491
    :cond_9
    if-eqz v10, :cond_1

    .line 492
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 497
    .end local v5           #projection:[Ljava/lang/String;
    .end local v6           #where:Ljava/lang/String;
    .end local v10           #cursorCdma:Landroid/database/Cursor;
    .end local v12           #isAvail:Z
    .end local v15           #thread_id:I
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasPending()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    const v3, 0x7f0c009d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 501
    const/16 v11, 0x8

    goto/16 :goto_2

    .line 503
    :cond_b
    const/16 v14, 0x8

    goto/16 :goto_2

    .line 513
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 537
    .restart local v9       #contacts:Lcom/android/mms/data/ContactList;
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListItem;->changeFontSize(I)V

    goto/16 :goto_4

    .line 552
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mConversationDetailsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_f

    .line 553
    const/16 v2, 0x48

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/ConversationListItem;->setConversationDetailsMargin(I)V

    .line 555
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    goto/16 :goto_5

    .line 559
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    goto/16 :goto_5
.end method

.method public changeFontSize(I)V
    .locals 11
    .parameter "fontSize"

    .prologue
    .line 336
    const/4 v7, 0x4

    if-ge p1, v7, :cond_0

    .line 369
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 340
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 341
    .local v3, presenceLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 342
    .local v6, unreadCountLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 344
    .local v5, statusLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 345
    .local v4, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 365
    :goto_1
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 347
    :pswitch_0
    const v7, 0x7f0a0005

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 348
    const v7, 0x7f0a0011

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v1, v7

    .line 349
    .local v1, largeTopMargin:I
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 350
    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 351
    const v7, 0x7f0a0014

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 354
    .end local v1           #largeTopMargin:I
    :pswitch_1
    const v7, 0x7f0a0006

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 355
    const v7, 0x7f0a0012

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v0, v7

    .line 356
    .local v0, hugeTopMargin:I
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 357
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 358
    const v7, 0x7f0a0015

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 360
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0009

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeFontSize7Step(I)V
    .locals 17
    .parameter "fontSize"

    .prologue
    .line 372
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ge v0, v13, :cond_0

    .line 422
    :goto_0
    return-void

    .line 375
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListItem;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 376
    .local v7, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 377
    .local v9, presenceLP:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 378
    .local v12, unreadCountLP:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 379
    .local v11, statusLP:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 381
    .local v3, fromLP:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 382
    .local v10, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 417
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListItem;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v13, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 384
    :pswitch_0
    const v13, 0x7f0a00d3

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    iput v13, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 385
    const v13, 0x7f0a00ce

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v8, v13

    .line 386
    .local v8, mediumTopMargin:I
    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 389
    .end local v8           #mediumTopMargin:I
    :pswitch_1
    const v13, 0x7f0a00d4

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    iput v13, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 390
    const v13, 0x7f0a00ce

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v6, v13

    .line 391
    .local v6, largeTopMargin:I
    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 394
    .end local v6           #largeTopMargin:I
    :pswitch_2
    const v13, 0x7f0a00d5

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    iput v13, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 395
    const v13, 0x7f0a00d1

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v2, v13

    .line 396
    .local v2, extraLargeTopMargin:I
    const v13, 0x7f0a00cf

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v1, v13

    .line 397
    .local v1, extraLargeFromTopMargin:I
    iput v2, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 398
    iput v2, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 399
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 400
    iput v2, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 403
    .end local v1           #extraLargeFromTopMargin:I
    .end local v2           #extraLargeTopMargin:I
    :pswitch_3
    const v13, 0x7f0a00d6

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    iput v13, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 404
    const v13, 0x7f0a00d2

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v5, v13

    .line 405
    .local v5, hugeTopMargin:I
    const v13, 0x7f0a00d0

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v4, v13

    .line 406
    .local v4, hugeFromTopMargin:I
    iput v5, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 407
    iput v5, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 408
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 409
    iput v5, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 411
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a00d7

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAvatarView()Landroid/widget/QuickContactBadge;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getCheckBoxView()Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v0, :cond_0

    .line 634
    const v0, 0x7f0b00f7

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    const v11, 0x7f0c014d

    const/4 v10, 0x0

    .line 641
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    .line 642
    .local v1, action:I
    const/4 v4, 0x0

    .line 644
    .local v4, result:Z
    packed-switch v1, :pswitch_data_0

    .line 679
    const-string v7, "DragDrop"

    const-string v8, "Unknown action type received by OnDragListener."

    invoke-static {v7, v8}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    move v5, v4

    .line 682
    .end local v4           #result:Z
    .local v5, result:I
    :goto_1
    return v5

    .line 649
    .end local v5           #result:I
    .restart local v4       #result:Z
    :pswitch_0
    const/4 v4, 0x1

    .line 650
    goto :goto_0

    .line 653
    :pswitch_1
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    invoke-static {v7, v8, v9, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v6

    .line 654
    .local v6, selectedConv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 655
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v7, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 656
    const/4 v4, 0x0

    move v5, v4

    .line 657
    .restart local v5       #result:I
    goto :goto_1

    .line 660
    .end local v5           #result:I
    :cond_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 661
    .local v2, clipData:Landroid/content/ClipData;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 662
    .local v3, clipDescription:Landroid/content/ClipDescription;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 663
    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 664
    .local v0, ClipLabel:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSupportedUri(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 665
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v7, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 668
    :cond_3
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v2, v3}, Lcom/android/mms/ui/MessageUtils;->openComposerWithDropObject(Landroid/net/Uri;Landroid/content/ClipData;Landroid/content/ClipDescription;)V

    .line 669
    const/4 v4, 0x1

    .line 671
    goto :goto_0

    .line 675
    .end local v0           #ClipLabel:Ljava/lang/CharSequence;
    .end local v2           #clipData:Landroid/content/ClipData;
    .end local v3           #clipDescription:Landroid/content/ClipDescription;
    .end local v6           #selectedConv:Lcom/android/mms/data/Conversation;
    :pswitch_2
    const/4 v4, 0x1

    .line 676
    goto :goto_0

    .line 644
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 122
    const v0, 0x7f0b00ef

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 123
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0b00f5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0b00f3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0b00f4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    .line 129
    const v0, 0x7f0b00f0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 130
    const v0, 0x7f0b00f7

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    .line 132
    const v0, 0x7f0b00f2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0b00f1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationDetailsLayout:Landroid/widget/RelativeLayout;

    .line 135
    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 137
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/data/ContactList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListItem$1;-><init>(Lcom/android/mms/ui/ConversationListItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 612
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 614
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_0

    .line 622
    :goto_0
    return-void

    .line 617
    :cond_0
    if-eqz p1, :cond_1

    .line 618
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    goto :goto_0

    .line 620
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    goto :goto_0
.end method

.method public setCheckBox(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 571
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 572
    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 2
    .parameter "isDeleteMode"

    .prologue
    .line 574
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    .line 575
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    goto :goto_0
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 629
    iput p1, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    .line 630
    return-void
.end method

.method public setMessagePointer(ZZ)V
    .locals 2
    .parameter "focus"
    .parameter "touch"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 153
    :cond_0
    if-eqz p2, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const v1, 0x7f02029d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    :goto_1
    if-eqz p1, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const v1, 0x7f02029c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMoveMode(Z)V
    .locals 2
    .parameter "isMoveMode"

    .prologue
    .line 585
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsMoveMode:Z

    .line 586
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsMoveMode:Z

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    goto :goto_0
.end method

.method public setPresenceIcon(I)V
    .locals 2
    .parameter "iconId"

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSaveMode(Z)V
    .locals 2
    .parameter "isSaveMode"

    .prologue
    .line 596
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsSaveMode:Z

    .line 597
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsSaveMode:Z

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 603
    :goto_0
    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    goto :goto_0
.end method

.method public setSplitMode(Z)V
    .locals 0
    .parameter "isSplitMode"

    .prologue
    .line 606
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsSplitMode:Z

    .line 607
    return-void
.end method

.method public final unbind()V
    .locals 0

    .prologue
    .line 566
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 567
    return-void
.end method
