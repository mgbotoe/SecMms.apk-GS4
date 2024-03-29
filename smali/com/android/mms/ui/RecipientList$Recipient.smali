.class public Lcom/android/mms/ui/RecipientList$Recipient;
.super Ljava/lang/Object;
.source "RecipientList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recipient"
.end annotation


# static fields
.field private static final PHONE_NUMBER_SEPARATORS:Ljava/lang/String; = " ()-./"


# instance fields
.field public bcc:Z

.field public label:Ljava/lang/CharSequence;

.field public name:Ljava/lang/String;

.field public nameAndNumber:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public person_id:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    return-void
.end method

.method public static buildNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "number"

    .prologue
    .line 209
    move-object v0, p1

    .line 210
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .end local v0           #formattedNumber:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 159
    const/4 v4, 0x0

    .line 172
    :goto_0
    return-object v4

    .line 162
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 163
    .local v3, length:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 165
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 166
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 168
    .local v1, character:C
    const-string v4, " ()-./"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 172
    .end local v1           #character:C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 6
    .parameter "recipient"

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 113
    .local v3, len:I
    const/4 v1, 0x0

    .line 115
    .local v1, digits:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 116
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 118
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 115
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_1
    const-string v5, " ()-./"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    .line 125
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    if-eqz v2, :cond_0

    .line 135
    .end local v0           #c:C
    :cond_2
    :goto_1
    return v4

    .line 132
    :cond_3
    if-eqz v1, :cond_2

    .line 135
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 1
    .parameter "recipient"

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public filter()Lcom/android/mms/ui/RecipientList$Recipient;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Lcom/android/mms/ui/RecipientList$Recipient;

    invoke-direct {v0}, Lcom/android/mms/ui/RecipientList$Recipient;-><init>()V

    .line 142
    .local v0, result:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-wide v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    iput-wide v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    .line 143
    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    .line 145
    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 146
    iget-boolean v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    iput-boolean v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    .line 147
    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->nameAndNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->nameAndNumber:Ljava/lang/String;

    .line 148
    return-object v0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " number= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nameAndNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->nameAndNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " person_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toToken()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 176
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->nameAndNumber:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 177
    .local v1, s:Landroid/text/SpannableString;
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 179
    .local v0, len:I
    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-object v1

    .line 183
    :cond_0
    iget-wide v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 184
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "person_id"

    iget-wide v4, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 188
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 190
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 191
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "label"

    iget-object v4, p0, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 194
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 195
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "number"

    iget-object v4, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 198
    :cond_4
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "bcc"

    iget-boolean v4, p0, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method
