.class public Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;
.super Ljava/lang/Object;
.source "SecretCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SecretCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecretModeCacheData"
.end annotation


# instance fields
.field private mAvatarDrawable:Landroid/graphics/drawable/Drawable;

.field private mId:J

.field private mIsStale:Z

.field private mSecretMode:I


# direct methods
.method constructor <init>(JI)V
    .locals 3
    .parameter "id"
    .parameter "secretmode"

    .prologue
    .line 558
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mIsStale:Z

    .line 559
    iput-wide p1, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mId:J

    .line 560
    iput p3, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I

    .line 561
    iget-wide v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mId:J

    iget v2, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->setSecretAvatarDrawable(JI)Z

    .line 562
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 552
    iget v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 552
    iput p1, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 552
    iget-wide v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mIsStale:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 552
    iput-boolean p1, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mIsStale:Z

    return p1
.end method

.method private getAvatar()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getID()J
    .locals 2

    .prologue
    .line 565
    iget-wide v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mId:J

    return-wide v0
.end method

.method private getSecretMode()I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I

    return v0
.end method


# virtual methods
.method public setSecretAvatarDrawable(JI)Z
    .locals 10
    .parameter "id"
    .parameter "secretmode"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x2

    new-array v1, v8, [Landroid/graphics/drawable/Drawable;

    .line 580
    .local v1, avatarDrawableLayers:[Landroid/graphics/drawable/Drawable;
    if-ge p3, v7, :cond_1

    .line 581
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 618
    :cond_0
    :goto_0
    return v6

    .line 585
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->access$400()Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    move-result-object v8

    #getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->access$500(Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;)Landroid/content/Context;

    move-result-object v3

    .line 586
    .local v3, context:Landroid/content/Context;
    invoke-static {v3, p1, p2}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, number:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 589
    const/16 v8, 0x3b

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ge v8, v9, :cond_4

    .line 590
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0201fc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 605
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 606
    long-to-int v8, p1

    invoke-static {v3, v8}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 609
    :cond_3
    aput-object v0, v1, v6

    .line 610
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020058

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v1, v7

    .line 611
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 613
    .local v5, secretAvatar:Landroid/graphics/drawable/LayerDrawable;
    if-eqz v5, :cond_0

    .line 614
    iput-object v5, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    move v6, v7

    .line 615
    goto :goto_0

    .line 592
    .end local v5           #secretAvatar:Landroid/graphics/drawable/LayerDrawable;
    :cond_4
    invoke-static {v4, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    .line 593
    .local v2, contact:Lcom/android/mms/data/Contact;
    if-eqz v2, :cond_5

    .line 594
    long-to-int v8, p1

    invoke-static {v3, v8}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 597
    :cond_5
    const-string v8, "CBmessages"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 598
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0201f8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 599
    :cond_6
    const-string v8, "Pushmessage"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 600
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020206

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method
