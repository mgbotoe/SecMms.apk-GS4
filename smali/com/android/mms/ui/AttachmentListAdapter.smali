.class public Lcom/android/mms/ui/AttachmentListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AttachmentListAdapter.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/model/AttachmentModel;",
        ">;",
        "Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# instance fields
.field private attachment:Lcom/android/mms/model/AttachmentModel;

.field private contentType:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsAudioMode:Z

.field private mNumberOfAttachments:I

.field private final mResource:I

.field private mSaveButton:Landroid/widget/Button;

.field private mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Z)V
    .locals 2
    .parameter "context"
    .parameter "resource"
    .parameter
    .parameter "isAudioMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 30
    iput-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->contentType:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 41
    iput p2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mResource:I

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 44
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mNumberOfAttachments:I

    .line 45
    iput-boolean p4, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mIsAudioMode:Z

    .line 46
    return-void
.end method


# virtual methods
.method public getCheckedCount()I
    .locals 4

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, checkedCount:I
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1

    .line 187
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 187
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v1           #i:I
    :cond_1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 50
    if-nez p2, :cond_0

    .line 51
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mResource:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/AttachmentModel;

    iput-object v3, p0, Lcom/android/mms/ui/AttachmentListAdapter;->attachment:Lcom/android/mms/model/AttachmentModel;

    .line 55
    const v3, 0x7f0b0040

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 56
    .local v2, text:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentListAdapter;->attachment:Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 58
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 60
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    invoke-virtual {v2}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 64
    :cond_1
    const v3, 0x7f0b0041

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 65
    .local v0, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v3, 0x7f0b0042

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 76
    .local v1, radioButton:Landroid/widget/RadioButton;
    iget-boolean v3, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mIsAudioMode:Z

    if-eqz v3, :cond_2

    .line 77
    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 78
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 81
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    :goto_0
    invoke-virtual {p2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 108
    const v3, 0x7f0201f1

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    return-object p2

    .line 83
    :cond_2
    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 84
    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 87
    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public isChecked(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 197
    if-eqz p2, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/AttachmentListAdapter;->setChecked(IZ)V

    .line 200
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 143
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1

    .line 144
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 148
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListAdapter;->getCheckedCount()I

    move-result v0

    .line 150
    .local v0, checkedCount:I
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListAdapter;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 151
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 158
    .end local v0           #checkedCount:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 159
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    iget v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mNumberOfAttachments:I

    if-ge v1, v2, :cond_4

    .line 160
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/AttachmentListAdapter;->isChecked(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 161
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    .end local v1           #index:I
    :cond_1
    :goto_2
    return-void

    .line 153
    .restart local v0       #checkedCount:I
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 159
    .end local v0           #checkedCount:I
    .restart local v1       #index:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->toggle(I)V

    .line 172
    return-void
.end method

.method public setChecked(IZ)V
    .locals 3
    .parameter "position"
    .parameter "isChecked"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_3

    .line 121
    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mIsAudioMode:Z

    if-eqz v1, :cond_4

    .line 122
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mNumberOfAttachments:I

    if-ge v0, v1, :cond_1

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->isChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 128
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    .end local v0           #index:I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListAdapter;->notifyDataSetChanged()V

    .line 136
    :cond_3
    return-void

    .line 132
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1
.end method

.method public setSaveButton(Landroid/widget/Button;)V
    .locals 2
    .parameter "bt"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    return-void
.end method

.method public setSelectAllCheckbox(Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 182
    return-void
.end method

.method public toggle(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentListAdapter;->isChecked(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->setChecked(IZ)V

    .line 140
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
