.class Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;
.super Landroid/widget/BaseAdapter;
.source "SetupSpamNumberList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamNumberList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpamAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private spamList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/spam/SpamFilter$SpamFilterData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberList;


# direct methods
.method public constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "_context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/spam/SpamFilter$SpamFilterData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 828
    .local p3, _autoRejectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/spam/SpamFilter$SpamFilterData;>;"
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 829
    iput-object p2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->context:Landroid/app/Activity;

    .line 830
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 831
    iput-object p3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    .line 832
    return-void
.end method

.method private drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 848
    new-instance v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;)V

    .line 849
    .local v2, viewHolder:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;
    move-object v1, p2

    .line 851
    .local v1, v:Landroid/view/View;
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 853
    .local v0, item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    if-eqz v0, :cond_1

    .line 854
    if-nez v1, :cond_0

    .line 855
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04008a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 857
    :cond_0
    const v3, 0x7f0b0297

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    .line 859
    const v3, 0x7f0b0296

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 860
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setFocusable(Z)V

    .line 862
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 863
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 864
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    :cond_1
    :goto_0
    return-object v1

    .line 866
    :cond_2
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0b0293

    const v7, 0x7f0b0120

    const/16 v6, 0x8

    .line 886
    new-instance v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;)V

    .line 887
    .local v2, viewHolder:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;
    move-object v1, p2

    .line 889
    .local v1, v:Landroid/view/View;
    const-string v4, "Mms/SetupSpamNumberList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoreject idx : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " rejectNum = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 893
    .local v0, item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    if-eqz v0, :cond_3

    .line 894
    if-nez p1, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 895
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040087

    invoke-virtual {v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 896
    const v3, 0x7f0b0119

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 897
    const v3, 0x7f0b0292

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    .line 898
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 899
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v4, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$2;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$2;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 995
    :goto_0
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 996
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 997
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    :cond_0
    :goto_1
    if-nez p1, :cond_1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1004
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v3

    if-nez v3, :cond_7

    .line 1005
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0c029f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1014
    :cond_2
    :goto_2
    const-string v3, "Mms/SetupSpamNumberList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mScreenType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget v5, v5, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " checked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1017
    :cond_3
    return-object v1

    .line 944
    :cond_4
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040088

    invoke-virtual {v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 945
    const v3, 0x7f0b0294

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    .line 948
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 949
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 950
    const v3, 0x7f0b0265

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    .line 953
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 954
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1800(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/view/View$OnCreateContextMenuListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 955
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 968
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v4, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 989
    :cond_5
    const v3, 0x7f0b0267

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 990
    const v3, 0x7f0b0295

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 991
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 999
    :cond_6
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1006
    :cond_7
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 1007
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0c02a0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 1008
    :cond_8
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 1009
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0c02a1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 1010
    :cond_9
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1011
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0c02a2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 823
    invoke-virtual {p0, p1}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->getItem(I)Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1021
    const/4 v0, 0x0

    .line 1023
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget v1, v1, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v1, :cond_0

    .line 1024
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1028
    :goto_0
    return-object v0

    .line 1026
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
