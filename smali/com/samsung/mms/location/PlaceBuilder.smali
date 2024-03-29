.class public Lcom/samsung/mms/location/PlaceBuilder;
.super Ljava/lang/Object;
.source "PlaceBuilder.java"


# instance fields
.field private P:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Q:D

.field private R:D

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/mms/location/PlaceBuilder;->P:Ljava/util/HashMap;

    .line 20
    return-void
.end method


# virtual methods
.method public addPhoneNumber(Ljava/lang/String;I)Lcom/samsung/mms/location/PlaceBuilder;
    .locals 2
    .parameter "number"
    .parameter "type"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceBuilder;->P:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object p0
.end method

.method public buildPlace()Lcom/samsung/mms/location/Place;
    .locals 12

    .prologue
    .line 78
    new-instance v0, Lcom/samsung/mms/location/Place;

    iget-object v1, p0, Lcom/samsung/mms/location/PlaceBuilder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/mms/location/PlaceBuilder;->P:Ljava/util/HashMap;

    iget-wide v3, p0, Lcom/samsung/mms/location/PlaceBuilder;->Q:D

    iget-wide v5, p0, Lcom/samsung/mms/location/PlaceBuilder;->R:D

    iget-object v7, p0, Lcom/samsung/mms/location/PlaceBuilder;->S:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/mms/location/PlaceBuilder;->T:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/mms/location/PlaceBuilder;->U:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/mms/location/PlaceBuilder;->V:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/mms/location/PlaceBuilder;->W:Ljava/lang/String;

    invoke-direct/range {v0 .. v11}, Lcom/samsung/mms/location/Place;-><init>(Ljava/lang/String;Ljava/util/HashMap;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/samsung/mms/location/PlaceBuilder;
    .locals 0
    .parameter "address"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/mms/location/PlaceBuilder;->S:Ljava/lang/String;

    .line 49
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/samsung/mms/location/PlaceBuilder;
    .locals 0
    .parameter "city"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/mms/location/PlaceBuilder;->T:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/samsung/mms/location/PlaceBuilder;
    .locals 0
    .parameter "country"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/mms/location/PlaceBuilder;->V:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method public setLatitude(D)Lcom/samsung/mms/location/PlaceBuilder;
    .locals 0
    .parameter "latitude"

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/samsung/mms/location/PlaceBuilder;->Q:D

    .line 37
    return-object p0
.end method

.method public setLongitude(D)Lcom/samsung/mms/location/PlaceBuilder;
    .locals 0
    .parameter "longitude"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/samsung/mms/location/PlaceBuilder;->R:D

    .line 43
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/samsung/mms/location/PlaceBuilder;
    .locals 0
    .parameter "name"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/samsung/mms/location/PlaceBuilder;->name:Ljava/lang/String;

    .line 25
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/samsung/mms/location/PlaceBuilder;
    .locals 0
    .parameter "postalCode"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/mms/location/PlaceBuilder;->W:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/samsung/mms/location/PlaceBuilder;
    .locals 0
    .parameter "state"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/mms/location/PlaceBuilder;->U:Ljava/lang/String;

    .line 61
    return-object p0
.end method
