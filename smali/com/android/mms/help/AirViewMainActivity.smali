.class public Lcom/android/mms/help/AirViewMainActivity;
.super Landroid/app/Activity;
.source "AirViewMainActivity.java"


# static fields
.field static guideView:Landroid/view/View;

.field static hoverTextLayout:Landroid/view/View;

.field static infoCompleteBubble:Landroid/widget/Button;

.field static mHasHovered:Z

.field static mHoverListener:Landroid/view/View$OnHoverListener;


# instance fields
.field MENU_COMPOSE:I

.field details:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/help/MessageDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

.field private mTotalConversations:Landroid/widget/TextView;

.field private mTotalConversationsLayout:Landroid/widget/LinearLayout;

.field msgList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/help/AirViewMainActivity;->mHasHovered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/help/AirViewMainActivity;->MENU_COMPOSE:I

    return-void
.end method

.method public static hideInfoBubble(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 192
    sget-object v0, Lcom/android/mms/help/AirViewMainActivity;->infoCompleteBubble:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/help/AirViewMainActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/help/AirViewMainActivity$2;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    return-void
.end method


# virtual methods
.method public isSPenInformationPreviewOn()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/android/mms/help/AirViewMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 183
    .local v1, isSPenHoveringOn:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/help/AirViewMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_information_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 185
    .local v0, isSPenHoveringInformationPreviewOn:Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 188
    :goto_2
    return v2

    .end local v0           #isSPenHoveringInformationPreviewOn:Z
    .end local v1           #isSPenHoveringOn:Z
    :cond_0
    move v1, v3

    .line 182
    goto :goto_0

    .restart local v1       #isSPenHoveringOn:Z
    :cond_1
    move v0, v3

    .line 183
    goto :goto_1

    .restart local v0       #isSPenHoveringInformationPreviewOn:Z
    :cond_2
    move v2, v3

    .line 188
    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const v5, 0x7f0b0028

    const v4, 0x7f0b0021

    .line 239
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, hoverImage:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/mms/help/AirViewMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/mms/help/TwHelpAnimatedDialog;->stopAnimation_land()V

    .line 243
    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #hoverImage:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 244
    .restart local v0       #hoverImage:Landroid/widget/ImageView;
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #hoverImage:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 246
    .restart local v0       #hoverImage:Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    sput-object v2, Lcom/android/mms/help/AirViewMainActivity;->hoverTextLayout:Landroid/view/View;

    .line 248
    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->hoverTextLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 249
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 250
    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->mHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 262
    :goto_0
    return-void

    .line 252
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/mms/help/TwHelpAnimatedDialog;->stopAnimation_pot()V

    .line 253
    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #hoverImage:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 254
    .restart local v0       #hoverImage:Landroid/widget/ImageView;
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #hoverImage:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 256
    .restart local v0       #hoverImage:Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    sput-object v2, Lcom/android/mms/help/AirViewMainActivity;->hoverTextLayout:Landroid/view/View;

    .line 258
    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->hoverTextLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 259
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 260
    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->mHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v4, 0x7f040011

    invoke-virtual {p0, v4}, Lcom/android/mms/help/AirViewMainActivity;->setContentView(I)V

    .line 56
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableLandscapeModeonActivity()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/help/AirViewMainActivity;->setRequestedOrientation(I)V

    .line 60
    :cond_0
    const v4, 0x7f0b0030

    invoke-virtual {p0, v4}, Lcom/android/mms/help/AirViewMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/mms/help/AirViewMainActivity;->msgList:Landroid/widget/ListView;

    .line 61
    const v4, 0x7f0b0031

    invoke-virtual {p0, v4}, Lcom/android/mms/help/AirViewMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    sput-object v4, Lcom/android/mms/help/AirViewMainActivity;->infoCompleteBubble:Landroid/widget/Button;

    .line 62
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/help/AirViewMainActivity;->details:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lcom/android/mms/help/MessageDetails;

    invoke-direct {v0}, Lcom/android/mms/help/MessageDetails;-><init>()V

    .line 66
    .local v0, detail:Lcom/android/mms/help/MessageDetails;
    const v4, 0x7f0201ff

    invoke-virtual {v0, v4}, Lcom/android/mms/help/MessageDetails;->setIcon(I)V

    .line 67
    const-string v4, "111-444-7777"

    invoke-virtual {v0, v4}, Lcom/android/mms/help/MessageDetails;->setName(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/mms/help/AirViewMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/mms/help/MessageDetails;->setSub(Ljava/lang/String;)V

    .line 69
    const-string v4, "12:06"

    invoke-virtual {v0, v4}, Lcom/android/mms/help/MessageDetails;->setTime(Ljava/lang/String;)V

    .line 70
    iget-object v4, p0, Lcom/android/mms/help/AirViewMainActivity;->details:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v0, Lcom/android/mms/help/MessageDetails;

    .end local v0           #detail:Lcom/android/mms/help/MessageDetails;
    invoke-direct {v0}, Lcom/android/mms/help/MessageDetails;-><init>()V

    .line 73
    .restart local v0       #detail:Lcom/android/mms/help/MessageDetails;
    const v4, 0x7f020200

    invoke-virtual {v0, v4}, Lcom/android/mms/help/MessageDetails;->setIcon(I)V

    .line 74
    const-string v4, "222-555-8888"

    invoke-virtual {v0, v4}, Lcom/android/mms/help/MessageDetails;->setName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/mms/help/AirViewMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/mms/help/MessageDetails;->setSub(Ljava/lang/String;)V

    .line 76
    const-string v4, "12:06"

    invoke-virtual {v0, v4}, Lcom/android/mms/help/MessageDetails;->setTime(Ljava/lang/String;)V

    .line 77
    iget-object v4, p0, Lcom/android/mms/help/AirViewMainActivity;->details:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lcom/android/mms/help/MessageDetails;

    .end local v0           #detail:Lcom/android/mms/help/MessageDetails;
    invoke-direct {v0}, Lcom/android/mms/help/MessageDetails;-><init>()V

    .line 80
    .restart local v0       #detail:Lcom/android/mms/help/MessageDetails;
    const v4, 0x7f020202

    invoke-virtual {v0, v4}, Lcom/android/mms/help/MessageDetails;->setIcon(I)V

    .line 81
    const-string v4, "333-000-9999"

    invoke-virtual {v0, v4}, Lcom/android/mms/help/MessageDetails;->setName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/mms/help/AirViewMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03dc

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "111-1111-1111"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "222-2222-2222"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "333-3333-3333"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/mms/help/MessageDetails;->setSub(Ljava/lang/String;)V

    .line 83
    const-string v4, "09:19"

    invoke-virtual {v0, v4}, Lcom/android/mms/help/MessageDetails;->setTime(Ljava/lang/String;)V

    .line 84
    iget-object v4, p0, Lcom/android/mms/help/AirViewMainActivity;->details:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p0}, Lcom/android/mms/help/AirViewMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 87
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040029

    iget-object v5, p0, Lcom/android/mms/help/AirViewMainActivity;->msgList:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/help/AirViewMainActivity;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    .line 88
    iget-object v4, p0, Lcom/android/mms/help/AirViewMainActivity;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f0b00ec

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/mms/help/AirViewMainActivity;->mTotalConversations:Landroid/widget/TextView;

    .line 89
    iget-object v4, p0, Lcom/android/mms/help/AirViewMainActivity;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/help/AirViewMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0002

    iget-object v7, p0, Lcom/android/mms/help/AirViewMainActivity;->details:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/mms/help/AirViewMainActivity;->details:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v4, p0, Lcom/android/mms/help/AirViewMainActivity;->msgList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/mms/help/AirViewMainActivity;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 93
    iget-object v4, p0, Lcom/android/mms/help/AirViewMainActivity;->msgList:Landroid/widget/ListView;

    new-instance v5, Lcom/android/mms/help/AirViewListAdapter;

    const v6, 0x7f040010

    iget-object v7, p0, Lcom/android/mms/help/AirViewMainActivity;->details:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6, v7}, Lcom/android/mms/help/AirViewListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    const v4, 0x7f040040

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    .line 95
    sget-object v4, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/mms/help/AirViewMainActivity;->showDialog(Landroid/view/View;)V

    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, hoverImage:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/mms/help/AirViewMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 99
    sget-object v4, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    const v5, 0x7f0b0021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #hoverImage:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 100
    .restart local v1       #hoverImage:Landroid/widget/ImageView;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :goto_0
    new-instance v4, Lcom/android/mms/help/AirViewMainActivity$1;

    invoke-direct {v4, p0}, Lcom/android/mms/help/AirViewMainActivity$1;-><init>(Lcom/android/mms/help/AirViewMainActivity;)V

    sput-object v4, Lcom/android/mms/help/AirViewMainActivity;->mHoverListener:Landroid/view/View$OnHoverListener;

    .line 178
    sget-object v4, Lcom/android/mms/help/AirViewMainActivity;->mHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 179
    return-void

    .line 102
    :cond_1
    sget-object v4, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    const v5, 0x7f0b0028

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #hoverImage:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 103
    .restart local v1       #hoverImage:Landroid/widget/ImageView;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    sget-object v4, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    const v5, 0x7f0b0004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    sput-object v4, Lcom/android/mms/help/AirViewMainActivity;->hoverTextLayout:Landroid/view/View;

    .line 105
    sget-object v4, Lcom/android/mms/help/AirViewMainActivity;->hoverTextLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 106
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x3

    const v5, 0x7f0b0028

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 202
    iget v0, p0, Lcom/android/mms/help/AirViewMainActivity;->MENU_COMPOSE:I

    const v1, 0x7f0c0002

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 233
    invoke-virtual {p0}, Lcom/android/mms/help/AirViewMainActivity;->finish()V

    .line 234
    return-void
.end method

.method protected showDialog(Landroid/view/View;)V
    .locals 2
    .parameter "guide_view"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->dismiss()V

    .line 215
    :cond_0
    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog;

    const v1, 0x7f0e0013

    invoke-direct {v0, p0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    .line 216
    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0, p1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/mms/help/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/mms/help/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/mms/help/TwHelpDialog$TouchMode;)V

    .line 218
    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 220
    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->show()V

    .line 221
    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    new-instance v1, Lcom/android/mms/help/AirViewMainActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/help/AirViewMainActivity$3;-><init>(Lcom/android/mms/help/AirViewMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 228
    return-void
.end method
