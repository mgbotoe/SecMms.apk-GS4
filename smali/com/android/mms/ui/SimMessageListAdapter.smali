.class public Lcom/android/mms/ui/SimMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SimMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/SimMessageListAdapter"


# instance fields
.field private final mCheckedList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListHoverController:Lcom/android/mms/hover/ListHoverController;

.field private mListMode:I

.field protected mMsgListItemHandler:Landroid/os/Handler;

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckedList:Ljava/util/HashSet;

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    .line 69
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 17
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 78
    const-string v13, "Mms/SimMessageListAdapter"

    const-string v14, "bindView"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v13, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 82
    .local v8, id:I
    const-string v13, "type"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 83
    .local v11, type:I
    const-string v13, "address"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, address:Ljava/lang/String;
    const-string v13, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 85
    .local v6, date:Ljava/lang/Long;
    const-string v13, "body"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, body:Ljava/lang/String;
    const v13, 0x7f0b0278

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 88
    .local v12, typeView:Landroid/widget/ImageView;
    const/4 v13, 0x1

    if-ne v11, v13, :cond_3

    const v13, 0x7f0201fd

    :goto_0
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 91
    const/4 v13, 0x0

    invoke-static {v1, v13}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, nameInContact:Ljava/lang/String;
    const v13, 0x7f0b0279

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 93
    .local v10, nameView:Landroid/widget/TextView;
    if-nez v9, :cond_4

    .end local v1           #address:Ljava/lang/String;
    :goto_1
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v13, 0x7f0b027b

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 96
    .local v7, dateView:Landroid/widget/TextView;
    const/4 v13, 0x1

    if-eq v11, v13, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSentTimeInSimList()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 97
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/16 v16, 0x1

    invoke-static/range {v13 .. v16}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSentTimeInSimList()Z

    move-result v13

    if-nez v13, :cond_1

    .line 103
    const/4 v13, 0x1

    if-ne v11, v13, :cond_6

    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :cond_1
    const v13, 0x7f0b027a

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 106
    .local v3, bodyView:Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v13, 0x7f0b027c

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 109
    .local v5, checkBoxLayout:Landroid/view/View;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mListMode:I

    if-nez v13, :cond_7

    .line 110
    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 119
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, 0x7f0b0279

    aput v16, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Lcom/android/mms/hover/ListHoverController;->setHoverPopupStyle(Landroid/view/View;[I)V

    .line 121
    :cond_2
    return-void

    .line 88
    .end local v3           #bodyView:Landroid/widget/TextView;
    .end local v5           #checkBoxLayout:Landroid/view/View;
    .end local v7           #dateView:Landroid/widget/TextView;
    .end local v9           #nameInContact:Ljava/lang/String;
    .end local v10           #nameView:Landroid/widget/TextView;
    .restart local v1       #address:Ljava/lang/String;
    :cond_3
    const v13, 0x7f0201fe

    goto/16 :goto_0

    .restart local v9       #nameInContact:Ljava/lang/String;
    .restart local v10       #nameView:Landroid/widget/TextView;
    :cond_4
    move-object v1, v9

    .line 93
    goto :goto_1

    .line 99
    .end local v1           #address:Ljava/lang/String;
    .restart local v7       #dateView:Landroid/widget/TextView;
    :cond_5
    const-string v13, ""

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 103
    :cond_6
    const/16 v13, 0x8

    goto :goto_3

    .line 112
    .restart local v3       #bodyView:Landroid/widget/TextView;
    .restart local v5       #checkBoxLayout:Landroid/view/View;
    :cond_7
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 114
    const v13, 0x7f0b027d

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 115
    .local v4, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckedList:Ljava/util/HashSet;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v4, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_4
.end method

.method public clearCheckedList()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckedList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 176
    return-void
.end method

.method public getCheckedCount()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckedList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public isCheckedItem(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckedList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 140
    const-string v0, "Mms/SimMessageListAdapter"

    const-string v1, "MessageListAdapter.notifyDataSetChanged()."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/ui/SimMessageListAdapter;)V

    .line 147
    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    .line 151
    const-string v0, "Mms/SimMessageListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContentChanged mAutoRequery="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mAutoRequery:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-boolean v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_1

    .line 154
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/SimMessageListAdapter;)V

    goto :goto_0
.end method

.method public setCheckedAll()V
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/mms/ui/SimMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 181
    .local v0, c:Landroid/database/Cursor;
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 182
    .local v1, index:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckedList:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    :cond_1
    return-void
.end method

.method public setListMode(I)V
    .locals 0
    .parameter "listMode"

    .prologue
    .line 165
    iput p1, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mListMode:I

    .line 166
    invoke-virtual {p0}, Lcom/android/mms/ui/SimMessageListAdapter;->clearCheckedList()V

    .line 167
    invoke-virtual {p0}, Lcom/android/mms/ui/SimMessageListAdapter;->notifyDataSetChanged()V

    .line 168
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 135
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;

    .line 131
    return-void
.end method

.method public toggleCheckBox(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckedList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckedList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 192
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckedList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    const/4 v0, 0x1

    goto :goto_0
.end method
