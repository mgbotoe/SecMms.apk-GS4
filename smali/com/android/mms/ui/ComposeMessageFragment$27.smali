.class Lcom/android/mms/ui/ComposeMessageFragment$27;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V
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
    .line 2787
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v7, 0x82

    const/16 v6, 0x21

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2789
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 2790
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->isLongPressed:Z
    invoke-static {v5, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 2793
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    .line 2795
    sparse-switch p2, :sswitch_data_0

    .line 2896
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2897
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->isLongPressed:Z
    invoke-static {v5, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    :cond_2
    move v3, v4

    .line 2900
    :cond_3
    :goto_0
    return v3

    .line 2797
    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->getErrorFlag()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2798
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->setErrorFlagInRecipientEditor(Z)V

    .line 2800
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->finishWB(Landroid/widget/EditText;)V

    move v3, v4

    .line 2801
    goto :goto_0

    .line 2803
    :sswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 2804
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnLastToButton()V
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4000(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0

    :cond_5
    move v3, v4

    .line 2807
    goto :goto_0

    .line 2810
    :sswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->isPopupShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2811
    const-string v3, "Mms/ComposeMessageFragment"

    const-string v5, "RecipientEditor DPAD_UP isPopupShowing=true "

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v6}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/RecipientsEditor;->playSoundEffect(I)V

    move v3, v4

    .line 2813
    goto :goto_0

    .line 2817
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZZ)Z
    invoke-static {v5, v3, v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3200(Lcom/android/mms/ui/ComposeMessageFragment;ZZZ)Z

    .line 2819
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/SortedMap;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 2820
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnLastToButton()V
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4000(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 2825
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v6}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/RecipientsEditor;->playSoundEffect(I)V

    goto :goto_0

    :cond_7
    move v3, v4

    .line 2823
    goto :goto_0

    .line 2831
    :sswitch_3
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->isPopupShowing()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2832
    const-string v3, "Mms/ComposeMessageFragment"

    const-string v5, "RecipientEditor DPAD_DOWN isPopupShowing=true "

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v7}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/RecipientsEditor;->playSoundEffect(I)V

    move v3, v4

    .line 2834
    goto/16 :goto_0

    .line 2838
    :cond_8
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->findAvailableViewToFocus(Landroid/view/KeyEvent;)V
    invoke-static {v4, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4100(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/view/KeyEvent;)V

    .line 2839
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v7}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/RecipientsEditor;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 2846
    :sswitch_4
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v7}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v7

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v5

    if-eq v5, v3, :cond_3

    .line 2849
    :cond_9
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v6}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionEnd()I

    move-result v6

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v7}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v7

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v5

    if-ne v5, v8, :cond_1

    goto/16 :goto_0

    .line 2858
    :sswitch_5
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v7}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v7

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v5

    if-ne v5, v3, :cond_f

    move v0, v3

    .line 2859
    .local v0, isDirectionLTR:Z
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v6}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v6

    if-ne v5, v6, :cond_a

    if-nez v0, :cond_b

    :cond_a
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v5

    if-nez v5, :cond_10

    if-nez v0, :cond_10

    :cond_b
    move v1, v3

    .line 2862
    .local v1, shouldPassFocus:Z
    :goto_2
    if-eqz v1, :cond_1

    .line 2863
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_3

    .line 2866
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePlusButtonOnRecipient()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2867
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_c

    .line 2871
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 2873
    :cond_c
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2876
    :cond_d
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v5

    if-nez v5, :cond_e

    .line 2877
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2878
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->requestFocus()Z

    .line 2881
    :cond_e
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/16 v5, 0x42

    invoke-static {v5}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/RecipientsEditor;->playSoundEffect(I)V

    goto/16 :goto_0

    .end local v0           #isDirectionLTR:Z
    .end local v1           #shouldPassFocus:Z
    :cond_f
    move v0, v4

    .line 2858
    goto/16 :goto_1

    .restart local v0       #isDirectionLTR:Z
    :cond_10
    move v1, v4

    .line 2859
    goto :goto_2

    .line 2888
    .end local v0           #isDirectionLTR:Z
    :sswitch_6
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getListSelection()I

    move-result v5

    if-ne v8, v5, :cond_1

    .line 2889
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v5

    if-nez v5, :cond_11

    move v2, v3

    .line 2890
    .local v2, showErrorDialog:Z
    :goto_3
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZZ)Z
    invoke-static {v5, v3, v2, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3200(Lcom/android/mms/ui/ComposeMessageFragment;ZZZ)Z

    goto/16 :goto_0

    .end local v2           #showErrorDialog:Z
    :cond_11
    move v2, v4

    .line 2889
    goto :goto_3

    .line 2795
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_6
        0x3d -> :sswitch_5
        0x42 -> :sswitch_6
        0x43 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method
