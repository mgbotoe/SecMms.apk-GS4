.class public Lcom/android/mms/ui/RecipientPerson;
.super Ljava/lang/Object;
.source "RecipientPerson.java"


# instance fields
.field private Name:Ljava/lang/String;

.field private Number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "_Name"
    .parameter "_Number"

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/mms/ui/RecipientPerson;->Name:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/android/mms/ui/RecipientPerson;->Number:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/mms/ui/RecipientPerson;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/mms/ui/RecipientPerson;->Number:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/mms/ui/RecipientPerson;->Name:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/mms/ui/RecipientPerson;->Number:Ljava/lang/String;

    .line 27
    return-void
.end method
