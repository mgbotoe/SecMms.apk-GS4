.class public Lcom/android/mms/help/AirViewListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AirViewListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/help/MessageDetails;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mLayoutResourceId:I

.field private mListHoverController:Lcom/android/mms/hover/ListHoverController;

.field mMessageDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/help/MessageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
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
            "Lcom/android/mms/help/MessageDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/help/MessageDetails;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/help/AirViewListAdapter;->mMessageDetails:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Lcom/android/mms/help/AirViewListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/help/AirViewListAdapter$1;-><init>(Lcom/android/mms/help/AirViewListAdapter;)V

    iput-object v0, p0, Lcom/android/mms/help/AirViewListAdapter;->mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    .line 47
    iput p2, p0, Lcom/android/mms/help/AirViewListAdapter;->mLayoutResourceId:I

    .line 48
    iput-object p3, p0, Lcom/android/mms/help/AirViewListAdapter;->mMessageDetails:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/android/mms/help/AirViewListAdapter;->mContext:Landroid/content/Context;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/help/AirViewMainActivity;->mHasHovered:Z

    .line 51
    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/help/AirViewListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/help/AirViewListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/mms/help/AirViewListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 56
    move-object v5, p2

    .line 57
    .local v5, row:Landroid/view/View;
    if-nez v5, :cond_0

    .line 58
    iget-object v8, p0, Lcom/android/mms/help/AirViewListAdapter;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 59
    .local v3, inflater:Landroid/view/LayoutInflater;
    iget v8, p0, Lcom/android/mms/help/AirViewListAdapter;->mLayoutResourceId:I

    const/4 v9, 0x0

    invoke-virtual {v3, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 62
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const v8, 0x7f0b002b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 63
    .local v4, infoImage:Landroid/widget/ImageView;
    const v8, 0x7f0b002d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, address:Landroid/widget/TextView;
    const v8, 0x7f0b002f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 65
    .local v6, subject:Landroid/widget/TextView;
    const v8, 0x7f0b002e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 66
    .local v7, time:Landroid/widget/TextView;
    const v8, 0x7f0b002c

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 67
    .local v2, icon:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/mms/help/AirViewListAdapter;->mMessageDetails:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/help/MessageDetails;

    .line 69
    .local v1, detail:Lcom/android/mms/help/MessageDetails;
    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v1}, Lcom/android/mms/help/MessageDetails;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v1}, Lcom/android/mms/help/MessageDetails;->getSub()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v1}, Lcom/android/mms/help/MessageDetails;->getTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v1}, Lcom/android/mms/help/MessageDetails;->getIcon()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 76
    :cond_1
    iget-object v8, p0, Lcom/android/mms/help/AirViewListAdapter;->mMessageDetails:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne p1, v8, :cond_2

    .line 80
    iget-object v8, p0, Lcom/android/mms/help/AirViewListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    invoke-virtual {v8, v5}, Lcom/android/mms/hover/ListHoverController;->setHoverPopupStyle(Landroid/view/View;)V

    .line 81
    iget-object v8, p0, Lcom/android/mms/help/AirViewListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    iget-object v9, p0, Lcom/android/mms/help/AirViewListAdapter;->mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    invoke-virtual {v8, v9}, Lcom/android/mms/hover/ListHoverController;->setPostTask(Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;)V

    .line 85
    :goto_0
    return-object v5

    .line 83
    :cond_2
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
