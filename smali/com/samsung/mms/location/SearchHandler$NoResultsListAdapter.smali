.class public Lcom/samsung/mms/location/SearchHandler$NoResultsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/SearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoResultsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final failedMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/mms/location/SearchHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/location/SearchHandler;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "failedMessage"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/samsung/mms/location/SearchHandler$NoResultsListAdapter;->this$0:Lcom/samsung/mms/location/SearchHandler;

    .line 311
    iget-object v0, p1, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b01f3

    iget-object v2, p1, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    #calls: Lcom/samsung/mms/location/SearchHandler;->getNoResultsVector(Landroid/content/Context;)Ljava/util/Vector;
    invoke-static {v2}, Lcom/samsung/mms/location/SearchHandler;->access$400(Landroid/content/Context;)Ljava/util/Vector;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 312
    iput-object p2, p0, Lcom/samsung/mms/location/SearchHandler$NoResultsListAdapter;->failedMessage:Ljava/lang/String;

    .line 313
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    .line 318
    if-nez p2, :cond_0

    .line 320
    iget-object v7, p0, Lcom/samsung/mms/location/SearchHandler$NoResultsListAdapter;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v7, v7, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 321
    .local v3, layoutInflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040044

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 324
    .end local v3           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_0
    const v7, 0x7f0b0134

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 325
    .local v4, nameTextView:Landroid/widget/TextView;
    const v7, 0x7f0b0135

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 326
    .local v0, address1TextView:Landroid/widget/TextView;
    const v7, 0x7f0b0136

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 327
    .local v1, address2TextView:Landroid/widget/TextView;
    const v7, 0x7f0b0137

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 328
    .local v6, phoneNumberTextView:Landroid/widget/TextView;
    const v7, 0x7f0b0138

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 329
    .local v5, noSearchesTextView:Landroid/widget/TextView;
    const v7, 0x7f0b0133

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 331
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v7, p0, Lcom/samsung/mms/location/SearchHandler$NoResultsListAdapter;->failedMessage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    return-object p2
.end method
