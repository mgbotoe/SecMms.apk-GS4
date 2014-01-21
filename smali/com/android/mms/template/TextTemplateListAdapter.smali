.class public Lcom/android/mms/template/TextTemplateListAdapter;
.super Landroid/widget/CursorAdapter;
.source "TextTemplateListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/TextTemplateListAdapter"


# instance fields
.field private mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMode:I

.field mOnContentChangedListener:Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "mode"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckedList:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iput p3, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mMode:I

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/template/TextTemplateListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addCheckedItem(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/android/mms/template/TextTemplateListAdapter;->isCheckedItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const v9, 0x7f0b0276

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 59
    const v6, 0x7f0b0275

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mTextView:Landroid/widget/TextView;

    .line 61
    const/4 v6, 0x2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 62
    .local v0, colChecked:I
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 64
    .local v1, colID:I
    invoke-static {p2}, Lcom/android/mms/MmsConfig;->getTextTemplate(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, texts:[Ljava/lang/String;
    if-ltz v0, :cond_2

    .line 67
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmbeddedTextTemplateType()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 68
    iget-object v6, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mTextView:Landroid/widget/TextView;

    aget-object v8, v5, v1

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    :goto_0
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 76
    .local v2, mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 78
    .local v4, pos:I
    iget v6, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mMode:I

    if-eqz v6, :cond_3

    move v3, v7

    .line 79
    .local v3, mVisibility:I
    :goto_1
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setTag(Ljava/lang/Object;)V

    .line 99
    new-instance v6, Lcom/android/mms/template/TextTemplateListAdapter$1;

    invoke-direct {v6, p0}, Lcom/android/mms/template/TextTemplateListAdapter$1;-><init>(Lcom/android/mms/template/TextTemplateListAdapter;)V

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 107
    invoke-virtual {v2, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setClickable(Z)V

    .line 109
    iget v6, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mMode:I

    if-eqz v6, :cond_1

    .line 110
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/mms/template/TextTemplateListAdapter;->isCheckedItem(I)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 112
    :cond_1
    return-void

    .line 72
    .end local v2           #mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v3           #mVisibility:I
    .end local v4           #pos:I
    :cond_2
    iget-object v6, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mTextView:Landroid/widget/TextView;

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    .restart local v2       #mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .restart local v4       #pos:I
    :cond_3
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public clearCheckedList()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 157
    return-void
.end method

.method public getCheckedList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCheckedSize()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isCheckedItem(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04007c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, v:Landroid/view/View;
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 124
    const-string v0, "Mms/TextTemplateListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mOnContentChangedListener:Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mOnContentChangedListener:Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/template/TextTemplateListAdapter;)V

    .line 130
    :cond_0
    return-void
.end method

.method public removeCheckedItem(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/android/mms/template/TextTemplateListAdapter;->isCheckedItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mMode:I

    .line 48
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListAdapter;->mOnContentChangedListener:Lcom/android/mms/template/TextTemplateListAdapter$OnContentChangedListener;

    .line 120
    return-void
.end method
