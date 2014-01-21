.class public Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
.super Landroid/widget/TextView;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextViewSnippet"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sEllipsis:Ljava/lang/String;


# instance fields
.field private mFullText:Ljava/lang/String;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mTargetString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const-string v0, "\u2026"

    sput-object v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    .line 114
    const-string v0, "Mms/TextViewSnippet"

    sput-object v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 26
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 141
    sget-object v22, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->TAG:Ljava/lang/String;

    const-string v23, "onLayout"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, fullTextLower:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    .line 150
    .local v19, targetStringLower:Ljava/lang/String;
    const/16 v18, 0x0

    .line 151
    .local v18, startPos:I
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v14

    .line 152
    .local v14, searchStringLength:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    .line 154
    .local v3, bodyLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 155
    .local v9, m:Ljava/util/regex/Matcher;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 156
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    .line 159
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->getPaint()Landroid/text/TextPaint;

    move-result-object v21

    .line 161
    .local v21, tp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    .line 162
    .local v15, searchStringWidth:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v13, v0

    .line 163
    .local v13, originalTextFieldWidth:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v20, v0

    .line 165
    .local v20, textFieldWidth:F
    const/16 v16, 0x0

    .line 166
    .local v16, snippetString:Ljava/lang/String;
    cmpl-float v22, v15, v20

    if-lez v22, :cond_5

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v8

    .line 168
    .local v8, length:I
    if-le v3, v8, :cond_3

    .line 169
    move v3, v8

    .line 170
    sget-object v22, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Lower case is longer than full text. mFullText="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v22, v0

    add-int v23, v18, v14

    move/from16 v0, v23

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 216
    .end local v8           #length:I
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    goto/16 :goto_0

    .line 174
    :cond_5
    sget-object v22, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 175
    .local v5, ellipsisWidth:F
    const/high16 v22, 0x4000

    mul-float v22, v22, v5

    sub-float v20, v20, v22

    .line 177
    const/4 v12, -0x1

    .line 178
    .local v12, offset:I
    const/16 v17, -0x1

    .line 179
    .local v17, start:I
    const/4 v6, -0x1

    .line 184
    .local v6, end:I
    sget-object v22, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->TAG:Ljava/lang/String;

    const-string v23, "loop1"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 188
    const/16 v22, 0x0

    sub-int v23, v18, v12

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 189
    .local v11, newstart:I
    add-int v22, v18, v14

    add-int v22, v22, v12

    move/from16 v0, v22

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 191
    .local v10, newend:I
    move/from16 v0, v17

    if-ne v11, v0, :cond_6

    if-eq v10, v6, :cond_4

    .line 195
    :cond_6
    move/from16 v17, v11

    .line 196
    move v6, v10

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, candidate:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v22

    cmpg-float v22, v22, v13

    if-gez v22, :cond_9

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v22

    cmpl-float v22, v22, v20

    if-lez v22, :cond_9

    .line 202
    const-string v23, "%s%s%s"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    if-nez v17, :cond_7

    const-string v22, ""

    :goto_3
    aput-object v22, v24, v25

    const/16 v22, 0x1

    aput-object v4, v24, v22

    const/16 v25, 0x2

    if-ne v6, v3, :cond_8

    const-string v22, ""

    :goto_4
    aput-object v22, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 204
    goto/16 :goto_1

    .line 202
    :cond_7
    sget-object v22, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_3

    :cond_8
    sget-object v22, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_4

    .line 205
    :cond_9
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v22

    cmpl-float v22, v22, v20

    if-gtz v22, :cond_4

    .line 211
    const-string v23, "%s%s%s"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    if-nez v17, :cond_a

    const-string v22, ""

    :goto_5
    aput-object v22, v24, v25

    const/16 v22, 0x1

    aput-object v4, v24, v22

    const/16 v25, 0x2

    if-ne v6, v3, :cond_b

    const-string v22, ""

    :goto_6
    aput-object v22, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 213
    goto/16 :goto_2

    .line 211
    :cond_a
    sget-object v22, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_5

    :cond_b
    sget-object v22, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_6
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "fullText"
    .parameter "target"

    .prologue
    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, patternString:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    .line 230
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->requestLayout()V

    .line 233
    return-void
.end method
