.class Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;
.super Ljava/util/ArrayList;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmsSlideGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/mms/ui/MmsSlideView;",
        ">;"
    }
.end annotation


# instance fields
.field private mHasVisibleContent:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

.field private mThumbnailContainer:Landroid/widget/LinearLayout;

.field private mVisiblePageCount:I


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter "thumbnailContainer"

    .prologue
    .line 1586
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1579
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mVisiblePageCount:I

    .line 1587
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mThumbnailContainer:Landroid/widget/LinearLayout;

    .line 1588
    new-instance v0, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    .line 1589
    return-void
.end method


# virtual methods
.method public add(Lcom/android/mms/ui/MmsSlideView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1651
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1577
    check-cast p1, Lcom/android/mms/ui/MmsSlideView;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->add(Lcom/android/mms/ui/MmsSlideView;)Z

    move-result v0

    return v0
.end method

.method public addLinks(I)V
    .locals 3
    .parameter "linkMask"

    .prologue
    .line 1642
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iput p1, v2, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mLinkMask:I

    .line 1643
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MmsSlideView;

    .line 1644
    .local v1, view:Lcom/android/mms/ui/MmsSlideView;
    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSlideView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 1646
    .end local v1           #view:Lcom/android/mms/ui/MmsSlideView;
    :cond_0
    return-void
.end method

.method public hasVisibleContent()Z
    .locals 1

    .prologue
    .line 1592
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mHasVisibleContent:Z

    return v0
.end method

.method public initMmsThumbnail(ILcom/android/mms/ui/MessageItem;)V
    .locals 12
    .parameter "nPage"
    .parameter "msgItem"

    .prologue
    .line 1676
    iput p1, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mVisiblePageCount:I

    .line 1677
    iget-object v8, p2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object v8, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 1678
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v3

    .line 1679
    .local v3, isFailedMessage:Z
    iget-object v0, p2, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    .line 1680
    .local v0, highlight:Ljava/util/regex/Pattern;
    iget-wide v8, p2, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    const/4 v4, 0x1

    .line 1681
    .local v4, isReservedMessage:Z
    :goto_0
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mThumbnailContainer:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mVisiblePageCount:I

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-static {v9, v8}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1683
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mInflater:Landroid/view/LayoutInflater;

    if-nez v8, :cond_0

    .line 1684
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mInflater:Landroid/view/LayoutInflater;

    .line 1688
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->size()I

    move-result v5

    .line 1690
    .local v5, nViews:I
    move v1, v5

    .local v1, i:I
    :goto_2
    iget v8, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mVisiblePageCount:I

    if-ge v1, v8, :cond_3

    .line 1691
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040060

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/MmsSlideView;

    .line 1692
    .local v6, thumbnailView:Lcom/android/mms/ui/MmsSlideView;
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->add(Lcom/android/mms/ui/MmsSlideView;)Z

    .line 1690
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1680
    .end local v1           #i:I
    .end local v4           #isReservedMessage:Z
    .end local v5           #nViews:I
    .end local v6           #thumbnailView:Lcom/android/mms/ui/MmsSlideView;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1681
    .restart local v4       #isReservedMessage:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 1696
    .restart local v1       #i:I
    .restart local v5       #nViews:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->size()I

    move-result v5

    .line 1697
    const/4 v1, 0x0

    .line 1698
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/MmsSlideView;

    .line 1699
    .local v7, view:Lcom/android/mms/ui/MmsSlideView;
    iget v8, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mVisiblePageCount:I

    if-ge v1, v8, :cond_4

    .line 1700
    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1701
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/MmsSlideView;->applyTextProperty(Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;)V

    .line 1702
    invoke-virtual {v7, v3}, Lcom/android/mms/ui/MmsSlideView;->setIsFailedMessage(Z)V

    .line 1703
    invoke-virtual {v7, v4}, Lcom/android/mms/ui/MmsSlideView;->setIsReservedMessage(Z)V

    .line 1704
    invoke-virtual {v7, v0}, Lcom/android/mms/ui/MmsSlideView;->setHighlight(Ljava/util/regex/Pattern;)V

    .line 1708
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1706
    :cond_4
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_4

    .line 1710
    .end local v7           #view:Lcom/android/mms/ui/MmsSlideView;
    :cond_5
    return-void
.end method

.method public present(Lcom/android/mms/ui/MessageListItem;)V
    .locals 1
    .parameter "listItem"

    .prologue
    .line 1598
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->present(Lcom/android/mms/ui/MessageListItem;Z)V

    .line 1599
    return-void
.end method

.method public present(Lcom/android/mms/ui/MessageListItem;Z)V
    .locals 9
    .parameter "listItem"
    .parameter "truncateLongMessages"

    .prologue
    const/4 v7, 0x0

    .line 1604
    const/4 v0, 0x0

    .line 1605
    .local v0, hasVisibleContent:Z
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v2

    .line 1607
    .local v2, layoutType:I
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v6

    const/16 v8, 0xa

    if-ne v6, v8, :cond_1

    .line 1609
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1610
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v7}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 1612
    .local v3, mMediaModel:Lcom/android/mms/model/SlideModel;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1613
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 1615
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v3}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 1619
    .end local v3           #mMediaModel:Lcom/android/mms/model/SlideModel;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1620
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v6, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mVisiblePageCount:I

    if-ge v1, v6, :cond_6

    .line 1623
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1624
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1625
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/MmsSlideView;

    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    invoke-virtual {v6, v2, v8, p1, p2}, Lcom/android/mms/ui/MmsSlideView;->present(ILcom/android/mms/model/SlideModel;Lcom/android/mms/ui/MessageListItem;Z)Z

    move-result v4

    .line 1630
    .local v4, pageHasVisibleContent:Z
    :goto_1
    if-nez v0, :cond_2

    if-eqz v4, :cond_5

    :cond_2
    const/4 v0, 0x1

    .line 1632
    :goto_2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1633
    const-string v6, "present page "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", hasContent "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1635
    const-string v6, "Mms/MessageListItem"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    .end local v4           #pageHasVisibleContent:Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1627
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/MmsSlideView;

    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    invoke-virtual {v6, v2, v8, p1}, Lcom/android/mms/ui/MmsSlideView;->present(ILcom/android/mms/model/SlideModel;Lcom/android/mms/ui/MessageListItem;)Z

    move-result v4

    .restart local v4       #pageHasVisibleContent:Z
    goto :goto_1

    :cond_5
    move v0, v7

    .line 1630
    goto :goto_2

    .line 1638
    .end local v4           #pageHasVisibleContent:Z
    :cond_6
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mHasVisibleContent:Z

    .line 1639
    return-void
.end method

.method public setBodyTextSize(IF)V
    .locals 3
    .parameter "unit"
    .parameter "textSize"

    .prologue
    .line 1668
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iput p1, v2, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextSizeUnit:I

    .line 1669
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iput p2, v2, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextSize:F

    .line 1670
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MmsSlideView;

    .line 1671
    .local v1, view:Lcom/android/mms/ui/MmsSlideView;
    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSlideView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 1673
    .end local v1           #view:Lcom/android/mms/ui/MmsSlideView;
    :cond_0
    return-void
.end method

.method public setTextMaxWidth(I)V
    .locals 3
    .parameter "maxWidth"

    .prologue
    .line 1662
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MmsSlideView;

    .line 1663
    .local v1, view:Lcom/android/mms/ui/MmsSlideView;
    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSlideView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 1665
    .end local v1           #view:Lcom/android/mms/ui/MmsSlideView;
    :cond_0
    return-void
.end method

.method public setTextOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 1655
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iput-object p1, v2, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 1656
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MmsSlideView;

    .line 1657
    .local v1, view:Lcom/android/mms/ui/MmsSlideView;
    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSlideView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 1659
    .end local v1           #view:Lcom/android/mms/ui/MmsSlideView;
    :cond_0
    return-void
.end method
