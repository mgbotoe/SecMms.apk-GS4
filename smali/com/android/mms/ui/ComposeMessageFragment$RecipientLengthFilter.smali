.class public Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecipientLengthFilter"
.end annotation


# instance fields
.field private mMax:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .locals 0
    .parameter
    .parameter "max"

    .prologue
    .line 3013
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 3014
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 3015
    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->mMax:I

    .line 3016
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 18
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 3019
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    .line 3020
    .local v9, expected:Ljava/lang/String;
    const/4 v11, 0x0

    .line 3021
    .local v11, nLength:I
    const/4 v14, 0x0

    .line 3023
    .local v14, nSourceLength:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v3, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3025
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v3

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3027
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->mMax:I

    .line 3029
    .local v12, nMaxAddressLen:I
    const/16 v2, 0xe

    if-le v12, v2, :cond_a

    .line 3030
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3031
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3032
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    .line 3033
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v14

    .line 3036
    const-string v2, "+"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3037
    add-int/lit8 v12, v12, 0x1

    .line 3038
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 3043
    .local v8, addressNum:Ljava/lang/String;
    :goto_0
    const/4 v10, 0x0

    .line 3044
    .local v10, isSetKTKTSMSDeliveryReadReports:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3045
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getMessageDeliveryReport()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getMessageReadReport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3047
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3048
    add-int/lit8 v12, v12, -0x6

    .line 3049
    const/4 v10, 0x1

    .line 3055
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpeedDial()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->isLongPressed:Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3900(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_5

    const/4 v2, 0x1

    if-ne v11, v2, :cond_2

    const-string v2, "0"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3057
    :cond_2
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3058
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v8}, Lcom/android/mms/ui/MessageUtils;->searchShortStr(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/data/ContactList;

    move-result-object v15

    .line 3060
    .local v15, searchShortList:Lcom/android/mms/data/ContactList;
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 3061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v2, :cond_3

    .line 3062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v15}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 3064
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    .line 3065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v2}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    .line 3066
    const-string v2, ""

    .line 3107
    .end local v8           #addressNum:Ljava/lang/String;
    .end local v10           #isSetKTKTSMSDeliveryReadReports:Z
    .end local v15           #searchShortList:Lcom/android/mms/data/ContactList;
    :goto_1
    return-object v2

    .line 3040
    :cond_4
    move-object v8, v9

    .restart local v8       #addressNum:Ljava/lang/String;
    goto/16 :goto_0

    .line 3071
    .restart local v10       #isSetKTKTSMSDeliveryReadReports:Z
    :cond_5
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3072
    if-le v11, v12, :cond_a

    .line 3073
    sub-int v2, v11, v12

    sub-int v13, v14, v2

    .line 3075
    .local v13, nPasteLength:I
    if-ltz v13, :cond_7

    .line 3076
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3081
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z

    if-nez v2, :cond_6

    .line 3082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v4, 0x7f0c0297

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v5, 0x7f0c0148

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    new-instance v6, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v6, v7, v0}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    new-instance v7, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-static/range {v2 .. v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    .line 3088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z

    .line 3091
    :cond_6
    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3092
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 3078
    :cond_7
    const-string v9, ""

    goto :goto_2

    .line 3095
    :cond_8
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_9

    .line 3096
    const-string v2, ""

    goto/16 :goto_1

    :cond_9
    move-object v2, v9

    .line 3098
    goto/16 :goto_1

    .line 3104
    .end local v8           #addressNum:Ljava/lang/String;
    .end local v10           #isSetKTKTSMSDeliveryReadReports:Z
    .end local v13           #nPasteLength:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment$RecipientLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->isLongPressed:Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3900(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "0"

    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3105
    const-string v2, "+"

    goto/16 :goto_1

    .line 3107
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_1
.end method
