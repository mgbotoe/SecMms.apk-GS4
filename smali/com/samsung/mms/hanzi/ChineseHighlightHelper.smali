.class public Lcom/samsung/mms/hanzi/ChineseHighlightHelper;
.super Ljava/lang/Object;
.source "ChineseHighlightHelper.java"


# static fields
.field private static final MAX_MULTI_PINYIN_COUNT:I = 0x4


# instance fields
.field private final DEBUG_LOG:Z

.field private final MAX_LEN_COMBINATION_ARRAY:I

.field private final MAX_LEN_NAME_FOR_PINYIN_CALCULATING:I

.field private final PINYIN_SEARCH_HIGHLIGHT_MODE_FULL:Z

.field private final PINYIN_SEARCH_HIGHLIGHT_MODE_INITIAL:Z

.field private final PINYIN_SEARCH_HIGHLIGHT_MULTIPINYIN:Z

.field private final TAG:Ljava/lang/String;

.field indices:[I

.field mContext:Landroid/content/Context;

.field mFullString:Ljava/lang/StringBuilder;

.field mFullStringMultiPinyin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field mInitialString:Ljava/lang/StringBuilder;

.field mInitialStringMultiPinyin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternString:Ljava/lang/String;

.field private mPatternStringRaw:Ljava/lang/String;

.field private matchNameText:Ljava/lang/String;

.field name:Landroid/widget/TextView;

.field private nameText:Ljava/lang/String;

.field p:Ljava/util/regex/Pattern;

.field public tokenTypePinyinIncluded:Z

.field tokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/hanzi/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->PINYIN_SEARCH_HIGHLIGHT_MODE_INITIAL:Z

    .line 33
    iput-boolean v1, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->PINYIN_SEARCH_HIGHLIGHT_MODE_FULL:Z

    .line 36
    iput-boolean v1, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->PINYIN_SEARCH_HIGHLIGHT_MULTIPINYIN:Z

    .line 39
    const-string v0, "ChineseHighlightHelper"

    iput-object v0, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->TAG:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->DEBUG_LOG:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->p:Ljava/util/regex/Pattern;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->indices:[I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokenTypePinyinIncluded:Z

    .line 58
    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->MAX_LEN_NAME_FOR_PINYIN_CALCULATING:I

    .line 59
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->MAX_LEN_COMBINATION_ARRAY:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mInitialStringMultiPinyin:Ljava/util/ArrayList;

    .line 66
    iput-object p1, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private checkIncludingChineseChar(Ljava/lang/String;)Z
    .locals 7
    .parameter "inputName"

    .prologue
    .line 218
    const-string v4, "ChineseHighlightHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----checkIncludingChineseChar : inputName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToPinyin;->getInstance()Lcom/samsung/mms/hanzi/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/mms/hanzi/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    .line 222
    const/4 v1, 0x0

    .line 224
    .local v1, includePinyinString:Z
    iget-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 225
    iget-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 227
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 228
    iget-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;

    .line 229
    .local v3, token:Lcom/samsung/mms/hanzi/HanziToPinyin$Token;
    const-string v4, "ChineseHighlightHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "token.type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget v4, v3, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 231
    const/4 v1, 0x1

    .line 227
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .end local v0           #i:I
    .end local v2           #n:I
    .end local v3           #token:Lcom/samsung/mms/hanzi/HanziToPinyin$Token;
    :cond_1
    const-string v4, "ChineseHighlightHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--checkIncludingChineseChar : includePinyinString="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return v1
.end method

.method private findHighlightFullPinyin()Z
    .locals 9

    .prologue
    .line 149
    const-string v5, "ChineseHighlightHelper"

    const-string v6, "--(2)findHighlightFullPinyin()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    .line 157
    .local v0, found:Z
    iget-boolean v5, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokenTypePinyinIncluded:Z

    if-eqz v5, :cond_2

    .line 161
    const/4 v2, 0x0

    .line 162
    .local v2, pinyinFullSearchFound:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 163
    iget-object v5, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, tokenPivot:[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 165
    iget-object v5, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mPatternStringRaw:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->indices:[I

    invoke-direct {p0, v5, v6, v4}, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->findSearchKeywordPositionPinyinFullStringMulti(Ljava/lang/String;[I[Ljava/lang/String;)Z

    move-result v2

    .line 162
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v4           #tokenPivot:[Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_3

    .line 169
    new-instance v3, Landroid/text/SpannableString;

    iget-object v5, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->nameText:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 170
    .local v3, span:Landroid/text/Spannable;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const v6, -0xcc4a16

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v6, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->indices:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v7, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->indices:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    const/16 v8, 0x21

    invoke-interface {v3, v5, v6, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 171
    iget-object v5, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->name:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/4 v0, 0x1

    .line 187
    .end local v1           #i:I
    .end local v2           #pinyinFullSearchFound:Z
    .end local v3           #span:Landroid/text/Spannable;
    :cond_2
    :goto_1
    return v0

    .line 174
    .restart local v1       #i:I
    .restart local v2       #pinyinFullSearchFound:Z
    :cond_3
    iget-object v5, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->name:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->nameText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private findHighlightInitialPinyin()Z
    .locals 7

    .prologue
    .line 89
    const-string v4, "ChineseHighlightHelper"

    const-string v5, "--(1)findHighlightInitialPinyin()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, found:Z
    iget-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->nameText:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->matchNameText:Ljava/lang/String;

    .line 97
    iget-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mPatternString:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->checkIncludingChineseChar(Ljava/lang/String;)Z

    move-result v2

    .line 98
    .local v2, includeChineseChar:Z
    if-eqz v2, :cond_1

    .line 100
    iget-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mPatternString:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->p:Ljava/util/regex/Pattern;

    .line 101
    iget-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->nameText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->matchNameText:Ljava/lang/String;

    .line 103
    const-string v4, "ChineseHighlightHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bind complete()#2 mPatternString="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mPatternString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",p="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v1, 0x1

    .line 130
    :goto_0
    const/4 v0, 0x0

    .local v0, count:I
    :goto_1
    iget-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mInitialStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 131
    if-nez v1, :cond_0

    .line 132
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mInitialStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 133
    .local v3, pinyinStrForMatch:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 134
    iget-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->indices:[I

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->searchAndHighlight(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z

    move-result v1

    .line 135
    const-string v4, "ChineseHighlightHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "now find span indices, pinyinStrForMatch="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", found="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v3           #pinyinStrForMatch:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    .end local v0           #count:I
    :cond_1
    iget-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mPatternString:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->p:Ljava/util/regex/Pattern;

    .line 117
    iget-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->nameText:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->getMultiPinyinStringFromChineseString(Ljava/lang/String;)V

    .line 121
    iget-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mInitialString:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    .line 122
    iget-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mInitialString:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->matchNameText:Ljava/lang/String;

    .line 124
    :cond_2
    const-string v4, "ChineseHighlightHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bind complete()#3 mPatternString="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mPatternString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",p="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    .restart local v0       #count:I
    :cond_3
    return v1
.end method

.method private findSearchKeywordPosition(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z
    .locals 5
    .parameter "p"
    .parameter "text"
    .parameter "indices"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 205
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 207
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, temp:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    aput v4, p3, v3

    .line 210
    aget v3, p3, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, p3, v2

    .line 213
    .end local v1           #temp:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private findSearchKeywordPositionPinyinFullString(Ljava/lang/String;[I)Z
    .locals 12
    .parameter "pPatternStringRaw"
    .parameter "indices"

    .prologue
    .line 582
    const-string v9, "ChineseHighlightHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findSearchKeywordPositionPinyinFullString() << function : START >> pPatternStringRaw="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v9, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 586
    .local v8, tokenSize:I
    const/4 v2, 0x0

    .line 587
    .local v2, i:I
    const/4 v6, 0x0

    .line 589
    .local v6, retValue:Z
    const/4 v4, 0x0

    .line 590
    .local v4, lastIndexFound:Z
    const/4 v1, 0x0

    .line 591
    .local v1, firstIndexFound:Z
    const/4 v3, 0x0

    .line 592
    .local v3, lastIndex:I
    const/4 v0, 0x0

    .line 594
    .local v0, firstIndex:I
    const-string v5, ""

    .line 596
    .local v5, pinyinStringConcat:Ljava/lang/String;
    const/4 v2, 0x0

    :goto_0
    if-nez v4, :cond_1

    if-ge v2, v8, :cond_1

    .line 598
    iget-object v9, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;

    .line 599
    .local v7, token:Lcom/samsung/mms/hanzi/HanziToPinyin$Token;
    iget-object v9, v7, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 600
    const-string v9, "ChineseHighlightHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findSearchKeywordPositionPinyinFullString(), [find last index] pinyinStringConcat="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-le v9, v10, :cond_0

    .line 603
    const/4 v4, 0x1

    .line 604
    move v3, v2

    .line 605
    const-string v9, "ChineseHighlightHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lastIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 610
    .end local v7           #token:Lcom/samsung/mms/hanzi/HanziToPinyin$Token;
    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v1, :cond_3

    if-ge v2, v8, :cond_3

    .line 612
    iget-object v9, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;

    .line 613
    .restart local v7       #token:Lcom/samsung/mms/hanzi/HanziToPinyin$Token;
    iget-object v9, v7, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 614
    const-string v9, "ChineseHighlightHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findSearchKeywordPositionPinyinFullString(), [find first index] pinyinStringConcat="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_2

    .line 617
    const/4 v1, 0x1

    .line 618
    move v0, v2

    .line 619
    const-string v9, "ChineseHighlightHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "firstIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 622
    .end local v7           #token:Lcom/samsung/mms/hanzi/HanziToPinyin$Token;
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    if-gt v0, v3, :cond_4

    .line 623
    const/4 v9, 0x0

    aput v0, p2, v9

    .line 624
    const/4 v9, 0x1

    add-int/lit8 v10, v3, 0x1

    aput v10, p2, v9

    .line 625
    const/4 v6, 0x1

    .line 629
    :goto_2
    const-string v9, "ChineseHighlightHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findSearchKeywordPositionPinyinFullString, retValue="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    return v6

    .line 627
    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private findSearchKeywordPositionPinyinFullStringMulti(Ljava/lang/String;[I[Ljava/lang/String;)Z
    .locals 12
    .parameter "pPatternStringRaw"
    .parameter "indices"
    .parameter "targetsInput"

    .prologue
    .line 635
    const-string v9, "ChineseHighlightHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findSearchKeywordPositionPinyinFullStringMulti() << function : START >> pPatternStringRaw="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    array-length v8, p3

    .line 639
    .local v8, tokenSize:I
    const/4 v2, 0x0

    .line 640
    .local v2, i:I
    const/4 v6, 0x0

    .line 642
    .local v6, retValue:Z
    const/4 v4, 0x0

    .line 643
    .local v4, lastIndexFound:Z
    const/4 v1, 0x0

    .line 644
    .local v1, firstIndexFound:Z
    const/4 v3, 0x0

    .line 645
    .local v3, lastIndex:I
    const/4 v0, 0x0

    .line 647
    .local v0, firstIndex:I
    const-string v5, ""

    .line 651
    .local v5, pinyinStringConcat:Ljava/lang/String;
    const/4 v2, 0x0

    :goto_0
    array-length v9, p3

    if-ge v2, v9, :cond_0

    .line 652
    const-string v9, "ChineseHighlightHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "targetsInput["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, p3, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 657
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-nez v4, :cond_2

    if-ge v2, v8, :cond_2

    .line 661
    aget-object v9, p3, v2

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 662
    const-string v9, "ChineseHighlightHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findSearchKeywordPositionPinyinFullStringMulti(), [find last index] pinyinStringConcat="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-le v9, v10, :cond_1

    .line 665
    const/4 v4, 0x1

    .line 666
    move v3, v2

    .line 667
    const-string v9, "ChineseHighlightHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lastIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 672
    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-nez v1, :cond_4

    if-ge v2, v8, :cond_4

    .line 674
    iget-object v9, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;

    .line 676
    .local v7, token:Lcom/samsung/mms/hanzi/HanziToPinyin$Token;
    aget-object v9, p3, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 677
    const-string v9, "ChineseHighlightHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findSearchKeywordPositionPinyinFullStringMulti(), [find first index] pinyinStringConcat="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_3

    .line 680
    const/4 v1, 0x1

    .line 681
    move v0, v2

    .line 682
    const-string v9, "ChineseHighlightHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "firstIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 685
    .end local v7           #token:Lcom/samsung/mms/hanzi/HanziToPinyin$Token;
    :cond_4
    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    if-gt v0, v3, :cond_5

    .line 686
    const/4 v9, 0x0

    aput v0, p2, v9

    .line 687
    const/4 v9, 0x1

    add-int/lit8 v10, v3, 0x1

    aput v10, p2, v9

    .line 688
    const/4 v6, 0x1

    .line 692
    :goto_3
    const-string v9, "ChineseHighlightHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findSearchKeywordPositionPinyinFullStringMulti, retValue="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    return v6

    .line 690
    :cond_5
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private replaceChnStringWithIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "sPivot"
    .parameter "oldPattern"
    .parameter "deltaPinyin"
    .parameter "i"
    .parameter "saperator"

    .prologue
    .line 543
    const-string v3, ""

    .line 544
    .local v3, pre:Ljava/lang/String;
    move-object v2, p1

    .line 545
    .local v2, post:Ljava/lang/String;
    const/4 v1, 0x0

    .line 546
    .local v1, indexofnew:I
    const/4 v0, 0x0

    .line 547
    .local v0, count:I
    const-string v4, ""

    .line 549
    .local v4, result:Ljava/lang/String;
    if-nez p4, :cond_1

    .line 550
    if-eqz v2, :cond_0

    .line 551
    invoke-virtual {v2, p2, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 576
    :cond_0
    :goto_0
    return-object v4

    .line 553
    :cond_1
    const/4 v5, 0x1

    .line 554
    .local v5, separaterFound:Z
    :cond_2
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    if-eqz v5, :cond_5

    .line 555
    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 556
    if-gez v1, :cond_3

    .line 557
    const/4 v5, 0x0

    goto :goto_1

    .line 559
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 560
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 561
    const/4 v6, 0x0

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 562
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 565
    :cond_4
    if-lt v0, p4, :cond_2

    .line 566
    const/4 v5, 0x0

    goto :goto_1

    .line 569
    :cond_5
    if-eqz v2, :cond_0

    .line 570
    const-string v6, "ChineseHighlightHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "##pre:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", post="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual {v2, p2, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 572
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 573
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private searchAndHighlight(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z
    .locals 6
    .parameter "p"
    .parameter "text"
    .parameter "indices"

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, found:Z
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->findSearchKeywordPosition(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->nameText:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 197
    .local v1, span:Landroid/text/Spannable;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0xcc4a16

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    aget v3, p3, v3

    const/4 v4, 0x1

    aget v4, p3, v4

    const/16 v5, 0x21

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 198
    iget-object v2, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const/4 v0, 0x1

    .line 201
    .end local v1           #span:Landroid/text/Spannable;
    :cond_0
    return v0
.end method


# virtual methods
.method public findHighlight(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 2
    .parameter "pPatternString"
    .parameter "pPatternStringRaw"
    .parameter "pNameText"
    .parameter "pName"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mPatternString:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mPatternStringRaw:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->nameText:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->name:Landroid/widget/TextView;

    .line 75
    const-string v0, "ChineseHighlightHelper"

    const-string v1, "    ****************** (0) [ findHighlight() Starts ] ******************"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->findHighlightInitialPinyin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "ChineseHighlightHelper"

    const-string v1, "    ****************** (1) [ findHighlight() pinyin INITIAL search highlight done ] ******************"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->findHighlightFullPinyin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const-string v0, "ChineseHighlightHelper"

    const-string v1, "    ****************** (2)[  findHighlight() pinyin FULL search  highlight done ] ******************"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    const-string v0, "ChineseHighlightHelper"

    const-string v1, "    ****************** (3) [  findHighlight() no match ] ******************"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMultiPinyinStringFromChineseString(Ljava/lang/String;)V
    .locals 37
    .parameter "displayName"

    .prologue
    .line 343
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "----getMultiPinyinStringFromChineseString : displayName="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->getInstance()Lcom/samsung/mms/hanzi/HanziToMultiPinyin;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    .line 348
    const/4 v10, 0x0

    .line 349
    .local v10, currentSubStr:Ljava/lang/String;
    move-object/from16 v32, p1

    .line 350
    .local v32, tmpDislpayName:Ljava/lang/String;
    const/16 v21, 0x0

    .line 351
    .local v21, nTmpPos:I
    const/16 v20, 0x0

    .line 352
    .local v20, nPinYinCount:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokenTypePinyinIncluded:Z

    .line 353
    const-string v7, ","

    .line 354
    .local v7, targetSaperator:Ljava/lang/String;
    const/16 v17, 0x0

    .line 355
    .local v17, m:I
    const/4 v6, 0x0

    .line 357
    .local v6, i:I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v25, sbInit:Ljava/lang/StringBuilder;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v24, sbFull:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mInitialStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 372
    .local v19, n:I
    const/16 v2, 0x14

    move/from16 v0, v19

    if-le v0, v2, :cond_0

    .line 373
    const/16 v19, 0x14

    .line 379
    :cond_0
    const/4 v6, 0x0

    :goto_0
    move/from16 v0, v19

    if-ge v6, v0, :cond_8

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;

    .line 381
    .local v33, token:Lcom/samsung/mms/hanzi/HanziToPinyin$Token;
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "token.type="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->type:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, v33

    iget v2, v0, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->type:I

    const/16 v35, 0x2

    move/from16 v0, v35

    if-ne v2, v0, :cond_4

    .line 384
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokenTypePinyinIncluded:Z

    .line 385
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v29

    .line 386
    .local v29, sources:[C
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 387
    .local v31, targets:[Ljava/lang/String;
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "token.source="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", token.target="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v17, v0

    .line 391
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ge v0, v2, :cond_2

    .line 392
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "[token type PINYIN] targets.length="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", continue loop with this token.."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .end local v29           #sources:[C
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 397
    .restart local v29       #sources:[C
    :cond_2
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "tokey type (PINYIN) m="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const/16 v16, 0x0

    .local v16, kk:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 399
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "sources[0]="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x0

    aget-char v36, v29, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ",targets["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "]="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    aget-object v36, v31, v16

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 404
    :cond_3
    const/4 v15, 0x0

    .line 405
    .local v15, initial1:C
    const/4 v2, 0x0

    aget-object v2, v31, v2

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 406
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    const-string v11, ""

    .line 409
    .local v11, full1:Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v11, v31, v2

    .line 410
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    add-int/lit8 v2, v19, -0x1

    if-ge v6, v2, :cond_1

    .line 413
    const-string v2, ","

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string v2, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 419
    .end local v11           #full1:Ljava/lang/String;
    .end local v15           #initial1:C
    .end local v16           #kk:I
    .end local v29           #sources:[C
    .end local v31           #targets:[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 420
    .restart local v31       #targets:[Ljava/lang/String;
    move-object/from16 v0, v33

    iget v2, v0, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->type:I

    const/16 v35, 0x1

    move/from16 v0, v35

    if-ne v2, v0, :cond_6

    .line 421
    const-string v2, "ChineseHighlightHelper"

    const-string v35, "tokey type (LATIN)"

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_5
    :goto_3
    move-object/from16 v0, v31

    array-length v2, v0

    const/16 v35, 0x1

    move/from16 v0, v35

    if-ge v2, v0, :cond_7

    .line 426
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "targets.length="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", continue loop with this token.."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 422
    :cond_6
    move-object/from16 v0, v33

    iget v2, v0, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->type:I

    const/16 v35, 0x3

    move/from16 v0, v35

    if-ne v2, v0, :cond_5

    .line 423
    const-string v2, "ChineseHighlightHelper"

    const-string v35, "tokey type (UNKNOWN)"

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 429
    :cond_7
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "adding .. targets[0]="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x0

    aget-object v36, v31, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/4 v2, 0x0

    aget-object v2, v31, v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const/4 v2, 0x0

    aget-object v2, v31, v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    add-int/lit8 v2, v19, -0x1

    if-ge v6, v2, :cond_1

    .line 434
    const-string v2, ","

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v2, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 440
    .end local v31           #targets:[Ljava/lang/String;
    .end local v33           #token:Lcom/samsung/mms/hanzi/HanziToPinyin$Token;
    :cond_8
    const-string v2, "ChineseHighlightHelper"

    const-string v35, "getMultiPinyinStringFromChineseString Result"

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "[sbInit]="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "[sbFull]="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    const/4 v6, 0x0

    :goto_4
    move/from16 v0, v19

    if-ge v6, v0, :cond_c

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;

    .line 454
    .restart local v33       #token:Lcom/samsung/mms/hanzi/HanziToPinyin$Token;
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, ">token.type="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->type:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, v33

    iget v2, v0, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->type:I

    const/16 v35, 0x2

    move/from16 v0, v35

    if-ne v2, v0, :cond_b

    .line 458
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 459
    .restart local v31       #targets:[Ljava/lang/String;
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, ">>token.target="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v18, v0

    .line 461
    .local v18, maxMulti:I
    const/4 v13, 0x0

    .line 462
    .local v13, indexMulti:I
    const/4 v12, 0x0

    .line 463
    .local v12, indexFullStrArr:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 464
    .local v28, sizeFullStrArr:I
    const/4 v9, 0x0

    .line 465
    .local v9, addedCount:I
    const/4 v8, 0x1

    .line 467
    .local v8, addNext:Z
    const/4 v13, 0x1

    :goto_5
    move/from16 v0, v18

    if-ge v13, v0, :cond_b

    .line 468
    const/4 v2, 0x0

    aget-object v4, v31, v2

    .line 469
    .local v4, oldPattern:Ljava/lang/String;
    aget-object v5, v31, v13

    .line 470
    .local v5, deltaPinyin:Ljava/lang/String;
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, ">>>deltaPinyin="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v12, 0x0

    :goto_6
    move/from16 v0, v28

    if-ge v12, v0, :cond_a

    if-eqz v8, :cond_a

    .line 472
    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 473
    .local v3, sPivot:Ljava/lang/String;
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, ">>>>sPivot(before)="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 479
    invoke-direct/range {v2 .. v7}, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->replaceChnStringWithIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 480
    .local v30, strPivot:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    .local v26, sbPivot:Ljava/lang/StringBuilder;
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, ">>>>sbPivot(after)="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " :  will be added "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    add-int/lit8 v9, v9, 0x1

    .line 487
    add-int v2, v28, v9

    const/16 v35, 0x5

    move/from16 v0, v35

    if-lt v2, v0, :cond_9

    .line 488
    const/4 v8, 0x0

    .line 471
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 467
    .end local v3           #sPivot:Ljava/lang/String;
    .end local v26           #sbPivot:Ljava/lang/StringBuilder;
    .end local v30           #strPivot:Ljava/lang/String;
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 452
    .end local v4           #oldPattern:Ljava/lang/String;
    .end local v5           #deltaPinyin:Ljava/lang/String;
    .end local v8           #addNext:Z
    .end local v9           #addedCount:I
    .end local v12           #indexFullStrArr:I
    .end local v13           #indexMulti:I
    .end local v18           #maxMulti:I
    .end local v28           #sizeFullStrArr:I
    .end local v31           #targets:[Ljava/lang/String;
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 496
    .end local v33           #token:Lcom/samsung/mms/hanzi/HanziToPinyin$Token;
    :cond_c
    const/16 v34, 0x0

    .local v34, zz:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v34

    if-ge v0, v2, :cond_d

    .line 497
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "mFullStringMultiPinyin("

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    add-int/lit8 v34, v34, 0x1

    goto :goto_7

    .line 504
    :cond_d
    const/4 v14, 0x0

    .line 505
    .local v14, indexofnew:I
    const/16 v27, 0x0

    .line 506
    .local v27, separaterFound:Z
    const/4 v6, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_10

    .line 507
    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 508
    .local v23, pinyinStringRaw:Ljava/lang/String;
    new-instance v22, Ljava/lang/String;

    invoke-direct/range {v22 .. v22}, Ljava/lang/String;-><init>()V

    .line 509
    .local v22, pinyinStringNew:Ljava/lang/String;
    const/16 v27, 0x1

    .line 510
    :goto_9
    if-eqz v23, :cond_f

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    if-eqz v27, :cond_f

    .line 511
    const/4 v2, 0x0

    const/16 v35, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 512
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "##pinyinStringNew:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const/16 v2, 0x2c

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 514
    if-gez v14, :cond_e

    .line 515
    const/16 v27, 0x0

    .line 519
    :goto_a
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "##pinyinStringRaw:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 517
    :cond_e
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_a

    .line 521
    :cond_f
    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    .restart local v26       #sbPivot:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mInitialStringMultiPinyin:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "==Canculated pinyinInit== pinyinStringNew="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    .line 528
    .end local v22           #pinyinStringNew:Ljava/lang/String;
    .end local v23           #pinyinStringRaw:Ljava/lang/String;
    .end local v26           #sbPivot:Ljava/lang/StringBuilder;
    :cond_10
    const/16 v34, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mInitialStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v34

    if-ge v0, v2, :cond_11

    .line 529
    const-string v2, "ChineseHighlightHelper"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "mInitialStringMultiPinyin("

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mInitialStringMultiPinyin:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    add-int/lit8 v34, v34, 0x1

    goto :goto_b

    .line 536
    .end local v14           #indexofnew:I
    .end local v19           #n:I
    .end local v27           #separaterFound:Z
    .end local v34           #zz:I
    :cond_11
    return-void
.end method

.method public getPinyinStringFromChineseString(Ljava/lang/String;)V
    .locals 16
    .parameter "displayName"

    .prologue
    .line 242
    const-string v13, "ChineseHighlightHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "----getPinyinStringFromChineseString : displayName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToPinyin;->getInstance()Lcom/samsung/mms/hanzi/HanziToPinyin;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/samsung/mms/hanzi/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, currentSubStr:Ljava/lang/String;
    move-object/from16 v11, p1

    .line 246
    .local v11, tmpDislpayName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 247
    .local v8, nTmpPos:I
    const/4 v7, 0x0

    .line 248
    .local v7, nPinYinCount:I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokenTypePinyinIncluded:Z

    .line 250
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mInitialString:Ljava/lang/StringBuilder;

    .line 251
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mFullString:Ljava/lang/StringBuilder;

    .line 253
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_8

    .line 254
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 256
    .local v6, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_7

    .line 257
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;

    .line 258
    .local v12, token:Lcom/samsung/mms/hanzi/HanziToPinyin$Token;
    const-string v13, "ChineseHighlightHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "token.type="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->type:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget v13, v12, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->type:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 261
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->tokenTypePinyinIncluded:Z

    .line 262
    iget-object v13, v12, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 263
    .local v9, sources:[C
    iget-object v13, v12, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 264
    .local v10, targets:[Ljava/lang/String;
    array-length v13, v9

    array-length v14, v10

    if-ge v13, v14, :cond_0

    array-length v5, v9

    .line 267
    .local v5, m:I
    :goto_1
    const-string v13, "ChineseHighlightHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tokey type (PINYIN) m="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v4, 0x0

    .local v4, kk:I
    :goto_2
    if-ge v4, v5, :cond_1

    .line 269
    const-string v13, "ChineseHighlightHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sources["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-char v15, v9, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",targets["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v10, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 264
    .end local v4           #kk:I
    .end local v5           #m:I
    :cond_0
    array-length v5, v10

    goto :goto_1

    .line 273
    .restart local v4       #kk:I
    .restart local v5       #m:I
    :cond_1
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    if-ge v3, v5, :cond_2

    .line 274
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mInitialString:Ljava/lang/StringBuilder;

    aget-object v14, v10, v3

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 276
    :cond_2
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_6

    .line 277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mFullString:Ljava/lang/StringBuilder;

    aget-object v14, v10, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 281
    .end local v3           #j:I
    .end local v4           #kk:I
    .end local v5           #m:I
    .end local v9           #sources:[C
    .end local v10           #targets:[Ljava/lang/String;
    :cond_3
    iget-object v13, v12, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 282
    .restart local v10       #targets:[Ljava/lang/String;
    iget v13, v12, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->type:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 283
    const-string v13, "ChineseHighlightHelper"

    const-string v14, "tokey type (LATIN)"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_4
    :goto_5
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_6
    array-length v13, v10

    if-ge v3, v13, :cond_6

    .line 288
    const-string v13, "ChineseHighlightHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "adding .. targets["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v10, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mInitialString:Ljava/lang/StringBuilder;

    aget-object v14, v10, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mFullString:Ljava/lang/StringBuilder;

    aget-object v14, v10, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 284
    .end local v3           #j:I
    :cond_5
    iget v13, v12, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_4

    .line 285
    const-string v13, "ChineseHighlightHelper"

    const-string v14, "tokey type (UNKNOWN)"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 256
    .restart local v3       #j:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 295
    .end local v3           #j:I
    .end local v10           #targets:[Ljava/lang/String;
    .end local v12           #token:Lcom/samsung/mms/hanzi/HanziToPinyin$Token;
    :cond_7
    const-string v13, "ChineseHighlightHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getPinyinStringFromChineseString : mInitialString="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mInitialString:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v13, "ChineseHighlightHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getPinyinStringFromChineseString : mFullString="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/mms/hanzi/ChineseHighlightHelper;->mFullString:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .end local v2           #i:I
    .end local v6           #n:I
    :cond_8
    return-void
.end method
