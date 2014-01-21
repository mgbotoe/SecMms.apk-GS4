.class public Lcom/android/mms/ui/MessageContactHeader;
.super Landroid/widget/LinearLayout;
.source "MessageContactHeader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MessageContactHeader"


# instance fields
.field private mContactList:Lcom/android/mms/data/ContactList;

.field protected mContactUri:Landroid/net/Uri;

.field protected mContext:Landroid/content/Context;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mNameView:Landroid/widget/TextView;

.field private mRecipientStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageContactHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mExcludeMimes:[Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mRecipientStr:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method public bindContactHeader(Lcom/android/mms/data/ContactList;)Z
    .locals 6
    .parameter "contactList"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 60
    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactList:Lcom/android/mms/data/ContactList;

    .line 63
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageContactHeader;->invalidate()V

    .line 65
    if-nez p1, :cond_0

    .line 123
    :goto_0
    return v3

    .line 69
    :cond_0
    const-string v2, ""

    .line 72
    .local v2, recipient:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-ne v5, v4, :cond_5

    .line 73
    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 74
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, addr:Ljava/lang/String;
    const-string v3, "CBmessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    iget-object v3, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00fb

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageContactHeader;->setDisplayName(Ljava/lang/CharSequence;)V

    move v3, v4

    .line 123
    goto :goto_0

    .line 82
    .restart local v0       #addr:Ljava/lang/String;
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    :cond_2
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    iget-object v3, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0161

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 86
    :cond_3
    const-string v3, "#CMAS#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 87
    iget-object v3, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 102
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 106
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 107
    const-string v3, ", "

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getRecipientString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mRecipientStr:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageContactHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mNameView:Landroid/widget/TextView;

    .line 57
    return-void
.end method

.method public setContactList(Lcom/android/mms/data/ContactList;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactList:Lcom/android/mms/data/ContactList;

    .line 129
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "displayName"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mRecipientStr:Ljava/lang/String;

    .line 155
    :cond_0
    return-void
.end method
