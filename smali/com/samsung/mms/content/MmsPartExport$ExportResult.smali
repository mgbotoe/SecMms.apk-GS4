.class final enum Lcom/samsung/mms/content/MmsPartExport$ExportResult;
.super Ljava/lang/Enum;
.source "MmsPartExport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/content/MmsPartExport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ExportResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/mms/content/MmsPartExport$ExportResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/mms/content/MmsPartExport$ExportResult;

.field public static final enum FAILURE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

.field public static final enum FILE_EXISTS:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

.field public static final enum NO_SDCARD:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

.field public static final enum OUT_OF_SPACE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

.field public static final enum SUCCESS:Lcom/samsung/mms/content/MmsPartExport$ExportResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/samsung/mms/content/MmsPartExport$ExportResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->SUCCESS:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    .line 59
    new-instance v0, Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/mms/content/MmsPartExport$ExportResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->FAILURE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    .line 60
    new-instance v0, Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    const-string v1, "NO_SDCARD"

    invoke-direct {v0, v1, v4}, Lcom/samsung/mms/content/MmsPartExport$ExportResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->NO_SDCARD:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    .line 61
    new-instance v0, Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    const-string v1, "OUT_OF_SPACE"

    invoke-direct {v0, v1, v5}, Lcom/samsung/mms/content/MmsPartExport$ExportResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->OUT_OF_SPACE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    .line 62
    new-instance v0, Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    const-string v1, "FILE_EXISTS"

    invoke-direct {v0, v1, v6}, Lcom/samsung/mms/content/MmsPartExport$ExportResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->FILE_EXISTS:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    sget-object v1, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->SUCCESS:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->FAILURE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->NO_SDCARD:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->OUT_OF_SPACE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->FILE_EXISTS:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->$VALUES:[Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/mms/content/MmsPartExport$ExportResult;
    .locals 1
    .parameter "name"

    .prologue
    .line 57
    const-class v0, Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    return-object v0
.end method

.method public static values()[Lcom/samsung/mms/content/MmsPartExport$ExportResult;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->$VALUES:[Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    invoke-virtual {v0}, [Lcom/samsung/mms/content/MmsPartExport$ExportResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    return-object v0
.end method
