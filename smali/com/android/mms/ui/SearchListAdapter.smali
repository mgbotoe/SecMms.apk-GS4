.class public Lcom/android/mms/ui/SearchListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/SearchListAdapter"


# instance fields
.field private mBubbleIdx:J

.field private mBubbleTitle:Ljava/lang/String;

.field private mHighLight:Ljava/util/regex/Pattern;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListHoverController:Lcom/android/mms/hover/ListHoverController;

.field private mOnContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

.field private mSearchString:Ljava/lang/String;

.field private mThreadIdx:J

.field private mThreadTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    .line 34
    return-void
.end method

.method private setSearchTitle(Landroid/database/Cursor;Landroid/view/View;)V
    .locals 5
    .parameter "cursor"
    .parameter "view"

    .prologue
    .line 77
    const v3, 0x7f0b0248

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 79
    .local v2, mSeparatorText:Landroid/widget/TextView;
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    int-to-long v0, v3

    .line 81
    .local v0, cursor_index:J
    iget-wide v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mThreadIdx:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mBubbleIdx:J

    cmp-long v3, v3, v0

    if-nez v3, :cond_3

    .line 82
    :cond_0
    iget-wide v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mThreadIdx:J

    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    .line 83
    iget-object v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mThreadTitle:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mThreadTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_1
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :goto_1
    return-void

    .line 86
    :cond_2
    iget-wide v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mBubbleIdx:J

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mBubbleTitle:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 88
    iget-object v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mBubbleTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :cond_3
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const-wide/16 v3, -0x1

    .line 42
    invoke-direct {p0, p3, p1}, Lcom/android/mms/ui/SearchListAdapter;->setSearchTitle(Landroid/database/Cursor;Landroid/view/View;)V

    move-object v0, p1

    .line 43
    check-cast v0, Lcom/android/mms/ui/SearchListItem;

    .line 44
    .local v0, item:Lcom/android/mms/ui/SearchListItem;
    iget-wide v1, p0, Lcom/android/mms/ui/SearchListAdapter;->mThreadIdx:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/mms/ui/SearchListAdapter;->mBubbleIdx:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 45
    iget-wide v1, p0, Lcom/android/mms/ui/SearchListAdapter;->mBubbleIdx:J

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SearchListItem;->setLastIndex(J)V

    .line 48
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SearchListAdapter;->mSearchString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/SearchListAdapter;->mHighLight:Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/android/mms/ui/SearchListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/SearchListItem;->bind(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/util/regex/Pattern;Lcom/android/mms/hover/ListHoverController;)V

    .line 49
    return-void
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mSearchString:Ljava/lang/String;

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "Mms/SearchListAdapter"

    const-string v1, "SearchListAdapter.onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/SearchListAdapter;)V

    .line 68
    :cond_0
    return-void
.end method

.method public setBubbleInfo(JLjava/lang/String;)V
    .locals 0
    .parameter "idx"
    .parameter "title"

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/android/mms/ui/SearchListAdapter;->mBubbleIdx:J

    .line 105
    iput-object p3, p0, Lcom/android/mms/ui/SearchListAdapter;->mBubbleTitle:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/mms/ui/SearchListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    .line 58
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 1
    .parameter "searchString"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/mms/ui/SearchListAdapter;->mSearchString:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/android/mms/util/UIUtils;->createSearchHightlightPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mHighLight:Ljava/util/regex/Pattern;

    .line 72
    return-void
.end method

.method public setThreadInfo(JLjava/lang/String;)V
    .locals 0
    .parameter "idx"
    .parameter "title"

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/android/mms/ui/SearchListAdapter;->mThreadIdx:J

    .line 100
    iput-object p3, p0, Lcom/android/mms/ui/SearchListAdapter;->mThreadTitle:Ljava/lang/String;

    .line 101
    return-void
.end method
