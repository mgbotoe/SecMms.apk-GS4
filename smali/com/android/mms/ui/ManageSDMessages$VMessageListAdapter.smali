.class public Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageSDMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSDMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VMessageListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field Inflater:Landroid/view/LayoutInflater;

.field arMsg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MsgItem;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field layout:I

.field final synthetic this$0:Lcom/android/mms/ui/ManageSDMessages;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ManageSDMessages;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MsgItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 600
    .local p4, arMsg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MsgItem;>;"
    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 601
    iput-object p2, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->context:Landroid/content/Context;

    .line 602
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->Inflater:Landroid/view/LayoutInflater;

    .line 603
    iput-object p4, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    .line 604
    iput p3, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->layout:I

    .line 605
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
    .line 679
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v10, "h:mma, yyyy MMM dd"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 680
    .local v8, sdf1:Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "h:mma, MMM dd"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v9, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 681
    .local v9, sdf2:Ljava/text/SimpleDateFormat;
    const/4 v7, 0x0

    .line 684
    .local v7, parse_date:Ljava/util/Date;
    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 687
    iget-object v10, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 692
    :goto_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 694
    .local v2, buf:Landroid/text/SpannableStringBuilder;
    const/4 v6, 0x0

    .line 695
    .local v6, endname:I
    const/4 v5, 0x0

    .line 697
    .local v5, endBody:I
    const-string v3, ""

    .line 699
    .local v3, displayaddr:Ljava/lang/String;
    const-string v1, "  "

    .line 700
    .local v1, arrow:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 701
    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    .line 704
    :cond_0
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 705
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 706
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 708
    const/4 v10, 0x1

    if-ne p1, v10, :cond_1

    .line 709
    new-instance v10, Landroid/text/style/ImageSpan;

    iget-object v11, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->context:Landroid/content/Context;

    const v12, 0x7f0201fe

    invoke-direct {v10, v11, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 718
    :goto_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 720
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 721
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 724
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 725
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 726
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    iget-object v11, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-virtual {v11}, Lcom/android/mms/ui/ManageSDMessages;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09004c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v2, v10, v5, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 729
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    iget-object v11, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-virtual {v11}, Lcom/android/mms/ui/ManageSDMessages;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09004a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v11, 0x0

    const/16 v12, 0x21

    invoke-virtual {v2, v10, v11, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 732
    return-object v2

    .line 688
    .end local v1           #arrow:Ljava/lang/String;
    .end local v2           #buf:Landroid/text/SpannableStringBuilder;
    .end local v3           #displayaddr:Ljava/lang/String;
    .end local v5           #endBody:I
    .end local v6           #endname:I
    :catch_0
    move-exception v4

    .line 689
    .local v4, e:Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0

    .line 713
    .end local v4           #e:Ljava/text/ParseException;
    .restart local v1       #arrow:Ljava/lang/String;
    .restart local v2       #buf:Landroid/text/SpannableStringBuilder;
    .restart local v3       #displayaddr:Ljava/lang/String;
    .restart local v5       #endBody:I
    .restart local v6       #endname:I
    :cond_1
    new-instance v10, Landroid/text/style/ImageSpan;

    iget-object v11, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->context:Landroid/content/Context;

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
    .line 613
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$700(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgItem;

    iget-object v0, v0, Lcom/android/mms/ui/MsgItem;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 621
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 625
    const/4 v12, 0x0

    .line 626
    .local v12, view:Landroid/view/View;
    const/4 v8, 0x0

    .line 628
    .local v8, holder:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .line 632
    .local v10, tag:Ljava/lang/Object;
    instance-of v13, v10, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;

    if-eqz v13, :cond_0

    .line 633
    move-object/from16 v12, p2

    move-object v8, v10

    .line 634
    check-cast v8, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;

    .line 638
    .end local v10           #tag:Ljava/lang/Object;
    :cond_0
    if-nez v8, :cond_1

    .line 641
    new-instance v8, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;

    .end local v8           #holder:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;
    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;-><init>(Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;)V

    .line 642
    .restart local v8       #holder:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->Inflater:Landroid/view/LayoutInflater;

    const v14, 0x7f040048

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 644
    const v13, 0x7f0b0154

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->body:Landroid/widget/TextView;

    .line 645
    const v13, 0x7f0b0153

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    iput-object v13, v8, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 646
    invoke-virtual {v12, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 649
    :cond_1
    iget-object v11, v8, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->body:Landroid/widget/TextView;

    .line 650
    .local v11, txt:Landroid/widget/TextView;
    iget-object v5, v8, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 651
    .local v5, checkbox:Landroid/widget/CheckBox;
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 652
    check-cast p3, Landroid/widget/ListView;

    .end local p3
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v13

    invoke-virtual {v5, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 654
    const/4 v6, 0x0

    .line 656
    .local v6, count:I
    const/4 v9, 0x0

    .local v9, index:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;
    invoke-static {v13}, Lcom/android/mms/ui/ManageSDMessages;->access$500(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ListView;->getCount()I

    move-result v13

    if-ge v9, v13, :cond_3

    .line 657
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;
    invoke-static {v13}, Lcom/android/mms/ui/ManageSDMessages;->access$500(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 658
    add-int/lit8 v6, v6, 0x1

    .line 656
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 661
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;
    invoke-static {v13}, Lcom/android/mms/ui/ManageSDMessages;->access$500(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ListView;->getCount()I

    move-result v13

    if-eq v6, v13, :cond_4

    .line 662
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v13}, Lcom/android/mms/ui/ManageSDMessages;->access$100(Lcom/android/mms/ui/ManageSDMessages;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 668
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/ui/MsgItem;

    iget v4, v13, Lcom/android/mms/ui/MsgItem;->boxId:I

    .line 669
    .local v4, boxId:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/ui/MsgItem;

    iget-object v2, v13, Lcom/android/mms/ui/MsgItem;->address:Ljava/lang/String;

    .line 670
    .local v2, addr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/ui/MsgItem;

    iget-object v3, v13, Lcom/android/mms/ui/MsgItem;->body:Ljava/lang/String;

    .line 671
    .local v3, body:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/ui/MsgItem;

    iget-object v7, v13, Lcom/android/mms/ui/MsgItem;->date:Ljava/lang/String;

    .line 673
    .local v7, date:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v3, v7}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->formatMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    return-object v12

    .line 665
    .end local v2           #addr:Ljava/lang/String;
    .end local v3           #body:Ljava/lang/String;
    .end local v4           #boxId:I
    .end local v7           #date:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v13}, Lcom/android/mms/ui/ManageSDMessages;->access$100(Lcom/android/mms/ui/ManageSDMessages;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method
