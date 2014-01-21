.class public Lcom/android/mms/ui/RecipientListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RecipientListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/ui/RecipientListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static mDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private layout:I

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mContact:Lcom/android/mms/data/Contact;

.field private mContext:Landroid/content/Context;

.field private mRecipientListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/RecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/RecipientListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 53
    iput p2, p0, Lcom/android/mms/ui/RecipientListAdapter;->layout:I

    .line 54
    iput-object p3, p0, Lcom/android/mms/ui/RecipientListAdapter;->mRecipientListItems:Ljava/util/ArrayList;

    .line 56
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 58
    iput-object p1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContext:Landroid/content/Context;

    .line 59
    sget-object v0, Lcom/android/mms/ui/RecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/RecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 66
    move-object v5, p2

    .line 67
    .local v5, recipientListItem:Landroid/view/View;
    if-nez v5, :cond_0

    .line 68
    iget-object v6, p0, Lcom/android/mms/ui/RecipientListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/android/mms/ui/RecipientListAdapter;->layout:I

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 70
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/RecipientListAdapter;->mRecipientListItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/RecipientListItem;

    invoke-virtual {v6}, Lcom/android/mms/ui/RecipientListItem;->getContact()Lcom/android/mms/data/Contact;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/RecipientListAdapter;->setContactInfo(Lcom/android/mms/data/Contact;)V

    .line 72
    const v6, 0x7f0b002d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    .local v2, name:Landroid/widget/TextView;
    const v6, 0x7f0b002f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 74
    .local v3, number:Landroid/widget/TextView;
    const v6, 0x7f0b0222

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 75
    .local v0, itemLayout:Landroid/widget/LinearLayout;
    const v6, 0x7f0b00f0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    .line 77
    .local v1, mAvatarView:Landroid/widget/QuickContactBadge;
    iget-object v6, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 78
    iget-object v6, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 80
    const/4 v4, 0x0

    .line 81
    .local v4, phoneNumber:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .end local v4           #phoneNumber:Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/RecipientListAdapter;->updateAvatarView(Landroid/widget/QuickContactBadge;)V

    .line 120
    return-object v5

    .line 84
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 89
    const/4 v4, 0x0

    .line 90
    .restart local v4       #phoneNumber:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .end local v4           #phoneNumber:Ljava/lang/String;
    :goto_2
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 93
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setContactInfo(Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "contact"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    .line 131
    return-void
.end method

.method public setContactInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    .line 126
    return-void
.end method

.method public updateAvatarView(Landroid/widget/QuickContactBadge;)V
    .locals 5
    .parameter "avatarView"

    .prologue
    const/4 v4, 0x1

    .line 135
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    if-eqz v1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/mms/ui/RecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 151
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 146
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 149
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    sget-object v0, Lcom/android/mms/ui/RecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method
