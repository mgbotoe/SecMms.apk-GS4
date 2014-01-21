.class Lcom/android/mms/ui/VMessageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "VMessageViewerActivity.java"


# instance fields
.field Inflater:Landroid/view/LayoutInflater;

.field context:Landroid/content/Context;

.field layout:I

.field msgItem:Lcom/android/mms/ui/MsgItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/ui/MsgItem;)V
    .locals 1
    .parameter "context"
    .parameter "layout"
    .parameter "msgItem"

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/android/mms/ui/VMessageListAdapter;->context:Landroid/content/Context;

    .line 205
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/VMessageListAdapter;->Inflater:Landroid/view/LayoutInflater;

    .line 206
    iput-object p3, p0, Lcom/android/mms/ui/VMessageListAdapter;->msgItem:Lcom/android/mms/ui/MsgItem;

    .line 207
    iput p2, p0, Lcom/android/mms/ui/VMessageListAdapter;->layout:I

    .line 208
    return-void
.end method


# virtual methods
.method protected formatMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 14
    .parameter "boxId"
    .parameter "addr"
    .parameter "body"
    .parameter "date"

    .prologue
    .line 235
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v10, "h:mma, yyyy MMM dd"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 236
    .local v8, sdf1:Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "h:mma, MMM dd"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v9, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 237
    .local v9, sdf2:Ljava/text/SimpleDateFormat;
    const/4 v7, 0x0

    .line 240
    .local v7, parse_date:Ljava/util/Date;
    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 243
    iget-object v10, p0, Lcom/android/mms/ui/VMessageListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 248
    :goto_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 250
    .local v2, buf:Landroid/text/SpannableStringBuilder;
    const/4 v6, 0x0

    .line 251
    .local v6, endname:I
    const/4 v5, 0x0

    .line 253
    .local v5, endBody:I
    const-string v3, ""

    .line 254
    .local v3, displayaddr:Ljava/lang/String;
    const-string v1, "arrow"

    .line 256
    .local v1, arrow:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 257
    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    .line 260
    :cond_0
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 261
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 262
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 264
    const/4 v10, 0x1

    if-ne p1, v10, :cond_1

    .line 265
    new-instance v10, Landroid/text/style/ImageSpan;

    iget-object v11, p0, Lcom/android/mms/ui/VMessageListAdapter;->context:Landroid/content/Context;

    const v12, 0x7f0201fe

    invoke-direct {v10, v11, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 274
    :goto_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 276
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 277
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 280
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 281
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 282
    new-instance v10, Landroid/text/style/TextAppearanceSpan;

    iget-object v11, p0, Lcom/android/mms/ui/VMessageListAdapter;->context:Landroid/content/Context;

    const v12, 0x2070011

    invoke-direct {v10, v11, v12}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v2, v10, v5, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 285
    new-instance v10, Landroid/text/style/TextAppearanceSpan;

    iget-object v11, p0, Lcom/android/mms/ui/VMessageListAdapter;->context:Landroid/content/Context;

    const v12, 0x207000f

    invoke-direct {v10, v11, v12}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v11, 0x0

    const/16 v12, 0x21

    invoke-virtual {v2, v10, v11, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 288
    return-object v2

    .line 244
    .end local v1           #arrow:Ljava/lang/String;
    .end local v2           #buf:Landroid/text/SpannableStringBuilder;
    .end local v3           #displayaddr:Ljava/lang/String;
    .end local v5           #endBody:I
    .end local v6           #endname:I
    :catch_0
    move-exception v4

    .line 245
    .local v4, e:Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 269
    .end local v4           #e:Ljava/text/ParseException;
    .restart local v1       #arrow:Ljava/lang/String;
    .restart local v2       #buf:Landroid/text/SpannableStringBuilder;
    .restart local v3       #displayaddr:Ljava/lang/String;
    .restart local v5       #endBody:I
    .restart local v6       #endname:I
    :cond_1
    new-instance v10, Landroid/text/style/ImageSpan;

    iget-object v11, p0, Lcom/android/mms/ui/VMessageListAdapter;->context:Landroid/content/Context;

    const v12, 0x7f0201fd

    invoke-direct {v10, v11, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VMessageListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 219
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 223
    if-nez p2, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/mms/ui/VMessageListAdapter;->Inflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/android/mms/ui/VMessageListAdapter;->layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 227
    :cond_0
    const v1, 0x7f0b02b2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 229
    .local v0, txt:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/mms/ui/VMessageListAdapter;->msgItem:Lcom/android/mms/ui/MsgItem;

    iget v1, v1, Lcom/android/mms/ui/MsgItem;->boxId:I

    iget-object v2, p0, Lcom/android/mms/ui/VMessageListAdapter;->msgItem:Lcom/android/mms/ui/MsgItem;

    iget-object v2, v2, Lcom/android/mms/ui/MsgItem;->address:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/VMessageListAdapter;->msgItem:Lcom/android/mms/ui/MsgItem;

    iget-object v3, v3, Lcom/android/mms/ui/MsgItem;->body:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/VMessageListAdapter;->msgItem:Lcom/android/mms/ui/MsgItem;

    iget-object v4, v4, Lcom/android/mms/ui/MsgItem;->date:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/mms/ui/VMessageListAdapter;->formatMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-object p2
.end method
