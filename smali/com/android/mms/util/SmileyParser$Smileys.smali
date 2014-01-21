.class Lcom/android/mms/util/SmileyParser$Smileys;
.super Ljava/lang/Object;
.source "SmileyParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/SmileyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Smileys"
.end annotation


# static fields
.field public static ANGEL:I

.field public static COOL:I

.field public static CRYING:I

.field public static EMBARRASSED:I

.field public static FOOT_IN_MOUTH:I

.field public static HAPPY:I

.field public static HEART:I

.field public static KISSING:I

.field public static LAUGHING:I

.field public static LIPS_ARE_SEALED:I

.field public static MAD:I

.field public static MONEY_MOUTH:I

.field public static POKERFACE:I

.field public static SAD:I

.field public static SMIRK:I

.field public static SURPRISED:I

.field public static TONGUE_STICKING_OUT:I

.field public static UNDECIDED:I

.field public static WINKING:I

.field public static WTF:I

.field public static YELLING:I

.field private static final sIconIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/util/SmileyParser$Smileys;->sIconIds:[I

    .line 86
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->HAPPY:I

    .line 88
    const/4 v0, 0x1

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->SAD:I

    .line 90
    const/4 v0, 0x2

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->WINKING:I

    .line 92
    const/4 v0, 0x3

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->TONGUE_STICKING_OUT:I

    .line 94
    const/4 v0, 0x4

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->SURPRISED:I

    .line 96
    const/4 v0, 0x5

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->KISSING:I

    .line 98
    const/4 v0, 0x6

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->YELLING:I

    .line 100
    const/4 v0, 0x7

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->COOL:I

    .line 102
    const/16 v0, 0x8

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->MONEY_MOUTH:I

    .line 104
    const/16 v0, 0x9

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->FOOT_IN_MOUTH:I

    .line 106
    const/16 v0, 0xa

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->EMBARRASSED:I

    .line 108
    const/16 v0, 0xb

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->ANGEL:I

    .line 110
    const/16 v0, 0xc

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->UNDECIDED:I

    .line 112
    const/16 v0, 0xd

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->CRYING:I

    .line 114
    const/16 v0, 0xe

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->LIPS_ARE_SEALED:I

    .line 116
    const/16 v0, 0xf

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->LAUGHING:I

    .line 118
    const/16 v0, 0x10

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->WTF:I

    .line 120
    const/16 v0, 0x11

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->MAD:I

    .line 122
    const/16 v0, 0x12

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->HEART:I

    .line 124
    const/16 v0, 0x13

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->SMIRK:I

    .line 126
    const/16 v0, 0x14

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->POKERFACE:I

    return-void

    .line 71
    :array_0
    .array-data 0x4
        0x48t 0x0t 0x2t 0x7ft
        0x50t 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
        0x53t 0x0t 0x2t 0x7ft
        0x52t 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x4et 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
        0x45t 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
        0x51t 0x0t 0x2t 0x7ft
        0x4ft 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmileyResource(I)I
    .locals 1
    .parameter "which"

    .prologue
    .line 129
    sget-object v0, Lcom/android/mms/util/SmileyParser$Smileys;->sIconIds:[I

    aget v0, v0, p0

    return v0
.end method
