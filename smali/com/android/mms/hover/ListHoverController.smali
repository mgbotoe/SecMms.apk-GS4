.class public Lcom/android/mms/hover/ListHoverController;
.super Ljava/lang/Object;
.source "ListHoverController.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;
    }
.end annotation


# static fields
.field public static final LIST_HOVER_TYPE_FROM_AND_SUBJECT:I = 0x0

.field public static final LIST_HOVER_TYPE_TEXTVIEW_IDS:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListHoverType:I

.field private mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

.field private mTextViewIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private makeHoverText(Landroid/view/View;[I)Ljava/lang/StringBuffer;
    .locals 7
    .parameter "parentView"
    .parameter "textViewIds"

    .prologue
    .line 211
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 213
    .local v1, hoverText:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 228
    :cond_0
    return-object v1

    .line 216
    :cond_1
    move-object v0, p2

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    .line 217
    .local v3, id:I
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 219
    .local v5, tv:Landroid/widget/TextView;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 221
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 224
    :cond_2
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 216
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private makeHoverText(Landroid/widget/TextView;Landroid/view/View;)Ljava/lang/StringBuffer;
    .locals 9
    .parameter "fingerTextView"
    .parameter "parentView"

    .prologue
    .line 166
    if-nez p1, :cond_1

    .line 167
    const/4 v1, 0x0

    .line 207
    :cond_0
    :goto_0
    return-object v1

    .line 170
    :cond_1
    const v5, 0x7f0b002d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 171
    .local v0, fromView:Landroid/widget/TextView;
    const v5, 0x7f0b002f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 173
    .local v3, subjectView:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 175
    .local v1, hoverText:Ljava/lang/StringBuffer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 178
    .local v4, temp:Ljava/lang/CharSequence;
    if-eqz v4, :cond_2

    .line 179
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    .end local v4           #temp:Ljava/lang/CharSequence;
    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 184
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 185
    .restart local v4       #temp:Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 186
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    :cond_3
    if-eqz v4, :cond_4

    .line 190
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    .end local v4           #temp:Ljava/lang/CharSequence;
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 199
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 200
    .local v2, span:Landroid/text/Spannable;
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-interface {v2, v5, v6, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 202
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 203
    .end local v2           #span:Landroid/text/Spannable;
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setDefaultHoverPopupStyle(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 43
    if-nez p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 48
    invoke-virtual {p1, v2}, Landroid/view/View;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 49
    .local v0, hpw:Landroid/widget/HoverPopupWindow;
    if-eqz v0, :cond_0

    .line 50
    const v1, 0x7f040050

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setContent(I)V

    .line 52
    const/16 v1, 0x3031

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 53
    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    .line 54
    invoke-virtual {v0, p0}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 55
    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    goto :goto_0
.end method

.method private setHoverTextWidth(Landroid/widget/TextView;)V
    .locals 3
    .parameter "hoverTextView"

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 156
    .local v0, layoutParam:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 162
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 7
    .parameter "parentView"
    .parameter "hpw"

    .prologue
    const/4 v6, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 104
    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 105
    .local v0, hoverLinearLayout:Landroid/widget/LinearLayout;
    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v3

    .line 109
    :cond_1
    const v5, 0x7f0b01bd

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 110
    .local v2, hoverTextView:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_6

    .line 117
    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    if-eqz v3, :cond_5

    .line 118
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 126
    :cond_2
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/mms/hover/ListHoverController;->setHoverTextWidth(Landroid/widget/TextView;)V

    .line 128
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, hoverText:Ljava/lang/StringBuffer;
    iget v3, p0, Lcom/android/mms/hover/ListHoverController;->mListHoverType:I

    if-nez v3, :cond_8

    .line 130
    invoke-direct {p0, v2, p1}, Lcom/android/mms/hover/ListHoverController;->makeHoverText(Landroid/widget/TextView;Landroid/view/View;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 132
    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 146
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    if-eqz v3, :cond_4

    .line 147
    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    invoke-interface {v3, p1}, Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;->doTask(Landroid/view/View;)V

    :cond_4
    move v3, v4

    .line 150
    goto :goto_0

    .line 120
    .end local v1           #hoverText:Ljava/lang/StringBuffer;
    :cond_5
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 122
    :cond_6
    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 123
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 134
    .restart local v1       #hoverText:Ljava/lang/StringBuffer;
    :cond_7
    invoke-virtual {p2, v1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 136
    :cond_8
    iget v3, p0, Lcom/android/mms/hover/ListHoverController;->mListHoverType:I

    if-ne v3, v4, :cond_3

    .line 137
    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mTextViewIds:[I

    invoke-direct {p0, p1, v3}, Lcom/android/mms/hover/ListHoverController;->makeHoverText(Landroid/view/View;[I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 139
    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto :goto_2

    .line 141
    :cond_9
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p2, v1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setHoverPopupStyle(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 60
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/hover/ListHoverController;->mListHoverType:I

    .line 64
    invoke-direct {p0, p1}, Lcom/android/mms/hover/ListHoverController;->setDefaultHoverPopupStyle(Landroid/view/View;)V

    .line 66
    const v3, 0x7f0b002d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    .local v0, fromView:Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v1

    .line 69
    .local v1, hpw:Landroid/widget/HoverPopupWindow;
    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {v1, v4}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 74
    .end local v1           #hpw:Landroid/widget/HoverPopupWindow;
    :cond_2
    const v3, 0x7f0b002f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 75
    .local v2, subjectView:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v1

    .line 77
    .restart local v1       #hpw:Landroid/widget/HoverPopupWindow;
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1, v4}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setHoverPopupStyle(Landroid/view/View;[I)V
    .locals 8
    .parameter "view"
    .parameter "textViewIds"

    .prologue
    const/4 v7, 0x1

    .line 84
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iput v7, p0, Lcom/android/mms/hover/ListHoverController;->mListHoverType:I

    .line 88
    invoke-direct {p0, p1}, Lcom/android/mms/hover/ListHoverController;->setDefaultHoverPopupStyle(Landroid/view/View;)V

    .line 90
    move-object v0, p2

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_3

    aget v3, v0, v2

    .line 91
    .local v3, id:I
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 92
    .local v5, tv:Landroid/widget/TextView;
    if-eqz v5, :cond_2

    .line 93
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v1

    .line 94
    .local v1, hpw:Landroid/widget/HoverPopupWindow;
    if-eqz v1, :cond_2

    .line 95
    invoke-virtual {v1, v7}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 90
    .end local v1           #hpw:Landroid/widget/HoverPopupWindow;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    .end local v3           #id:I
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    iput-object v6, p0, Lcom/android/mms/hover/ListHoverController;->mTextViewIds:[I

    goto :goto_0
.end method

.method public setPostTask(Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/mms/hover/ListHoverController;->mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    .line 40
    return-void
.end method
