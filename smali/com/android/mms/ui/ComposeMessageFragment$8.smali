.class Lcom/android/mms/ui/ComposeMessageFragment$8;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 13
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v12, 0x42

    const/4 v11, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1138
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-eqz v9, :cond_1

    .line 1315
    :cond_0
    :goto_0
    return v7

    .line 1141
    :cond_1
    const/16 v9, 0x52

    if-ne p2, v9, :cond_2

    .line 1142
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1143
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v10}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->finishWB(Landroid/widget/EditText;)V

    .line 1146
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableEnterKeyInput()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1148
    if-ne p2, v12, :cond_3

    .line 1149
    const-string v7, "Mms/ComposeMessageFragment"

    const-string v9, "Enter Key is Disable Function in Messaging"

    invoke-static {v7, v9}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 1150
    goto :goto_0

    .line 1154
    :cond_3
    const/16 v9, 0x15

    if-ne p2, v9, :cond_a

    .line 1156
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    .line 1160
    .local v2, edit:Landroid/widget/EditText;
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v10

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v9, v2, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v9

    if-ne v9, v8, :cond_6

    move v4, v8

    .line 1161
    .local v4, isDirectionLTR:Z
    :goto_1
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v2}, Landroid/widget/EditText;->hasSelection()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v9

    if-nez v9, :cond_4

    if-nez v4, :cond_5

    :cond_4
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v10

    if-ne v9, v10, :cond_7

    invoke-virtual {v2}, Landroid/widget/EditText;->hasSelection()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v9

    if-nez v9, :cond_7

    if-nez v4, :cond_7

    :cond_5
    move v6, v8

    .line 1163
    .local v6, shouldPassFocus:Z
    :goto_2
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    if-nez v9, :cond_8

    .line 1164
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_8

    move v7, v8

    .line 1165
    goto/16 :goto_0

    .end local v4           #isDirectionLTR:Z
    .end local v6           #shouldPassFocus:Z
    :cond_6
    move v4, v7

    .line 1160
    goto :goto_1

    .restart local v4       #isDirectionLTR:Z
    :cond_7
    move v6, v7

    .line 1161
    goto :goto_2

    .line 1168
    .restart local v6       #shouldPassFocus:Z
    :cond_8
    if-eqz v6, :cond_a

    .line 1169
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButtonLeft:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 1170
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButtonLeft:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Button;->requestFocus()Z

    .line 1171
    :cond_9
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    const/16 v10, 0x11

    invoke-static {v10}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v8

    .line 1172
    goto/16 :goto_0

    .line 1174
    .end local v2           #edit:Landroid/widget/EditText;
    .end local v4           #isDirectionLTR:Z
    .end local v6           #shouldPassFocus:Z
    :catch_0
    move-exception v3

    .line 1175
    .local v3, ex:Ljava/lang/ClassCastException;
    const-string v9, "Mms/ComposeMessageFragment"

    const-string v10, "key event not from EditText"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    .end local v3           #ex:Ljava/lang/ClassCastException;
    :cond_a
    const/16 v9, 0x16

    if-ne p2, v9, :cond_12

    .line 1180
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    if-eqz v9, :cond_12

    .line 1182
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    .line 1186
    .restart local v2       #edit:Landroid/widget/EditText;
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v10

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v9, v2, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v9

    if-ne v9, v8, :cond_f

    move v4, v8

    .line 1187
    .restart local v4       #isDirectionLTR:Z
    :goto_3
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v10

    if-ne v9, v10, :cond_b

    invoke-virtual {v2}, Landroid/widget/EditText;->hasSelection()Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v9

    if-nez v9, :cond_b

    if-nez v4, :cond_c

    :cond_b
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    if-nez v9, :cond_10

    invoke-virtual {v2}, Landroid/widget/EditText;->hasSelection()Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v9

    if-nez v9, :cond_10

    if-nez v4, :cond_10

    :cond_c
    move v6, v8

    .line 1190
    .restart local v6       #shouldPassFocus:Z
    :goto_4
    if-eqz v6, :cond_14

    .line 1191
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1192
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->requestFocus()Z

    .line 1204
    :cond_d
    :goto_5
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    const/16 v10, 0x42

    invoke-static {v10}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->playSoundEffect(I)V

    .line 1214
    :cond_e
    :goto_6
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    if-nez v9, :cond_15

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v10

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v9, v2, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v9

    if-ne v9, v11, :cond_15

    move v7, v8

    .line 1216
    goto/16 :goto_0

    .end local v4           #isDirectionLTR:Z
    .end local v6           #shouldPassFocus:Z
    :cond_f
    move v4, v7

    .line 1186
    goto :goto_3

    .restart local v4       #isDirectionLTR:Z
    :cond_10
    move v6, v7

    .line 1187
    goto :goto_4

    .line 1194
    .restart local v6       #shouldPassFocus:Z
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v9

    if-ne v9, v8, :cond_13

    .line 1195
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButtonLeft:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 1196
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButtonLeft:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Button;->requestFocus()Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 1221
    .end local v2           #edit:Landroid/widget/EditText;
    .end local v4           #isDirectionLTR:Z
    .end local v6           #shouldPassFocus:Z
    :catch_1
    move-exception v3

    .line 1222
    .restart local v3       #ex:Ljava/lang/ClassCastException;
    const-string v9, "Mms/ComposeMessageFragment"

    const-string v10, "key event not from EditText"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    .end local v3           #ex:Ljava/lang/ClassCastException;
    :cond_12
    const/16 v9, 0x14

    if-ne p2, v9, :cond_16

    .line 1228
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_16

    .line 1230
    :try_start_2
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    .line 1231
    .restart local v2       #edit:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 1232
    .local v5, layout:Landroid/text/Layout;
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 1234
    .local v1, cursorPosition:I
    if-eq v1, v11, :cond_16

    if-eqz v5, :cond_16

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/EditText;->getLineCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v9, v10, :cond_16

    .line 1236
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 1237
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    const/16 v10, 0x21

    invoke-static {v10}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->playSoundEffect(I)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move v7, v8

    .line 1238
    goto/16 :goto_0

    .line 1199
    .end local v1           #cursorPosition:I
    .end local v5           #layout:Landroid/text/Layout;
    .restart local v4       #isDirectionLTR:Z
    .restart local v6       #shouldPassFocus:Z
    :cond_13
    :try_start_3
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 1200
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_5

    .line 1206
    :cond_14
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1207
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v10

    if-ne v9, v10, :cond_e

    invoke-virtual {v2}, Landroid/widget/EditText;->hasSelection()Z

    move-result v9

    if-nez v9, :cond_e

    .line 1209
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto/16 :goto_6

    .line 1217
    :cond_15
    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v10

    if-ne v9, v10, :cond_12

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v10

    if-ne v9, v10, :cond_12

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v10

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v9, v2, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v9

    if-ne v9, v8, :cond_12

    move v7, v8

    .line 1219
    goto/16 :goto_0

    .line 1240
    .end local v2           #edit:Landroid/widget/EditText;
    .end local v4           #isDirectionLTR:Z
    .end local v6           #shouldPassFocus:Z
    :catch_2
    move-exception v3

    .line 1241
    .restart local v3       #ex:Ljava/lang/ClassCastException;
    const-string v9, "Mms/ComposeMessageFragment"

    const-string v10, "key event not from EditText"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    .end local v3           #ex:Ljava/lang/ClassCastException;
    :cond_16
    const/16 v9, 0x13

    if-ne p2, v9, :cond_0

    .line 1247
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->isReplyAllBannerVisible()Z
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1300(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v9

    if-eqz v9, :cond_18

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_18

    :cond_17
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mReplyAllGroupMsgBttn:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v9

    if-eqz v9, :cond_18

    .line 1252
    :try_start_4
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    .line 1253
    .restart local v2       #edit:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 1254
    .restart local v5       #layout:Landroid/text/Layout;
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 1255
    .restart local v1       #cursorPosition:I
    if-eq v1, v11, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    if-ge v9, v8, :cond_0

    .line 1257
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v10, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusReplyAllBanner(Z)V
    invoke-static {v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3

    move v7, v8

    .line 1258
    goto/16 :goto_0

    .line 1260
    .end local v1           #cursorPosition:I
    .end local v2           #edit:Landroid/widget/EditText;
    .end local v5           #layout:Landroid/text/Layout;
    :catch_3
    move-exception v3

    .line 1261
    .restart local v3       #ex:Ljava/lang/ClassCastException;
    const-string v8, "Mms/ComposeMessageFragment"

    const-string v9, "key event not from EditText"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1263
    .end local v3           #ex:Ljava/lang/ClassCastException;
    :cond_18
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v9, :cond_19

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getVisibility()I

    move-result v9

    if-nez v9, :cond_19

    .line 1265
    :try_start_5
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    .line 1266
    .restart local v2       #edit:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 1267
    .restart local v5       #layout:Landroid/text/Layout;
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 1268
    .restart local v1       #cursorPosition:I
    if-eq v1, v11, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    if-ge v9, v8, :cond_0

    .line 1270
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    .line 1271
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    const/16 v10, 0x21

    invoke-static {v10}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->playSoundEffect(I)V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    move v7, v8

    .line 1272
    goto/16 :goto_0

    .line 1274
    .end local v1           #cursorPosition:I
    .end local v2           #edit:Landroid/widget/EditText;
    .end local v5           #layout:Landroid/text/Layout;
    :catch_4
    move-exception v3

    .line 1275
    .restart local v3       #ex:Ljava/lang/ClassCastException;
    const-string v8, "Mms/ComposeMessageFragment"

    const-string v9, "key event not from EditText"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1277
    .end local v3           #ex:Ljava/lang/ClassCastException;
    :cond_19
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1a

    .line 1279
    :try_start_6
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    .line 1280
    .restart local v2       #edit:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 1281
    .restart local v5       #layout:Landroid/text/Layout;
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 1282
    .restart local v1       #cursorPosition:I
    if-eq v1, v11, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    if-ge v9, v8, :cond_0

    .line 1284
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 1285
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    const/16 v10, 0x21

    invoke-static {v10}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->playSoundEffect(I)V
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_5

    move v7, v8

    .line 1286
    goto/16 :goto_0

    .line 1288
    .end local v1           #cursorPosition:I
    .end local v2           #edit:Landroid/widget/EditText;
    .end local v5           #layout:Landroid/text/Layout;
    :catch_5
    move-exception v3

    .line 1289
    .restart local v3       #ex:Ljava/lang/ClassCastException;
    const-string v8, "Mms/ComposeMessageFragment"

    const-string v9, "key event not from EditText"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1291
    .end local v3           #ex:Ljava/lang/ClassCastException;
    :cond_1a
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v9}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 1293
    :try_start_7
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    .line 1294
    .restart local v2       #edit:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 1295
    .restart local v5       #layout:Landroid/text/Layout;
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 1297
    .restart local v1       #cursorPosition:I
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1300
    if-eq v1, v11, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    if-ge v9, v8, :cond_0

    .line 1302
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v9}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 1303
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$8;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    const/16 v10, 0x21

    invoke-static {v10}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->playSoundEffect(I)V
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_6

    move v7, v8

    .line 1304
    goto/16 :goto_0

    .line 1306
    .end local v1           #cursorPosition:I
    .end local v2           #edit:Landroid/widget/EditText;
    .end local v5           #layout:Landroid/text/Layout;
    :catch_6
    move-exception v3

    .line 1307
    .restart local v3       #ex:Ljava/lang/ClassCastException;
    const-string v8, "Mms/ComposeMessageFragment"

    const-string v9, "key event not from EditText"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
