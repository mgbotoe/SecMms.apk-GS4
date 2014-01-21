.class public Lcom/android/mms/ui/FontSizeController;
.super Ljava/lang/Object;
.source "FontSizeController.java"


# static fields
.field public static final BUBBLE_DATE_FONT_SIZE:[F = null

.field public static final BUBBLE_FONT_SIZE:[F = null

.field public static final BUBBLE_FONT_SIZE_7_STEP:[F = null

.field public static final BUBBLE_FONT_SIZE_WVGA:[F = null

.field public static final FONT_SIZE_7_STEP_BUBBLE_NORMAL:F = 19.0f

.field public static final FONT_SIZE_7_STEP_EDIT_NORMAL:F = 19.0f

.field public static final FONT_SIZE_7_STEP_EXCEPTION_HUGE:F = 51.0f

.field public static final FONT_SIZE_7_STEP_RECIPIENTS_NORMAL:F = 19.0f

.field public static final FONT_SIZE_7_STEP_VEIWER_NORMAL:F = 19.0f

.field public static final FONT_SIZE_BUBBLE:I = 0x2

.field public static final FONT_SIZE_BUBBLE_NORMAL:F = 19.0f

.field public static final FONT_SIZE_EDIT:I = 0x3

.field public static final FONT_SIZE_EDIT_NORMAL:F = 19.0f

.field public static final FONT_SIZE_EXCEPTION_HUGE:F = 58.0f

.field public static final FONT_SIZE_RATE:[F = null

.field public static final FONT_SIZE_RATE_7_STEP:[F = null

.field public static final FONT_SIZE_RECIPIENTS:I = 0x1

.field public static final FONT_SIZE_RECIPIENTS_NORMAL:F = 18.0f

.field public static final FONT_SIZE_RESTRICTED:I = 0x5

.field public static final FONT_SIZE_VEIWER:I = 0x4

.field public static final FONT_SIZE_VEIWER_NORMAL:F = 19.0f

.field public static final KOR_FONT_SIZE_BUBBLE_NORMAL:F = 21.0f

.field public static final KOR_FONT_SIZE_EDIT_NORMAL:F = 21.0f

.field public static final KOR_FONT_SIZE_RECIPIENTS_NORMAL:F = 20.0f

.field public static final KOR_FONT_SIZE_VEIWER_NORMAL:F = 21.0f

.field public static final KOR_FULLHD_FONT_SIZE_RATE:[F = null

.field public static final KOR_FULLHD_RECIPIENTS_FONT_SIZE_RATE:[F = null

.field public static final KOR_RECIPIENTS_FONT_SIZE_RATE:[F = null

.field public static final T0_FONT_SIZE_BUBBLE_NORMAL:F = 22.0f

.field public static final T0_FONT_SIZE_EDIT_NORMAL:F = 22.0f

.field public static final T0_FONT_SIZE_EXCEPTION_HUGE:F = 52.0f

.field public static final T0_FONT_SIZE_RATE:[F = null

.field public static final T0_FONT_SIZE_RECIPIENTS_NORMAL:F = 22.0f

.field public static final T0_FONT_SIZE_VEIWER_NORMAL:F = 17.0f

.field public static mFontSizeBubbleNormal:F

.field public static mFontSizeEditNormal:F

.field public static mFontSizeExceptionHuge:F

.field public static mFontSizeRecipientsNormal:F

.field public static mFontSizeViewerNormal:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 11
    sput v0, Lcom/android/mms/ui/FontSizeController;->mFontSizeRecipientsNormal:F

    .line 12
    sput v0, Lcom/android/mms/ui/FontSizeController;->mFontSizeBubbleNormal:F

    .line 13
    sput v0, Lcom/android/mms/ui/FontSizeController;->mFontSizeEditNormal:F

    .line 14
    sput v0, Lcom/android/mms/ui/FontSizeController;->mFontSizeViewerNormal:F

    .line 15
    sput v0, Lcom/android/mms/ui/FontSizeController;->mFontSizeExceptionHuge:F

    .line 46
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE:[F

    .line 55
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE_WVGA:[F

    .line 64
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->FONT_SIZE_RATE:[F

    .line 73
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_RECIPIENTS_FONT_SIZE_RATE:[F

    .line 82
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_FULLHD_FONT_SIZE_RATE:[F

    .line 91
    new-array v0, v1, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_FULLHD_RECIPIENTS_FONT_SIZE_RATE:[F

    .line 100
    new-array v0, v1, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->T0_FONT_SIZE_RATE:[F

    .line 109
    new-array v0, v1, [F

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_DATE_FONT_SIZE:[F

    .line 118
    new-array v0, v2, [F

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->FONT_SIZE_RATE_7_STEP:[F

    .line 129
    new-array v0, v2, [F

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE_7_STEP:[F

    return-void

    .line 46
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xb0t 0x41t
        0x0t 0x0t 0x98t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xb0t 0x41t
        0x0t 0x0t 0xe8t 0x41t
        0x0t 0x0t 0x64t 0x42t
    .end array-data

    .line 55
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x90t 0x41t
        0x0t 0x0t 0x60t 0x41t
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x90t 0x41t
        0x0t 0x0t 0xc0t 0x41t
        0x0t 0x0t 0xf8t 0x41t
    .end array-data

    .line 64
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x5ct 0x8ft 0x42t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0xd7t 0xa3t 0xb0t 0x3ft
        0xd7t 0xa3t 0xb0t 0x3ft
    .end array-data

    .line 73
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x5ct 0x8ft 0x42t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0xf6t 0x28t 0x9ct 0x3ft
        0x71t 0x3dt 0xaat 0x3ft
    .end array-data

    .line 82
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xect 0x51t 0x38t 0x3ft
        0x85t 0xebt 0x51t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x1ft 0x85t 0xabt 0x3ft
        0xd7t 0xa3t 0xb0t 0x3ft
    .end array-data

    .line 91
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x8ct 0x3ft
        0x9at 0x99t 0x99t 0x3ft
    .end array-data

    .line 100
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
        0x7bt 0x14t 0x6et 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0xa6t 0x3ft
        0x66t 0x66t 0xe6t 0x3ft
    .end array-data

    .line 109
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0xaet 0x47t 0x55t 0x41t
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x80t 0x41t
    .end array-data

    .line 118
    :array_8
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x71t 0x3dt 0x4at 0x3ft
        0xat 0xd7t 0x63t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x8ct 0x3ft
        0x48t 0xe1t 0x9at 0x3ft
        0x29t 0x5ct 0xaft 0x3ft
        0xa4t 0x70t 0xddt 0x3ft
    .end array-data

    .line 129
    :array_9
    .array-data 0x4
        0x0t 0x0t 0x98t 0x41t
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x88t 0x41t
        0x0t 0x0t 0x98t 0x41t
        0x0t 0x0t 0xa8t 0x41t
        0x0t 0x0t 0xb8t 0x41t
        0x0t 0x0t 0xd0t 0x41t
        0x0t 0x0t 0x4ct 0x42t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateBubbleFontRateArray(Landroid/content/Context;)[F
    .locals 3
    .parameter "context"

    .prologue
    .line 166
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    sget-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE_7_STEP:[F

    .line 176
    .local v0, bubbleFontRate:[F
    :goto_0
    return-object v0

    .line 169
    .end local v0           #bubbleFontRate:[F
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 171
    sget-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE_WVGA:[F

    .restart local v0       #bubbleFontRate:[F
    goto :goto_0

    .line 173
    .end local v0           #bubbleFontRate:[F
    :cond_1
    sget-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE:[F

    .restart local v0       #bubbleFontRate:[F
    goto :goto_0
.end method

.method public static updateFontRateArray(I)[F
    .locals 3
    .parameter "nType"

    .prologue
    const/4 v2, 0x5

    .line 142
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    sget-object v0, Lcom/android/mms/ui/FontSizeController;->FONT_SIZE_RATE_7_STEP:[F

    .line 161
    .local v0, fontRate:[F
    :goto_0
    return-object v0

    .line 145
    .end local v0           #fontRate:[F
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    sget-object v0, Lcom/android/mms/ui/FontSizeController;->T0_FONT_SIZE_RATE:[F

    .restart local v0       #fontRate:[F
    goto :goto_0

    .line 147
    .end local v0           #fontRate:[F
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    if-ne p0, v2, :cond_2

    .line 149
    sget-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_FULLHD_RECIPIENTS_FONT_SIZE_RATE:[F

    .restart local v0       #fontRate:[F
    goto :goto_0

    .line 151
    .end local v0           #fontRate:[F
    :cond_2
    sget-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_FULLHD_FONT_SIZE_RATE:[F

    .restart local v0       #fontRate:[F
    goto :goto_0

    .line 154
    .end local v0           #fontRate:[F
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->useRecipientsFontSizeCustomizeForKor()Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne p0, v2, :cond_4

    .line 155
    sget-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_RECIPIENTS_FONT_SIZE_RATE:[F

    .restart local v0       #fontRate:[F
    goto :goto_0

    .line 157
    .end local v0           #fontRate:[F
    :cond_4
    sget-object v0, Lcom/android/mms/ui/FontSizeController;->FONT_SIZE_RATE:[F

    .restart local v0       #fontRate:[F
    goto :goto_0
.end method

.method public static updateFontSizeExceptionHuge()F
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, fontSize:F
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const/high16 v0, 0x424c

    .line 192
    :goto_0
    const/high16 v0, 0x424c

    .line 193
    return v0

    .line 184
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    const/high16 v0, 0x4250

    goto :goto_0

    .line 186
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    const/high16 v0, 0x4268

    goto :goto_0

    .line 189
    :cond_2
    const/high16 v0, 0x4268

    goto :goto_0
.end method

.method public static updateFontSizeNormal(I)F
    .locals 2
    .parameter "nType"

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, fontSize:F
    packed-switch p0, :pswitch_data_0

    .line 269
    :goto_0
    return v0

    .line 200
    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const/high16 v0, 0x4198

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    const/high16 v0, 0x41b0

    goto :goto_0

    .line 205
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    const/high16 v0, 0x41a0

    goto :goto_0

    .line 208
    :cond_2
    const/high16 v0, 0x4190

    .line 211
    goto :goto_0

    .line 213
    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    const/high16 v0, 0x4198

    goto :goto_0

    .line 216
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 217
    const/high16 v0, 0x41b0

    goto :goto_0

    .line 218
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    const/high16 v0, 0x41a8

    goto :goto_0

    .line 221
    :cond_5
    const/high16 v0, 0x4198

    .line 224
    goto :goto_0

    .line 226
    :pswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 227
    const/high16 v0, 0x4198

    goto :goto_0

    .line 229
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 230
    const/high16 v0, 0x41b0

    goto :goto_0

    .line 231
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 232
    const/high16 v0, 0x41a8

    goto :goto_0

    .line 234
    :cond_8
    const/high16 v0, 0x4198

    .line 237
    goto :goto_0

    .line 239
    :pswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 240
    const/high16 v0, 0x4198

    goto :goto_0

    .line 242
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 243
    const/high16 v0, 0x41b0

    goto :goto_0

    .line 244
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 245
    const/high16 v0, 0x41a0

    goto :goto_0

    .line 246
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->useRecipientsFontSizeCustomizeForKor()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 247
    const/high16 v0, 0x4190

    goto :goto_0

    .line 249
    :cond_c
    const/high16 v0, 0x4198

    .line 252
    goto/16 :goto_0

    .line 254
    :pswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 255
    const/high16 v0, 0x4198

    goto/16 :goto_0

    .line 257
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 258
    const/high16 v0, 0x4188

    goto/16 :goto_0

    .line 259
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 260
    const/high16 v0, 0x41a8

    goto/16 :goto_0

    .line 262
    :cond_f
    const/high16 v0, 0x4198

    .line 265
    goto/16 :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
