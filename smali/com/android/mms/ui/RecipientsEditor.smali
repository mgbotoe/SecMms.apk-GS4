.class public Lcom/android/mms/ui/RecipientsEditor;
.super Landroid/widget/AutoCompleteTextView;
.source "RecipientsEditor.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final IME_ACTION_LONGPRESS:Ljava/lang/String; = "imeAction:longPress"

.field public static final IME_ACTION_SELECT_RECIPIENT:Ljava/lang/String; = "imeAction:selectRecipient"

.field private static final TAG:Ljava/lang/String; = "Mms/compose"


# instance fields
.field private isInvalidCharSelection:Z

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mIsErrorSet:Z

.field private mRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_PICListener:Lcom/android/mms/ui/OnPrivateIMECommandListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 71
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput-boolean v1, p0, Lcom/android/mms/ui/RecipientsEditor;->isInvalidCharSelection:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/mms/ui/RecipientsEditor;->mIsErrorSet:Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->m_PICListener:Lcom/android/mms/ui/OnPrivateIMECommandListener;

    .line 73
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setThreshold(I)V

    .line 85
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientsEditor$1;-><init>(Lcom/android/mms/ui/RecipientsEditor;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientsEditor$2;-><init>(Lcom/android/mms/ui/RecipientsEditor;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/RecipientsEditor;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/RecipientsEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/mms/ui/RecipientsEditor;->isInvalidCharSelection:Z

    return p1
.end method

.method public static contactToToken(Lcom/android/mms/data/Contact;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "c"

    .prologue
    .line 254
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 256
    .local v1, s:Landroid/text/SpannableString;
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 258
    .local v0, len:I
    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-object v1

    .line 262
    :cond_0
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "number"

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method


# virtual methods
.method public constructContactsFromInput()Lcom/android/mms/data/ContactList;
    .locals 5

    .prologue
    .line 151
    new-instance v2, Lcom/android/mms/data/ContactList;

    invoke-direct {v2}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 152
    .local v2, list:Lcom/android/mms/data/ContactList;
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 155
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 159
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 161
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 162
    invoke-virtual {v0, v3}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    .line 167
    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method public constructContactsFromValidRecipients(Z)Lcom/android/mms/data/ContactList;
    .locals 5
    .parameter "isMms"

    .prologue
    .line 175
    new-instance v2, Lcom/android/mms/data/ContactList;

    invoke-direct {v2}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 177
    .local v2, list:Lcom/android/mms/data/ContactList;
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 178
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 181
    invoke-static {v3, p1}, Lcom/android/mms/ui/MessageUtils;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 185
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0, v3}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2, v0}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public containsAlias()Z
    .locals 3

    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 246
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    const/4 v2, 0x1

    .line 249
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsEmail()Z
    .locals 3

    .prologue
    .line 237
    iget-object v2, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    const/4 v2, 0x1

    .line 241
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public formatInvalidNumbers(Z)Ljava/lang/String;
    .locals 4
    .parameter "isMms"

    .prologue
    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 226
    .local v1, number:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/mms/ui/MessageUtils;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 233
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public get7DigitRecipient()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    iget-object v2, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 215
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 220
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getErrorFlag()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mIsErrorSet:Z

    return v0
.end method

.method public getInvalidChar()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/mms/ui/RecipientsEditor;->isInvalidCharSelection:Z

    return v0
.end method

.method public getNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    return-object v0
.end method

.method public getRecipientCount()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStrWidth()I
    .locals 10

    .prologue
    .line 365
    iget-object v8, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 366
    .local v6, recipientcount:I
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v2, 0x0

    .local v2, maxlength:I
    const/4 v1, 0x0

    .line 367
    .local v1, maxitem:I
    const-string v3, ""

    .line 368
    .local v3, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 370
    .local v7, strWidth:I
    if-lez v6, :cond_2

    .line 371
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_1

    .line 372
    iget-object v8, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getContactNameForToButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v2, :cond_0

    .line 374
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 375
    move v1, v0

    .line 371
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 380
    .local v4, paint:Landroid/graphics/Paint;
    iget-object v8, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/android/mms/data/Contact;->getContactNameForToButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, recipientStr:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getPaddingStart()I

    move-result v9

    add-int v7, v8, v9

    .line 384
    .end local v4           #paint:Landroid/graphics/Paint;
    .end local v5           #recipientStr:Ljava/lang/String;
    :cond_2
    return v7
.end method

.method public hasInvalidRecipient(Z)Z
    .locals 4
    .parameter "isMms"

    .prologue
    const/4 v2, 0x1

    .line 201
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    .local v1, number:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/mms/ui/MessageUtils;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 210
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v2

    .line 205
    .restart local v1       #number:Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 210
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasValidRecipient(Z)Z
    .locals 3
    .parameter "isMms"

    .prologue
    .line 193
    iget-object v2, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 194
    .local v1, number:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/mms/ui/MessageUtils;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    const/4 v2, 0x1

    .line 197
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public moveCursorToEnd()V
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 300
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 419
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 420
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 447
    :goto_0
    return v2

    .line 424
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 425
    .local v1, recipientcount:I
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v3

    if-nez v3, :cond_0

    if-gt v1, v2, :cond_1

    .line 426
    :cond_0
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    .end local v1           #recipientcount:I
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 428
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #recipientcount:I
    :cond_1
    const/16 v3, 0xa

    const/4 v4, -0x1

    :try_start_1
    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 436
    .end local v1           #recipientcount:I
    :pswitch_1
    const/4 v3, 0x1

    const/4 v4, -0x1

    :try_start_2
    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 437
    :catch_1
    move-exception v0

    .line 439
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 447
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 421
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 305
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButtonLayout;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    .line 308
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AutoCompleteTextView;->onLayout(ZIIII)V

    .line 309
    return-void
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->m_PICListener:Lcom/android/mms/ui/OnPrivateIMECommandListener;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->m_PICListener:Lcom/android/mms/ui/OnPrivateIMECommandListener;

    invoke-interface {v0, p1, p2}, Lcom/android/mms/ui/OnPrivateIMECommandListener;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 404
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public populate(Lcom/android/mms/data/ContactList;)V
    .locals 4
    .parameter "list"

    .prologue
    .line 269
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 271
    .local v2, sb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 272
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    const-string v3, ", "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 275
    :cond_0
    invoke-static {v0}, Lcom/android/mms/ui/RecipientsEditor;->contactToToken(Lcom/android/mms/data/Contact;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 278
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 279
    const-string v3, ", "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 280
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/RecipientsEditor;->setSelection(I)V

    .line 284
    :cond_2
    return-void
.end method

.method public setComposer(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "composer"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 139
    return-void
.end method

.method public setErrorFlag(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 452
    iput-boolean p1, p0, Lcom/android/mms/ui/RecipientsEditor;->mIsErrorSet:Z

    .line 458
    return-void
.end method

.method public setInvalidChar(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/android/mms/ui/RecipientsEditor;->isInvalidCharSelection:Z

    .line 414
    return-void
.end method

.method public setOnPrivateIMECommandListener(Lcom/android/mms/ui/OnPrivateIMECommandListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor;->m_PICListener:Lcom/android/mms/ui/OnPrivateIMECommandListener;

    .line 396
    return-void
.end method

.method public setRecipients([Ljava/lang/String;)V
    .locals 5
    .parameter "recipients"

    .prologue
    .line 287
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 289
    if-nez p1, :cond_1

    .line 296
    :cond_0
    return-void

    .line 292
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 293
    .local v3, recipient:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setRecipientsInEditor()V
    .locals 18

    .prologue
    .line 312
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    .line 314
    .local v8, recipientcount:I
    if-lez v8, :cond_3

    .line 315
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/android/mms/data/Contact;->getContactNameForToButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, name:Ljava/lang/String;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/RecipientsEditor;->setWritingBuddyEnabled(Z)V

    .line 317
    const/4 v12, 0x1

    if-ne v8, v12, :cond_0

    .line 318
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;Z)V

    .line 362
    .end local v3           #name:Ljava/lang/String;
    :goto_0
    return-void

    .line 325
    .restart local v3       #name:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RecipientsEditor;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 326
    .local v6, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/RecipientsEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0003

    add-int/lit8 v14, v8, -0x1

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v17, v8, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 328
    .local v7, recipientStr:Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v11, v12

    .line 329
    .local v11, strWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RecipientsEditor;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RecipientsEditor;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RecipientsEditor;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RecipientsEditor;->getPaddingStart()I

    move-result v13

    sub-int v1, v12, v13

    .line 330
    .local v1, editorWidth:I
    const-string v12, "Mms/compose"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "strWidth:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", editorWidth:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    if-ge v1, v11, :cond_2

    .line 333
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/RecipientsEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0003

    add-int/lit8 v14, v8, -0x1

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "..."

    aput-object v17, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v17, v8, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, etcStr:Ljava/lang/String;
    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v12, v12

    sub-int v9, v1, v12

    .line 336
    .local v9, remainWidth:I
    const/4 v10, 0x0

    .line 337
    .local v10, strIdx:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 338
    .local v4, nameLen:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 341
    .local v5, newName:Ljava/lang/StringBuffer;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    add-int/lit8 v10, v4, -0x1

    .line 343
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v12, v12

    if-ge v9, v12, :cond_1

    if-lez v10, :cond_1

    .line 344
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 345
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 352
    :cond_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 356
    .end local v2           #etcStr:Ljava/lang/String;
    .end local v4           #nameLen:I
    .end local v5           #newName:Ljava/lang/StringBuffer;
    .end local v9           #remainWidth:I
    .end local v10           #strIdx:I
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 360
    .end local v1           #editorWidth:I
    .end local v3           #name:Ljava/lang/String;
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v7           #recipientStr:Ljava/lang/String;
    .end local v11           #strWidth:I
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    goto/16 :goto_0
.end method
