.class public Lcom/android/mms/util/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/UIUtils"

.field private static final density:F

.field private static sHighsightColor:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/mms/util/UIUtils;->density:F

    .line 186
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/UIUtils;->sHighsightColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLinks(Landroid/text/Spannable;I)V
    .locals 0
    .parameter "msg"
    .parameter "linkMask"

    .prologue
    .line 84
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 85
    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;I)V
    .locals 0
    .parameter "textView"
    .parameter "linkMask"

    .prologue
    .line 88
    if-nez p0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 92
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    goto :goto_0
.end method

.method public static clearText(Landroid/widget/TextView;)V
    .locals 2
    .parameter "tv"

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const-string v0, "Mms/UIUtils"

    const-string v1, "clearText got null view!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    return-void
.end method

.method public static copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "str"

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    const-string v2, "Mms/UIUtils"

    const-string v3, "copyToClipboard(),str null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 214
    :cond_0
    const-string v2, "Mms/UIUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyToClipboard(),len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v2, "clipboardEx"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 217
    .local v0, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 218
    .local v1, clipdata:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 219
    invoke-virtual {v0, p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    goto :goto_0
.end method

.method public static createSearchHightlightPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .parameter "searchString"

    .prologue
    .line 107
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    goto :goto_0
.end method

.method public static delayedScrollTo(Landroid/widget/ScrollView;I)V
    .locals 3
    .parameter "scrollView"
    .parameter "directionFocus"

    .prologue
    .line 73
    if-eqz p0, :cond_0

    .line 74
    new-instance v0, Lcom/android/mms/util/UIUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/util/UIUtils$1;-><init>(Landroid/widget/ScrollView;I)V

    const-wide/16 v1, 0x3c

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    :cond_0
    return-void
.end method

.method public static dp2Pixels(F)I
    .locals 2
    .parameter "dip"

    .prologue
    .line 53
    sget v0, Lcom/android/mms/util/UIUtils;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getAllLinkMask()I
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/16 v0, 0x6a

    .line 99
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xf

    goto :goto_0
.end method

.method private static getHighlighColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 2
    .parameter "context"

    .prologue
    .line 189
    sget-object v0, Lcom/android/mms/util/UIUtils;->sHighsightColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/UIUtils;->sHighsightColor:Landroid/content/res/ColorStateList;

    .line 193
    :cond_0
    sget-object v0, Lcom/android/mms/util/UIUtils;->sHighsightColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public static highlightMessage(Landroid/content/Context;Ljava/util/regex/Pattern;[I[ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 21
    .parameter "context"
    .parameter "highlight"
    .parameter "smileyStart"
    .parameter "smileyEnd"
    .parameter "buf"
    .parameter "callerTag"

    .prologue
    .line 113
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v13, 0x0

    .line 122
    .local v13, isBufTextReplaced:Z
    const/4 v8, 0x0

    .line 123
    .local v8, baseString:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.mms.ui.SearchActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 124
    invoke-virtual/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 125
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 126
    .local v15, m:Ljava/util/regex/Matcher;
    const/4 v13, 0x1

    .line 130
    :cond_2
    :goto_1
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const/4 v14, 0x0

    .line 134
    .local v14, isSmileyhighlight:Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v12, v2, :cond_3

    .line 135
    aget v2, p2, v12

    if-nez v2, :cond_7

    aget v2, p3, v12

    if-nez v2, :cond_7

    .line 145
    :cond_3
    if-nez v14, :cond_2

    .line 147
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    .line 148
    .local v10, end:I
    invoke-virtual/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-ge v2, v10, :cond_4

    .line 149
    invoke-virtual/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "highligh end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_4
    const/4 v11, 0x0

    .local v11, endIndex:I
    const/16 v18, 0x0

    .line 154
    .local v18, startIndex:I
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v16

    .line 155
    .local v16, mStart:I
    if-eqz v13, :cond_e

    .line 156
    const/4 v2, 0x0

    add-int/lit8 v3, v16, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/text/SpannableStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 157
    .local v19, stringBeforeStart:Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, s:I
    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_b

    .line 158
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_5

    .line 159
    add-int/lit8 v18, v18, 0x1

    .line 160
    add-int v2, v18, v16

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_5

    .line 161
    add-int/lit8 v18, v18, 0x1

    .line 157
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 128
    .end local v10           #end:I
    .end local v11           #endIndex:I
    .end local v12           #i:I
    .end local v14           #isSmileyhighlight:Z
    .end local v15           #m:Ljava/util/regex/Matcher;
    .end local v16           #mStart:I
    .end local v17           #s:I
    .end local v18           #startIndex:I
    .end local v19           #stringBeforeStart:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .restart local v15       #m:Ljava/util/regex/Matcher;
    goto/16 :goto_1

    .line 140
    .restart local v12       #i:I
    .restart local v14       #isSmileyhighlight:Z
    :cond_7
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    aget v3, p2, v12

    if-lt v2, v3, :cond_8

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    aget v3, p3, v12

    if-lt v2, v3, :cond_9

    :cond_8
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    aget v3, p2, v12

    if-le v2, v3, :cond_a

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    aget v3, p3, v12

    if-gt v2, v3, :cond_a

    .line 142
    :cond_9
    const/4 v14, 0x1

    .line 134
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 164
    .restart local v10       #end:I
    .restart local v11       #endIndex:I
    .restart local v16       #mStart:I
    .restart local v17       #s:I
    .restart local v18       #startIndex:I
    .restart local v19       #stringBeforeStart:Ljava/lang/String;
    :cond_b
    add-int v2, v16, v18

    add-int/lit8 v2, v2, 0x1

    add-int v3, v10, v18

    if-ge v2, v3, :cond_d

    .line 165
    add-int v2, v16, v18

    add-int/lit8 v2, v2, 0x1

    add-int v3, v10, v18

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/text/SpannableStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 166
    .local v20, stringBetween:Ljava/lang/String;
    const/16 v17, 0x0

    :goto_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_d

    .line 167
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_c

    .line 168
    add-int/lit8 v11, v11, 0x1

    .line 169
    add-int v2, v11, v10

    add-int v2, v2, v18

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_c

    .line 170
    add-int/lit8 v11, v11, 0x1

    .line 166
    :cond_c
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 175
    .end local v20           #stringBetween:Ljava/lang/String;
    :cond_d
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/UIUtils;->getHighlighColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int v3, v3, v18

    invoke-virtual/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int v5, v10, v11

    add-int v5, v5, v18

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 181
    .end local v10           #end:I
    .end local v11           #endIndex:I
    .end local v12           #i:I
    .end local v14           #isSmileyhighlight:Z
    .end local v15           #m:Ljava/util/regex/Matcher;
    .end local v16           #mStart:I
    .end local v17           #s:I
    .end local v18           #startIndex:I
    .end local v19           #stringBeforeStart:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 182
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Mms/UIUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": IllegalArgumentException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    .restart local v10       #end:I
    .restart local v11       #endIndex:I
    .restart local v12       #i:I
    .restart local v14       #isSmileyhighlight:Z
    .restart local v15       #m:Ljava/util/regex/Matcher;
    .restart local v16       #mStart:I
    .restart local v18       #startIndex:I
    :cond_e
    :try_start_1
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/UIUtils;->getHighlighColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3, v10, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static setVisible(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "isVisible"

    .prologue
    .line 199
    if-nez p0, :cond_0

    .line 200
    const-string v0, "Mms/UIUtils"

    const-string v1, "setVibleView null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
