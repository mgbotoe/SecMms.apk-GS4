.class Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;
.super Landroid/widget/BaseAdapter;
.source "SetupSpamKeywordList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpamAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;
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

.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordList;


# direct methods
.method public constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/app/Activity;Ljava/util/ArrayList;)V
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
    .line 751
    .local p3, _spamKeywordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/spam/SpamFilter$SpamFilterData;>;"
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 752
    iput-object p2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->context:Landroid/app/Activity;

    .line 753
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 754
    iput-object p3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    .line 755
    return-void
.end method

.method private drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 771
    new-instance v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;)V

    .line 772
    .local v2, viewHolder:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;
    move-object v1, p2

    .line 773
    .local v1, v:Landroid/view/View;
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 775
    .local v0, item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    if-eqz v0, :cond_1

    .line 776
    if-nez v1, :cond_0

    .line 777
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04008a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 778
    :cond_0
    const v3, 0x7f0b0297

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 779
    const v3, 0x7f0b0296

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 780
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setFocusable(Z)V

    .line 781
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    :cond_1
    return-object v1
.end method

.method private drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x8

    .line 787
    new-instance v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;)V

    .line 788
    .local v2, viewHolder:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;
    move-object v1, p2

    .line 789
    .local v1, v:Landroid/view/View;
    const-string v4, "Mms/SetupSpamKeywordList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Spamkeyword idx : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " filter = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 792
    .local v0, item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    if-eqz v0, :cond_1

    .line 793
    if-nez v1, :cond_0

    .line 794
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040089

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 795
    :cond_0
    const v3, 0x7f0b0294

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 796
    const v3, 0x7f0b0293

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 797
    const v3, 0x7f0b0265

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    .line 798
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 799
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1600(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/view/View$OnCreateContextMenuListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 801
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v4, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$2;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$2;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    :goto_0
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    const-string v3, "Mms/SetupSpamKeywordList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mScreenType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget v5, v5, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

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

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 834
    :cond_1
    return-object v1

    .line 827
    :cond_2
    const v3, 0x7f0b0267

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 828
    const v3, 0x7f0b0295

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 745
    invoke-virtual {p0, p1}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->getItem(I)Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->spamList:Ljava/util/ArrayList;

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
    .line 839
    const/4 v0, 0x0

    .line 840
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget v1, v1, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-nez v1, :cond_0

    .line 841
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 845
    :goto_0
    return-object v0

    .line 843
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
