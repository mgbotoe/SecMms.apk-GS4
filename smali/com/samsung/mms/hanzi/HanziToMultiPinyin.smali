.class public Lcom/samsung/mms/hanzi/HanziToMultiPinyin;
.super Ljava/lang/Object;
.source "HanziToMultiPinyin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HanziToMultiPinyin"

.field private static multiPinyinMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/samsung/mms/hanzi/HanziToMultiPinyin;


# instance fields
.field private final INITIAL_CAPACITY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->multiPinyinMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v1, p0, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->INITIAL_CAPACITY:I

    .line 49
    sget-object v0, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->multiPinyinMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->multiPinyinMap:Ljava/util/LinkedHashMap;

    .line 52
    :cond_0
    return-void
.end method

.method private static getCharacterGbk(C)Ljava/lang/String;
    .locals 8
    .parameter "character"

    .prologue
    .line 2673
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "GBK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2674
    .local v0, bytes:[B
    if-nez v0, :cond_0

    .line 2675
    const-string v4, ""

    .line 2695
    .end local v0           #bytes:[B
    :goto_0
    return-object v4

    .line 2677
    .restart local v0       #bytes:[B
    :cond_0
    array-length v1, v0

    .line 2678
    .local v1, bytesLen:I
    packed-switch v1, :pswitch_data_0

    .line 2689
    const-string v4, ""

    goto :goto_0

    .line 2680
    :pswitch_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2693
    .end local v0           #bytes:[B
    .end local v1           #bytesLen:I
    :catch_0
    move-exception v2

    .line 2694
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 2695
    const-string v4, ""

    goto :goto_0

    .line 2683
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #bytes:[B
    .restart local v1       #bytesLen:I
    :pswitch_1
    const/4 v6, 0x0

    :try_start_1
    aget-byte v6, v0, v6

    add-int/lit16 v3, v6, 0x100

    .line 2684
    .local v3, highByte:I
    const/4 v6, 0x1

    aget-byte v6, v0, v6

    add-int/lit16 v5, v6, 0x100

    .line 2685
    .local v5, lowByte:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 2686
    .local v4, keyGbk:Ljava/lang/String;
    goto :goto_0

    .line 2678
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance()Lcom/samsung/mms/hanzi/HanziToMultiPinyin;
    .locals 2

    .prologue
    .line 3145
    const-class v1, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;

    monitor-enter v1

    .line 3146
    :try_start_0
    sget-object v0, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->sInstance:Lcom/samsung/mms/hanzi/HanziToMultiPinyin;

    if-nez v0, :cond_0

    .line 3147
    new-instance v0, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;

    invoke-direct {v0}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;-><init>()V

    sput-object v0, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->sInstance:Lcom/samsung/mms/hanzi/HanziToMultiPinyin;

    .line 3149
    :cond_0
    sget-object v0, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->sInstance:Lcom/samsung/mms/hanzi/HanziToMultiPinyin;

    monitor-exit v1

    return-object v0

    .line 3150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getMultiPinyinsByGBK(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "keyGbk"

    .prologue
    .line 2705
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 2706
    sget-object v0, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->multiPinyinMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 2707
    invoke-direct {p0, p1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initHashMap(Ljava/lang/String;)V

    .line 2708
    sget-object v0, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->multiPinyinMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2710
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private initHashMap(Ljava/lang/String;)V
    .locals 5
    .parameter "keyGbk"

    .prologue
    .line 2718
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 2719
    .local v3, position:I
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2720
    .local v1, highByte:Ljava/lang/String;
    const/4 v2, -0x1

    .line 2723
    .local v2, highByteInt:I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2729
    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initHashMapFragment(I)V

    .line 2730
    return-void

    .line 2724
    :catch_0
    move-exception v0

    .line 2725
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2726
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private initHashMapFragment(I)V
    .locals 0
    .parameter "highByteInt"

    .prologue
    .line 2736
    packed-switch p1, :pswitch_data_0

    .line 3088
    :goto_0
    :pswitch_0
    return-void

    .line 2738
    :pswitch_1
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap129()V

    goto :goto_0

    .line 2741
    :pswitch_2
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap130()V

    goto :goto_0

    .line 2744
    :pswitch_3
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap131()V

    goto :goto_0

    .line 2747
    :pswitch_4
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap132()V

    goto :goto_0

    .line 2750
    :pswitch_5
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap133()V

    goto :goto_0

    .line 2753
    :pswitch_6
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap134()V

    goto :goto_0

    .line 2756
    :pswitch_7
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap135()V

    goto :goto_0

    .line 2759
    :pswitch_8
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap136()V

    goto :goto_0

    .line 2762
    :pswitch_9
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap137()V

    goto :goto_0

    .line 2765
    :pswitch_a
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap138()V

    goto :goto_0

    .line 2768
    :pswitch_b
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap139()V

    goto :goto_0

    .line 2771
    :pswitch_c
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap140()V

    goto :goto_0

    .line 2774
    :pswitch_d
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap141()V

    goto :goto_0

    .line 2777
    :pswitch_e
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap142()V

    goto :goto_0

    .line 2780
    :pswitch_f
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap143()V

    goto :goto_0

    .line 2783
    :pswitch_10
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap144()V

    goto :goto_0

    .line 2786
    :pswitch_11
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap145()V

    goto :goto_0

    .line 2789
    :pswitch_12
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap146()V

    goto :goto_0

    .line 2792
    :pswitch_13
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap147()V

    goto :goto_0

    .line 2795
    :pswitch_14
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap148()V

    goto :goto_0

    .line 2798
    :pswitch_15
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap149()V

    goto :goto_0

    .line 2801
    :pswitch_16
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap150()V

    goto :goto_0

    .line 2804
    :pswitch_17
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap151()V

    goto :goto_0

    .line 2807
    :pswitch_18
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap152()V

    goto :goto_0

    .line 2810
    :pswitch_19
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap153()V

    goto :goto_0

    .line 2813
    :pswitch_1a
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap154()V

    goto :goto_0

    .line 2816
    :pswitch_1b
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap155()V

    goto :goto_0

    .line 2819
    :pswitch_1c
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap156()V

    goto :goto_0

    .line 2822
    :pswitch_1d
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap157()V

    goto :goto_0

    .line 2825
    :pswitch_1e
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap158()V

    goto :goto_0

    .line 2828
    :pswitch_1f
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap159()V

    goto :goto_0

    .line 2831
    :pswitch_20
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap160()V

    goto :goto_0

    .line 2834
    :pswitch_21
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap170()V

    goto/16 :goto_0

    .line 2837
    :pswitch_22
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap171()V

    goto/16 :goto_0

    .line 2840
    :pswitch_23
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap172()V

    goto/16 :goto_0

    .line 2843
    :pswitch_24
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap173()V

    goto/16 :goto_0

    .line 2846
    :pswitch_25
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap174()V

    goto/16 :goto_0

    .line 2849
    :pswitch_26
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap175()V

    goto/16 :goto_0

    .line 2852
    :pswitch_27
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap176()V

    goto/16 :goto_0

    .line 2855
    :pswitch_28
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap177()V

    goto/16 :goto_0

    .line 2858
    :pswitch_29
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap178()V

    goto/16 :goto_0

    .line 2861
    :pswitch_2a
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap179()V

    goto/16 :goto_0

    .line 2864
    :pswitch_2b
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap180()V

    goto/16 :goto_0

    .line 2867
    :pswitch_2c
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap181()V

    goto/16 :goto_0

    .line 2870
    :pswitch_2d
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap182()V

    goto/16 :goto_0

    .line 2873
    :pswitch_2e
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap183()V

    goto/16 :goto_0

    .line 2876
    :pswitch_2f
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap184()V

    goto/16 :goto_0

    .line 2879
    :pswitch_30
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap185()V

    goto/16 :goto_0

    .line 2882
    :pswitch_31
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap186()V

    goto/16 :goto_0

    .line 2885
    :pswitch_32
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap187()V

    goto/16 :goto_0

    .line 2888
    :pswitch_33
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap188()V

    goto/16 :goto_0

    .line 2891
    :pswitch_34
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap189()V

    goto/16 :goto_0

    .line 2894
    :pswitch_35
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap190()V

    goto/16 :goto_0

    .line 2897
    :pswitch_36
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap191()V

    goto/16 :goto_0

    .line 2900
    :pswitch_37
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap192()V

    goto/16 :goto_0

    .line 2903
    :pswitch_38
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap193()V

    goto/16 :goto_0

    .line 2906
    :pswitch_39
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap194()V

    goto/16 :goto_0

    .line 2909
    :pswitch_3a
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap195()V

    goto/16 :goto_0

    .line 2912
    :pswitch_3b
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap196()V

    goto/16 :goto_0

    .line 2915
    :pswitch_3c
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap197()V

    goto/16 :goto_0

    .line 2918
    :pswitch_3d
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap198()V

    goto/16 :goto_0

    .line 2921
    :pswitch_3e
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap199()V

    goto/16 :goto_0

    .line 2924
    :pswitch_3f
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap200()V

    goto/16 :goto_0

    .line 2927
    :pswitch_40
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap201()V

    goto/16 :goto_0

    .line 2930
    :pswitch_41
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap202()V

    goto/16 :goto_0

    .line 2933
    :pswitch_42
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap203()V

    goto/16 :goto_0

    .line 2936
    :pswitch_43
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap204()V

    goto/16 :goto_0

    .line 2939
    :pswitch_44
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap205()V

    goto/16 :goto_0

    .line 2942
    :pswitch_45
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap206()V

    goto/16 :goto_0

    .line 2945
    :pswitch_46
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap207()V

    goto/16 :goto_0

    .line 2948
    :pswitch_47
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap208()V

    goto/16 :goto_0

    .line 2951
    :pswitch_48
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap209()V

    goto/16 :goto_0

    .line 2954
    :pswitch_49
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap210()V

    goto/16 :goto_0

    .line 2957
    :pswitch_4a
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap211()V

    goto/16 :goto_0

    .line 2960
    :pswitch_4b
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap212()V

    goto/16 :goto_0

    .line 2963
    :pswitch_4c
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap213()V

    goto/16 :goto_0

    .line 2966
    :pswitch_4d
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap214()V

    goto/16 :goto_0

    .line 2969
    :pswitch_4e
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap215()V

    goto/16 :goto_0

    .line 2972
    :pswitch_4f
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap216()V

    goto/16 :goto_0

    .line 2975
    :pswitch_50
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap217()V

    goto/16 :goto_0

    .line 2978
    :pswitch_51
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap218()V

    goto/16 :goto_0

    .line 2981
    :pswitch_52
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap219()V

    goto/16 :goto_0

    .line 2984
    :pswitch_53
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap220()V

    goto/16 :goto_0

    .line 2987
    :pswitch_54
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap221()V

    goto/16 :goto_0

    .line 2990
    :pswitch_55
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap222()V

    goto/16 :goto_0

    .line 2993
    :pswitch_56
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap223()V

    goto/16 :goto_0

    .line 2996
    :pswitch_57
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap224()V

    goto/16 :goto_0

    .line 2999
    :pswitch_58
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap225()V

    goto/16 :goto_0

    .line 3002
    :pswitch_59
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap226()V

    goto/16 :goto_0

    .line 3005
    :pswitch_5a
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap227()V

    goto/16 :goto_0

    .line 3008
    :pswitch_5b
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap228()V

    goto/16 :goto_0

    .line 3011
    :pswitch_5c
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap229()V

    goto/16 :goto_0

    .line 3014
    :pswitch_5d
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap230()V

    goto/16 :goto_0

    .line 3017
    :pswitch_5e
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap231()V

    goto/16 :goto_0

    .line 3020
    :pswitch_5f
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap232()V

    goto/16 :goto_0

    .line 3023
    :pswitch_60
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap233()V

    goto/16 :goto_0

    .line 3026
    :pswitch_61
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap234()V

    goto/16 :goto_0

    .line 3029
    :pswitch_62
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap235()V

    goto/16 :goto_0

    .line 3032
    :pswitch_63
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap236()V

    goto/16 :goto_0

    .line 3035
    :pswitch_64
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap237()V

    goto/16 :goto_0

    .line 3038
    :pswitch_65
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap238()V

    goto/16 :goto_0

    .line 3041
    :pswitch_66
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap239()V

    goto/16 :goto_0

    .line 3044
    :pswitch_67
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap240()V

    goto/16 :goto_0

    .line 3047
    :pswitch_68
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap241()V

    goto/16 :goto_0

    .line 3050
    :pswitch_69
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap242()V

    goto/16 :goto_0

    .line 3053
    :pswitch_6a
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap243()V

    goto/16 :goto_0

    .line 3056
    :pswitch_6b
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap244()V

    goto/16 :goto_0

    .line 3059
    :pswitch_6c
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap245()V

    goto/16 :goto_0

    .line 3062
    :pswitch_6d
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap246()V

    goto/16 :goto_0

    .line 3065
    :pswitch_6e
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap247()V

    goto/16 :goto_0

    .line 3068
    :pswitch_6f
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap248()V

    goto/16 :goto_0

    .line 3071
    :pswitch_70
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap249()V

    goto/16 :goto_0

    .line 3074
    :pswitch_71
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap250()V

    goto/16 :goto_0

    .line 3077
    :pswitch_72
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap251()V

    goto/16 :goto_0

    .line 3080
    :pswitch_73
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap252()V

    goto/16 :goto_0

    .line 3083
    :pswitch_74
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->initMap253()V

    goto/16 :goto_0

    .line 2736
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
    .end packed-switch
.end method

.method private static initMap129()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "129-64"

    const-string v1, "kao,qiao,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "129-79"

    const-string v1, "guan,kuang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "129-85"

    const-string v1, "yi,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "129-92"

    const-string v1, "cheng,sheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "129-118"

    const-string v1, "zhi,luan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "129-133"

    const-string v1, "qi,zhai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "129-144"

    const-string v1, "wei,men"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "129-151"

    const-string v1, "jin,san"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "129-154"

    const-string v1, "tuo,cha,duo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "129-156"

    const-string v1, "gan,han"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "129-159"

    const-string v1, "chang,zhang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "129-163"

    const-string v1, "chao,miao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "129-166"

    const-string v1, "yao,fo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "129-188"

    const-string v1, "che,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "129-193"

    const-string v1, "xian,xuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "129-204"

    const-string v1, "yi,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "129-206"

    const-string v1, "han,gan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "129-212"

    const-string v1, "zhao,shao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "129-215"

    const-string v1, "zhan,dian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "129-221"

    const-string v1, "hui,huai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private static initMap130()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "130-68"

    const-string v1, "cheng,ting"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "130-74"

    const-string v1, "shu,dou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "130-77"

    const-string v1, "tuo,tui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "130-101"

    const-string v1, "che,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "130-109"

    const-string v1, "chu,ti"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "130-115"

    const-string v1, "hu,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "130-121"

    const-string v1, "cui,zu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "130-122"

    const-string v1, "liang,lia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "130-138"

    const-string v1, "liang,jing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "130-160"

    const-string v1, "cheng,chen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "130-163"

    const-string v1, "zhong,tong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "130-171"

    const-string v1, "tang,dang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "130-184"

    const-string v1, "chou,qiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "130-198"

    const-string v1, "cai,si"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "130-200"

    const-string v1, "ce,ze,zhai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "130-204"

    const-string v1, "zan,za,zBn"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "130-208"

    const-string v1, "zhi,si"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "130-215"

    const-string v1, "jiang,gou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "130-223"

    const-string v1, "qian,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "130-224"

    const-string v1, "que,jue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "130-225"

    const-string v1, "cang,chen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "130-232"

    const-string v1, "ta,tan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "130-243"

    const-string v1, "zao,cao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "130-247"

    const-string v1, "chuan,zhuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "130-250"

    const-string v1, "qi,cou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private static initMap131()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "131-69"

    const-string v1, "lv,lou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "131-71"

    const-string v1, "piao,biao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "131-92"

    const-string v1, "cheng,deng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "131-93"

    const-string v1, "zhan,zhuan,chan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "131-99"

    const-string v1, "tie,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "131-101"

    const-string v1, "jiao,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "131-104"

    const-string v1, "yu,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "131-105"

    const-string v1, "e,wu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "131-114"

    const-string v1, "jia,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "131-123"

    const-string v1, "chan,tan,shan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "131-140"

    const-string v1, "ni,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "131-168"

    const-string v1, "rang,xiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "131-170"

    const-string v1, "hui,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "131-181"

    const-string v1, "dui,rui,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "131-182"

    const-string v1, "dui,rui,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "131-184"

    const-string v1, "chang,zhang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "131-186"

    const-string v1, "er,ni"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "131-202"

    const-string v1, "yu,shu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "131-220"

    const-string v1, "yin,you"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "131-244"

    const-string v1, "jing,cheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private static initMap132()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "132-74"

    const-string v1, "yi kB,yi kB no bo li,tB ko"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "132-119"

    const-string v1, "kei,ke"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "132-120"

    const-string v1, "cha,sha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "132-131"

    const-string v1, "bao,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "132-134"

    const-string v1, "du,zhuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "132-140"

    const-string v1, "zhi,duan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "132-145"

    const-string v1, "da,zha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "132-150"

    const-string v1, "tuan,zhuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "132-151"

    const-string v1, "lu,jiu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "132-164"

    const-string v1, "jiao,chao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "132-179"

    const-string v1, "jin,jing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "132-181"

    const-string v1, "xie,lie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "132-197"

    const-string v1, "jin,jing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "132-216"

    const-string v1, "weng,yang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "132-224"

    const-string v1, "jiao,chao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "132-231"

    const-string v1, "tong,dong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "132-240"

    const-string v1, "rang,xiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "132-252"

    const-string v1, "tao,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method private static initMap133()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "133-77"

    const-string v1, "zang,cang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "133-84"

    const-string v1, "kui,gui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "133-92"

    const-string v1, "ke,qia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "133-94"

    const-string v1, "qu,ou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "133-105"

    const-string v1, "shuai,lv"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "133-106"

    const-string v1, "guan,kuang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "133-110"

    const-string v1, "yang,ang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "133-122"

    const-string v1, "zhe,zhai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "133-123"

    const-string v1, "han,an"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "133-126"

    const-string v1, "zha,zhai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "133-132"

    const-string v1, "zhi,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "133-149"

    const-string v1, "qian,lan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "133-154"

    const-string v1, "gong,hong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "133-155"

    const-string v1, "lin,miao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "133-156"

    const-string v1, "rou,qiu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "133-162"

    const-string v1, "can,shen,cen,san"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "133-163"

    const-string v1, "can,shen,cen,san"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "133-164"

    const-string v1, "can,shen,cen,san"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "133-165"

    const-string v1, "ai,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "133-172"

    const-string v1, "zhuo,yi,li,jue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "133-176"

    const-string v1, "wei,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "133-186"

    const-string v1, "xuan,song"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "133-188"

    const-string v1, "dou,cun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "133-195"

    const-string v1, "jie,ge"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "133-197"

    const-string v1, "e,hua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "133-200"

    const-string v1, "na,ne"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "133-201"

    const-string v1, "xue,chuo,jue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "133-202"

    const-string v1, "dou,ru"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "133-203"

    const-string v1, "hou,hong,ou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "133-215"

    const-string v1, "tun,tian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "133-216"

    const-string v1, "hua,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "133-221"

    const-string v1, "wen,min"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "133-222"

    const-string v1, "mou,m"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "133-227"

    const-string v1, "tie,che"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "133-230"

    const-string v1, "qi,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "133-232"

    const-string v1, "zi,ci"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "133-233"

    const-string v1, "xu,hou,gou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "133-235"

    const-string v1, "xiao,hao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "133-236"

    const-string v1, "da,dan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "133-238"

    const-string v1, "xian,gan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private static initMap134()V
    .locals 2

    .prologue
    .line 197
    const-string v0, "134-65"

    const-string v1, "die,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "134-67"

    const-string v1, "shu,xun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "134-70"

    const-string v1, "huai,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "134-72"

    const-string v1, "e,an"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "134-74"

    const-string v1, "wai,he,wo,wa,gua,guo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "134-79"

    const-string v1, "die,di"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v0, "134-84"

    const-string v1, "yuan,yun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v0, "134-92"

    const-string v1, "po,ba,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "134-93"

    const-string v1, "liang,lang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "134-96"

    const-string v1, "lie,lv"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "134-100"

    const-string v1, "chuo,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "134-104"

    const-string v1, "bei,bai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v0, "134-107"

    const-string v1, "jia,qian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "134-109"

    const-string v1, "dan,xian,yan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v0, "134-121"

    const-string v1, "gong,hong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "134-126"

    const-string v1, "sha,shB"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "134-129"

    const-string v1, "wo,wei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "134-130"

    const-string v1, "jin,yin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "134-132"

    const-string v1, "er,wa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "134-135"

    const-string v1, "jie,ze,zuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v0, "134-143"

    const-string v1, "zhuo,zhao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v0, "134-148"

    const-string v1, "zhun,tun,xiang,dui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v0, "134-151"

    const-string v1, "sha,jie,die,ti"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, "134-156"

    const-string v1, "yue,wa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v0, "134-157"

    const-string v1, "zi,ci"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v0, "134-158"

    const-string v1, "bi,tu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "134-166"

    const-string v1, "qing,ying"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "134-168"

    const-string v1, "ze,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "134-174"

    const-string v1, "tan,chan,tuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "134-184"

    const-string v1, "huo,guo,xu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "134-185"

    const-string v1, "zan,za,zBn"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "134-191"

    const-string v1, "huan,yuan,xuan,he"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "134-193"

    const-string v1, "zhong,chuang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "134-198"

    const-string v1, "duo,zha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "134-204"

    const-string v1, "qiao,jiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "134-206"

    const-string v1, "dan,shan,chan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "134-207"

    const-string v1, "pen,ben"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "134-208"

    const-string v1, "can,sun,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "134-215"

    const-string v1, "zao,qiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "134-219"

    const-string v1, "he,xiao,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "134-223"

    const-string v1, "gong,hong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "134-225"

    const-string v1, "ma,mB"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "134-229"

    const-string v1, "wa,gu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "134-231"

    const-string v1, "beng,pang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "134-233"

    const-string v1, "xian,qian,qie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "134-247"

    const-string v1, "zui,sui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, "134-248"

    const-string v1, "zhe,zhu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "134-253"

    const-string v1, "jiao,dao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v0, "134-254"

    const-string v1, "kai,ge"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private static initMap135()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "135-65"

    const-string v1, "shan,can"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "135-69"

    const-string v1, "xiao,jiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v0, "135-78"

    const-string v1, "de,dei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "135-96"

    const-string v1, "fu,?"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "135-98"

    const-string v1, "chu,xu,shou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "135-99"

    const-string v1, "tan,chan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v0, "135-100"

    const-string v1, "dan,tan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "135-104"

    const-string v1, "fan,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v0, "135-109"

    const-string v1, "cu,za,he"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "135-112"

    const-string v1, "tun,kuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v0, "135-117"

    const-string v1, "xu,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v0, "135-128"

    const-string v1, "zhou,zhuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "135-130"

    const-string v1, "yue,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v0, "135-132"

    const-string v1, "jiao,qiao,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "135-140"

    const-string v1, "xin,hen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "135-151"

    const-string v1, "huo,o"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v0, "135-152"

    const-string v1, "he,xia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v0, "135-155"

    const-string v1, "xiu,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v0, "135-156"

    const-string v1, "zhou,chou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v0, "135-157"

    const-string v1, "ji,jie,zhai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, "135-165"

    const-string v1, "bo,pao,bao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v0, "135-170"

    const-string v1, "mei,me,mo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v0, "135-175"

    const-string v1, "xie,hai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "135-212"

    const-string v1, "za,zan,can"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "135-217"

    const-string v1, "yan,za,nie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v0, "135-236"

    const-string v1, "wei,tong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v0, "135-249"

    const-string v1, "chuan,chui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "135-252"

    const-string v1, "quan,juan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method private static initMap136()V
    .locals 2

    .prologue
    .line 280
    const-string v0, "136-83"

    const-string v1, "yu,zhun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "136-84"

    const-string v1, "qian,su"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "136-98"

    const-string v1, "mei,fen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "136-99"

    const-string v1, "rong,keng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "136-100"

    const-string v1, "tun,dun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, "136-101"

    const-string v1, "ben,fen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v0, "136-104"

    const-string v1, "di,lan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "136-109"

    const-string v1, "pan,ban"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "136-161"

    const-string v1, "pou,fu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v0, "136-169"

    const-string v1, "beng,feng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v0, "136-170"

    const-string v1, "di,fang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "136-171"

    const-string v1, "que,jue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "136-174"

    const-string v1, "xia,jia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v0, "136-178"

    const-string v1, "qin,jin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "136-188"

    const-string v1, "sui,su"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v0, "136-189"

    const-string v1, "qing,zheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "136-193"

    const-string v1, "zheng,cheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v0, "136-195"

    const-string v1, "chong,shang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "136-199"

    const-string v1, "chu,tou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "136-201"

    const-string v1, "xian,kan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v0, "136-203"

    const-string v1, "yi,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "136-233"

    const-string v1, "mao,mou,wu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v0, "136-236"

    const-string v1, "e,ai,ye"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method private static initMap137()V
    .locals 2

    .prologue
    .line 306
    const-string v0, "137-112"

    const-string v1, "ou,qiu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "137-113"

    const-string v1, "qian,zan,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "137-116"

    const-string v1, "zhuan,tuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v0, "137-121"

    const-string v1, "zhi,di"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v0, "137-126"

    const-string v1, "zhi,zhuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "137-145"

    const-string v1, "kuai,tui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "137-146"

    const-string v1, "tuan,dong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "137-148"

    const-string v1, "qiao,que"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v0, "137-150"

    const-string v1, "zun,dun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "137-153"

    const-string v1, "duo,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "137-167"

    const-string v1, "qiao,ao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "137-169"

    const-string v1, "yi,tu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "137-174"

    const-string v1, "xue,bo,jue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "137-183"

    const-string v1, "xian,lan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "137-224"

    const-string v1, "gu,ying"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v0, "137-225"

    const-string v1, "jiang,xiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v0, "137-226"

    const-string v1, "feng,pang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v0, "137-233"

    const-string v1, "xiong,xuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v0, "137-237"

    const-string v1, "yuan,wan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v0, "137-238"

    const-string v1, "mao,wan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v0, "137-250"

    const-string v1, "tao,ben"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v0, "137-252"

    const-string v1, "yan,tao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private static initMap138()V
    .locals 2

    .prologue
    .line 331
    const-string v0, "138-65"

    const-string v1, "jia,ga,xia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "138-68"

    const-string v1, "di,ti"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "138-73"

    const-string v1, "quan,juan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "138-76"

    const-string v1, "she,chi,zha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "138-81"

    const-string v1, "xun,zhui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v0, "138-85"

    const-string v1, "po,ha,tai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "138-87"

    const-string v1, "ao,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v0, "138-98"

    const-string v1, "duo,che"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v0, "138-99"

    const-string v1, "ding,tian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v0, "138-109"

    const-string v1, "fu,you"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v0, "138-111"

    const-string v1, "hai,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v0, "138-115"

    const-string v1, "keng,hang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v0, "138-118"

    const-string v1, "fou,pei,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v0, "138-120"

    const-string v1, "yue,jue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v0, "138-123"

    const-string v1, "na,nan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v0, "138-128"

    const-string v1, "wan,yuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v0, "138-133"

    const-string v1, "ni,nai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v0, "138-136"

    const-string v1, "xian,xuan,xu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v0, "138-137"

    const-string v1, "zhi,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v0, "138-163"

    const-string v1, "hua,huo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v0, "138-165"

    const-string v1, "gou,du"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v0, "138-174"

    const-string v1, "jun,xun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v0, "138-175"

    const-string v1, "kua,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v0, "138-183"

    const-string v1, "shen,xian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v0, "138-191"

    const-string v1, "cheng,sheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "138-195"

    const-string v1, "wu,mu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "138-197"

    const-string v1, "chuo,lai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v0, "138-203"

    const-string v1, "pou,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v0, "138-204"

    const-string v1, "nei,sui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v0, "138-211"

    const-string v1, "wu,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v0, "138-214"

    const-string v1, "xi,ai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v0, "138-220"

    const-string v1, "zhui,shui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v0, "138-226"

    const-string v1, "ai,e"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v0, "138-231"

    const-string v1, "pou,pei,bu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v0, "138-239"

    const-string v1, "fu,fan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v0, "138-247"

    const-string v1, "quan,juan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v0, "138-250"

    const-string v1, "qian,jin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v0, "138-254"

    const-string v1, "wan,wa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method private static initMap139()V
    .locals 2

    .prologue
    .line 372
    const-string v0, "139-66"

    const-string v1, "zhou,chou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v0, "139-67"

    const-string v1, "chuo,nao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v0, "139-70"

    const-string v1, "an,n<e"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v0, "139-71"

    const-string v1, "hun,kun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v0, "139-78"

    const-string v1, "huB,dB tBi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v0, "139-80"

    const-string v1, "dang,yang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v0, "139-83"

    const-string v1, "ruo,chuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v0, "139-85"

    const-string v1, "tou,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v0, "139-88"

    const-string v1, "di,ti"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "139-92"

    const-string v1, "ruan,nen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v0, "139-102"

    const-string v1, "yi,pei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v0, "139-115"

    const-string v1, "tuo,duo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v0, "139-129"

    const-string v1, "tou,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v0, "139-131"

    const-string v1, "chu,zou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v0, "139-139"

    const-string v1, "ao,yun,wo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v0, "139-142"

    const-string v1, "qin,shen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v0, "139-145"

    const-string v1, "jie,suo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v0, "139-169"

    const-string v1, "han,nan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v0, "139-205"

    const-string v1, "xian,yan,jin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v0, "139-214"

    const-string v1, "huan,xuan,qiong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "139-252"

    const-string v1, "xian,qian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method private static initMap140()V
    .locals 2

    .prologue
    .line 396
    const-string v0, "140-64"

    const-string v1, "xie,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v0, "140-65"

    const-string v1, "huan,quan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v0, "140-70"

    const-string v1, "zhu,chuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v0, "140-73"

    const-string v1, "zi,ma"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v0, "140-79"

    const-string v1, "sun,xun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v0, "140-95"

    const-string v1, "tu,jia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "140-112"

    const-string v1, "bao,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v0, "140-131"

    const-string v1, "jin,qin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v0, "140-138"

    const-string v1, "ju,lou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v0, "140-156"

    const-string v1, "l<e,luo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v0, "140-161"

    const-string v1, "kei,ke"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v0, "140-165"

    const-string v1, "shu,zhu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v0, "140-168"

    const-string v1, "jie,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v0, "140-180"

    const-string v1, "long,mang,meng,pang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v0, "140-206"

    const-string v1, "ping,bing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v0, "140-209"

    const-string v1, "xie,ti"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v0, "140-217"

    const-string v1, "shu,zhu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v0, "140-219"

    const-string v1, "ni,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v0, "140-226"

    const-string v1, "hong,long"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v0, "140-229"

    const-string v1, "han,an"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method private static initMap141()V
    .locals 2

    .prologue
    .line 419
    const-string v0, "141-75"

    const-string v1, "zBi,ze mo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v0, "141-81"

    const-string v1, "ke,ba"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v0, "141-84"

    const-string v1, "fu,nie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v0, "141-108"

    const-string v1, "xie,ye"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v0, "141-140"

    const-string v1, "zu,cui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v0, "141-154"

    const-string v1, "pi,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v0, "141-164"

    const-string v1, "yang,dang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v0, "141-170"

    const-string v1, "zhi,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v0, "141-171"

    const-string v1, "shi,die"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v0, "141-174"

    const-string v1, "kan,zhan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v0, "141-182"

    const-string v1, "wu,mao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v0, "141-186"

    const-string v1, "ke,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v0, "141-201"

    const-string v1, "dang,tang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v0, "141-202"

    const-string v1, "rong,ying"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v0, "141-204"

    const-string v1, "kai,ai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v0, "141-207"

    const-string v1, "kao,qiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v0, "141-210"

    const-string v1, "qin,qian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v0, "141-222"

    const-string v1, "die,di"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v0, "141-227"

    const-string v1, "zhan,chan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v0, "141-228"

    const-string v1, "zhan,chan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v0, "141-239"

    const-string v1, "pi,pei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v0, "141-254"

    const-string v1, "jiao,qiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method private static initMap142()V
    .locals 2

    .prologue
    .line 444
    const-string v0, "142-64"

    const-string v1, "jue,gui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v0, "142-69"

    const-string v1, "zhan,shan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v0, "142-79"

    const-string v1, "xie,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v0, "142-80"

    const-string v1, "ke,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v0, "142-81"

    const-string v1, "gui,xi,juan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v0, "142-95"

    const-string v1, "li,lie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v0, "142-96"

    const-string v1, "gui,xi,juan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v0, "142-99"

    const-string v1, "ying,hong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v0, "142-121"

    const-string v1, "jing,xing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v0, "142-146"

    const-string v1, "mo,wa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v0, "142-165"

    const-string v1, "jian,san"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v0, "142-168"

    const-string v1, "sha,qie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v0, "142-169"

    const-string v1, "qi,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v0, "142-187"

    const-string v1, "shan,qiao,shen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v0, "142-206"

    const-string v1, "chou,dao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v0, "142-219"

    const-string v1, "me,mo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v0, "142-221"

    const-string v1, "dun,tun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v0, "142-223"

    const-string v1, "bai,ting"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v0, "142-237"

    const-string v1, "mang,meng,pang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v0, "142-240"

    const-string v1, "bing,ping"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v0, "142-243"

    const-string v1, "ji,cuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method private static initMap143()V
    .locals 2

    .prologue
    .line 468
    const-string v0, "143-64"

    const-string v1, "gui,wei,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v0, "143-66"

    const-string v1, "sha,xia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v0, "143-90"

    const-string v1, "qiang,se"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v0, "143-103"

    const-string v1, "po,pai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v0, "143-123"

    const-string v1, "jue,zhang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v0, "143-131"

    const-string v1, "juan,quan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v0, "143-133"

    const-string v1, "xuan,yuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v0, "143-138"

    const-string v1, "qiang,jiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v0, "143-142"

    const-string v1, "dan,tan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v0, "143-151"

    const-string v1, "dan,tan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v0, "143-153"

    const-string v1, "qiang,jiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v0, "143-176"

    const-string v1, "zhuo,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v0, "143-177"

    const-string v1, "tuo,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v0, "143-186"

    const-string v1, "wang,jia,wa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v0, "143-187"

    const-string v1, "cheng,zheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v0, "143-196"

    const-string v1, "cong,zong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v0, "143-202"

    const-string v1, "shi,ti"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v0, "143-203"

    const-string v1, "jia,xia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v0, "143-211"

    const-string v1, "ti,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v0, "143-213"

    const-string v1, "zhi,zheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v0, "143-215"

    const-string v1, "zhong,chong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v0, "143-217"

    const-string v1, "jiao,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v0, "143-223"

    const-string v1, "qu,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v0, "143-226"

    const-string v1, "ding,ting"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v0, "143-229"

    const-string v1, "gan,han"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v0, "143-230"

    const-string v1, "yi,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v0, "143-231"

    const-string v1, "shi,tai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v0, "143-232"

    const-string v1, "xi,lie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v0, "143-235"

    const-string v1, "min,wen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v0, "143-236"

    const-string v1, "min,wen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v0, "143-243"

    const-string v1, "yu,shu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v0, "143-244"

    const-string v1, "qi,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v0, "143-247"

    const-string v1, "tun,zhun,dun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v0, "143-248"

    const-string v1, "qian,qin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v0, "143-251"

    const-string v1, "kuang,wang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v0, "143-253"

    const-string v1, "kang,hang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method private static initMap144()V
    .locals 2

    .prologue
    .line 507
    const-string v0, "144-66"

    const-string v1, "min,men"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v0, "144-68"

    const-string v1, "kou,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v0, "144-70"

    const-string v1, "nao,niu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v0, "144-71"

    const-string v1, "tie,zhan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v0, "144-72"

    const-string v1, "hu,gu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v0, "144-73"

    const-string v1, "cu,ju,zu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v0, "144-74"

    const-string v1, "you,chou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v0, "144-76"

    const-string v1, "tu,die"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v0, "144-81"

    const-string v1, "you,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v0, "144-86"

    const-string v1, "xu,xue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v0, "144-87"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v0, "144-89"

    const-string v1, "xi,shu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v0, "144-102"

    const-string v1, "tiao,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v0, "144-106"

    const-string v1, "xi,qi,xu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v0, "144-107"

    const-string v1, "xiao,jiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v0, "144-109"

    const-string v1, "hu,kua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v0, "144-119"

    const-string v1, "quan,zhuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v0, "144-128"

    const-string v1, "yuan,juan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v0, "144-131"

    const-string v1, "yu,shu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v0, "144-133"

    const-string v1, "jie,ke"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v0, "144-136"

    const-string v1, "hao,jiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v0, "144-142"

    const-string v1, "man,men"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v0, "144-150"

    const-string v1, "yi,nian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v0, "144-173"

    const-string v1, "yuan,wan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v0, "144-176"

    const-string v1, "lan,lin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v0, "144-177"

    const-string v1, "yu,xu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v0, "144-179"

    const-string v1, "juan,quan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v0, "144-180"

    const-string v1, "tan,dan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v0, "144-183"

    const-string v1, "chuo,chui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v0, "144-184"

    const-string v1, "hun,men"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v0, "144-186"

    const-string v1, "e,wu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v0, "144-187"

    const-string v1, "suo,rui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v0, "144-201"

    const-string v1, "ti,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v0, "144-212"

    const-string v1, "qi,kai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v0, "144-213"

    const-string v1, "dang,shang,tang,yang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v0, "144-215"

    const-string v1, "chen,xin,dan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v0, "144-217"

    const-string v1, "ke,qia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v0, "144-223"

    const-string v1, "cong,song"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v0, "144-224"

    const-string v1, "sai,si"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v0, "144-227"

    const-string v1, "gong,hong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v0, "144-229"

    const-string v1, "su,shuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v0, "144-247"

    const-string v1, "kai,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v0, "144-248"

    const-string v1, "xi,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v0, "144-253"

    const-string v1, "cao,sao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method private static initMap145()V
    .locals 2

    .prologue
    .line 554
    const-string v0, "145-65"

    const-string v1, "xu,chu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v0, "145-69"

    const-string v1, "gong,hong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v0, "145-70"

    const-string v1, "cao,cong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v0, "145-91"

    const-string v1, "qin,jin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v0, "145-100"

    const-string v1, "di,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v0, "145-101"

    const-string v1, "zhi,zhe"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v0, "145-102"

    const-string v1, "lou,lv"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v0, "145-126"

    const-string v1, "cheng,deng,zheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v0, "145-132"

    const-string v1, "dan,da"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v0, "145-135"

    const-string v1, "dui,dun,tun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v0, "145-139"

    const-string v1, "xiao,jiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v0, "145-157"

    const-string v1, "nao,nang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v0, "145-162"

    const-string v1, "jiao,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v0, "145-164"

    const-string v1, "xuan,huan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v0, "145-168"

    const-string v1, "cao,sao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v0, "145-185"

    const-string v1, "ai,yi,ni"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v0, "145-188"

    const-string v1, "qi,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v0, "145-190"

    const-string v1, "lan,xian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v0, "145-222"

    const-string v1, "gang,zhuang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v0, "145-223"

    const-string v1, "gang,zhuang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v0, "145-239"

    const-string v1, "xi,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v0, "145-241"

    const-string v1, "xi,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v0, "145-242"

    const-string v1, "xi,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v0, "145-251"

    const-string v1, "shang,jiong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method private static initMap146()V
    .locals 2

    .prologue
    .line 581
    const-string v0, "146-65"

    const-string v1, "le,li,cai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v0, "146-66"

    const-string v1, "fan,fu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v0, "146-70"

    const-string v1, "diao,di,yue,li"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v0, "146-71"

    const-string v1, "yu,wu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v0, "146-72"

    const-string v1, "yu,wu,ku"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v0, "146-76"

    const-string v1, "tuo,chi,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v0, "146-77"

    const-string v1, "gu,xi,ge,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v0, "146-81"

    const-string v1, "xi,cha,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v0, "146-82"

    const-string v1, "qian,qin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v0, "146-85"

    const-string v1, "ba,ao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v0, "146-86"

    const-string v1, "xi,zhe"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v0, "146-88"

    const-string v1, "zhi,sun,kan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v0, "146-91"

    const-string v1, "kuang,wang,zai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v0, "146-95"

    const-string v1, "hu,gu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v0, "146-98"

    const-string v1, "dan,shen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v0, "146-102"

    const-string v1, "ne,ni,rui,na"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v0, "146-104"

    const-string v1, "pou,fu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v0, "146-106"

    const-string v1, "ao,niu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v0, "146-107"

    const-string v1, "ze,zhBi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v0, "146-110"

    const-string v1, "zhi,zhai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v0, "146-112"

    const-string v1, "bu,pu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v0, "146-113"

    const-string v1, "yao,tao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v0, "146-117"

    const-string v1, "he,qia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v0, "146-121"

    const-string v1, "pi,pei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v0, "146-126"

    const-string v1, "jia,ya"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v0, "146-142"

    const-string v1, "cun,zun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v0, "146-143"

    const-string v1, "yi,chi,hai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v0, "146-145"

    const-string v1, "ce,se,chuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v0, "146-149"

    const-string v1, "kuo,guang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v0, "146-157"

    const-string v1, "ru,na"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v0, "146-161"

    const-string v1, "die,she"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v0, "146-163"

    const-string v1, "lie ri"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v0, "146-168"

    const-string v1, "tuo,shui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v0, "146-173"

    const-string v1, "suo,sB,shB"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v0, "146-174"

    const-string v1, "keng,qian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v0, "146-178"

    const-string v1, "bang,peng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v0, "146-182"

    const-string v1, "xie,jia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v0, "146-185"

    const-string v1, "jiao,ku"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v0, "146-187"

    const-string v1, "huo,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v0, "146-188"

    const-string v1, "tu,shu,cha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v0, "146-189"

    const-string v1, "pou,fu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v0, "146-191"

    const-string v1, "shu,song,sou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v0, "146-192"

    const-string v1, "ye,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v0, "146-193"

    const-string v1, "jue,zhuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v0, "146-195"

    const-string v1, "bu,pu,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v0, "146-201"

    const-string v1, "tuo,shui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v0, "146-204"

    const-string v1, "wan,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v0, "146-209"

    const-string v1, "fu,bu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v0, "146-211"

    const-string v1, "wo,luo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v0, "146-212"

    const-string v1, "juan,quan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v0, "146-218"

    const-string v1, "ruo,wei,re"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v0, "146-220"

    const-string v1, "wo,xia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v0, "146-225"

    const-string v1, "qing,qian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v0, "146-231"

    const-string v1, "qian,wan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v0, "146-237"

    const-string v1, "ni,nie,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v0, "146-238"

    const-string v1, "huo,xu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v0, "146-239"

    const-string v1, "shan,yan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v0, "146-240"

    const-string v1, "zheng,ding"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v0, "146-244"

    const-string v1, "zou,zhou,chou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method private static initMap147()V
    .locals 2

    .prologue
    .line 643
    const-string v0, "147-64"

    const-string v1, "zheng,keng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v0, "147-65"

    const-string v1, "jiu,you"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v0, "147-70"

    const-string v1, "pi,che"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v0, "147-72"

    const-string v1, "sai,zong,cai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v0, "147-75"

    const-string v1, "zong,song"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v0, "147-78"

    const-string v1, "huang,yong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v0, "147-83"

    const-string v1, "zan,zuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v0, "147-84"

    const-string v1, "xu,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v0, "147-85"

    const-string v1, "ke,qia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v0, "147-87"

    const-string v1, "ti,di"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v0, "147-95"

    const-string v1, "chong,dong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v0, "147-98"

    const-string v1, "qian,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v0, "147-111"

    const-string v1, "chou,zou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v0, "147-114"

    const-string v1, "rong,nang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v0, "147-115"

    const-string v1, "bang,peng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v0, "147-120"

    const-string v1, "nu,nuo,nou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v0, "147-121"

    const-string v1, "la,xie,xian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v0, "147-131"

    const-string v1, "jie,zhe"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v0, "147-132"

    const-string v1, "pan,ban,po"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v0, "147-135"

    const-string v1, "hu,ku"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v0, "147-136"

    const-string v1, "zhi,nai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v0, "147-140"

    const-string v1, "qiang,cheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v0, "147-141"

    const-string v1, "tian,shen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v0, "147-144"

    const-string v1, "na,nuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v0, "147-151"

    const-string v1, "sa,sha,shai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v0, "147-152"

    const-string v1, "chan,sun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v0, "147-154"

    const-string v1, "jiu,liu,liao,jiao,nao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v0, "147-158"

    const-string v1, "feng,peng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v0, "147-159"

    const-string v1, "di,tu,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v0, "147-160"

    const-string v1, "qi,ji,cha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v0, "147-161"

    const-string v1, "sou,song"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v0, "147-169"

    const-string v1, "gai,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v0, "147-170"

    const-string v1, "hu,chu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v0, "147-175"

    const-string v1, "zhi,nai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v0, "147-176"

    const-string v1, "jiang,qiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v0, "147-179"

    const-string v1, "ao,qiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v0, "147-181"

    const-string v1, "nie,che"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v0, "147-183"

    const-string v1, "chan,can"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v0, "147-186"

    const-string v1, "se,mi,su"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v0, "147-188"

    const-string v1, "jiao,chao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v0, "147-189"

    const-string v1, "chan,xian,can,shan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v0, "147-190"

    const-string v1, "keng,qian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v0, "147-203"

    const-string v1, "zan,zen,qian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v0, "147-209"

    const-string v1, "heng,guang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v0, "147-213"

    const-string v1, "zheng,cheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v0, "147-214"

    const-string v1, "hui,wei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v0, "147-219"

    const-string v1, "dan,shan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v0, "147-223"

    const-string v1, "xiao,sou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v0, "147-227"

    const-string v1, "wei,tuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v0, "147-234"

    const-string v1, "qiao,yao,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v0, "147-235"

    const-string v1, "zhua,wo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v0, "147-241"

    const-string v1, "ze,zhai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v0, "147-247"

    const-string v1, "qing,jing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v0, "147-252"

    const-string v1, "qia,jia,ye"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method private static initMap148()V
    .locals 2

    .prologue
    .line 700
    const-string v0, "148-84"

    const-string v1, "zhi,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v0, "148-89"

    const-string v1, "lie,la"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v0, "148-94"

    const-string v1, "li,luo,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v0, "148-96"

    const-string v1, "ti,zhi,zhai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v0, "148-99"

    const-string v1, "ca,sa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v0, "148-104"

    const-string v1, "jun,pei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v0, "148-105"

    const-string v1, "li,luo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v0, "148-106"

    const-string v1, "la,lai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v0, "148-109"

    const-string v1, "lu,luo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v0, "148-115"

    const-string v1, "xian,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v0, "148-122"

    const-string v1, "she,nie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v0, "148-125"

    const-string v1, "mi,mo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v0, "148-128"

    const-string v1, "zan,cuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v0, "148-131"

    const-string v1, "li,shai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v0, "148-137"

    const-string v1, "li,luo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v0, "148-140"

    const-string v1, "qi,yi,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v0, "148-144"

    const-string v1, "gan,han"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v0, "148-150"

    const-string v1, "wu,mou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v0, "148-153"

    const-string v1, "chu,shou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v0, "148-154"

    const-string v1, "ge,guo,e"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v0, "148-159"

    const-string v1, "duo,dui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v0, "148-163"

    const-string v1, "duo,dui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v0, "148-166"

    const-string v1, "duo,que"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v0, "148-170"

    const-string v1, "qi,yi,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v0, "148-172"

    const-string v1, "xiao,xue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v0, "148-173"

    const-string v1, "duo,que"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v0, "148-177"

    const-string v1, "ai,zhu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v0, "148-178"

    const-string v1, "ai,zhu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v0, "148-181"

    const-string v1, "shu,shuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v0, "148-184"

    const-string v1, "xiong,xuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v0, "148-189"

    const-string v1, "zhuo,zhu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v0, "148-190"

    const-string v1, "yi,du"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v0, "148-193"

    const-string v1, "li,tai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v0, "148-199"

    const-string v1, "jue,jiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v0, "148-203"

    const-string v1, "yu,zhong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v0, "148-205"

    const-string v1, "wei,men"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v0, "148-211"

    const-string v1, "tou,tiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v0, "148-213"

    const-string v1, "yin,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v0, "148-226"

    const-string v1, "chan,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v0, "148-229"

    const-string v1, "liu,you"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v0, "148-232"

    const-string v1, "pi,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method private static initMap149()V
    .locals 2

    .prologue
    .line 744
    const-string v0, "149-64"

    const-string v1, "tai,ying"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v0, "149-65"

    const-string v1, "di,de"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v0, "149-72"

    const-string v1, "tun,zhun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v0, "149-105"

    const-string v1, "die,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v0, "149-118"

    const-string v1, "xu,kua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v0, "149-146"

    const-string v1, "qi,du"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v0, "149-149"

    const-string v1, "an,yan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v0, "149-164"

    const-string v1, "shu,du"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v0, "149-169"

    const-string v1, "jian,lan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v0, "149-251"

    const-string v1, "zeng,ceng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v0, "149-252"

    const-string v1, "can,qian,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v0, "149-254"

    const-string v1, "hui,kuai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method private static initMap150()V
    .locals 2

    .prologue
    .line 759
    const-string v0, "150-65"

    const-string v1, "qie,he"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v0, "150-67"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v0, "150-68"

    const-string v1, "fen,ban"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v0, "150-70"

    const-string v1, "fei,ku"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v0, "150-72"

    const-string v1, "nv,ga"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v0, "150-75"

    const-string v1, "juan,zui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v0, "150-77"

    const-string v1, "huang,mang,wang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v0, "150-83"

    const-string v1, "tong,chuang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v0, "150-88"

    const-string v1, "shu,zhu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v0, "150-93"

    const-string v1, "dao,tiao,mu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v0, "150-95"

    const-string v1, "qiu,gui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v0, "150-102"

    const-string v1, "yu,wu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v0, "150-107"

    const-string v1, "ren,er"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v0, "150-108"

    const-string v1, "tuo,zhe"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v0, "150-109"

    const-string v1, "di,duo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v0, "150-113"

    const-string v1, "gu,gai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v0, "150-115"

    const-string v1, "yi,li,duo,tuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v0, "150-121"

    const-string v1, "si,zhi,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v0, "150-122"

    const-string v1, "yuan,wan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v0, "150-123"

    const-string v1, "fei,bei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string v0, "150-128"

    const-string v1, "shu,dui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v0, "150-131"

    const-string v1, "niu,chou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v0, "150-134"

    const-string v1, "wo,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v0, "150-138"

    const-string v1, "pi,mi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v0, "150-144"

    const-string v1, "hu,di"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v0, "150-154"

    const-string v1, "di,duo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v0, "150-156"

    const-string v1, "song,mB ti su"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v0, "150-158"

    const-string v1, "xian,zhen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v0, "150-159"

    const-string v1, "si,tai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v0, "150-162"

    const-string v1, "bao,fu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v0, "150-164"

    const-string v1, "yi,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v0, "150-170"

    const-string v1, "yi,duo,li"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v0, "150-171"

    const-string v1, "ni,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v0, "150-174"

    const-string v1, "pan,ban"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v0, "150-179"

    const-string v1, "yang,ying"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v0, "150-187"

    const-string v1, "zhi,die"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v0, "150-188"

    const-string v1, "zha,zu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string v0, "150-191"

    const-string v1, "bu,pu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v0, "150-194"

    const-string v1, "ba,fu,pei,bo,bie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v0, "150-195"

    const-string v1, "duo,zuo,wu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v0, "150-196"

    const-string v1, "bi,bie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v0, "150-200"

    const-string v1, "bei,pei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v0, "150-201"

    const-string v1, "shi,fei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v0, "150-203"

    const-string v1, "cha,zha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v0, "150-214"

    const-string v1, "qi,qie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string v0, "150-222"

    const-string v1, "ben,bing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v0, "150-229"

    const-string v1, "yi,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v0, "150-231"

    const-string v1, "jian,zun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v0, "150-235"

    const-string v1, "you,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string v0, "150-241"

    const-string v1, "zhi,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v0, "150-245"

    const-string v1, "yi,ti"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v0, "150-252"

    const-string v1, "yu,mou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string v0, "150-253"

    const-string v1, "za,zan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v0, "150-254"

    const-string v1, "kB sei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method private static initMap151()V
    .locals 2

    .prologue
    .line 816
    const-string v0, "151-70"

    const-string v1, "chen,zhen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v0, "151-72"

    const-string v1, "ting,ying"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v0, "151-76"

    const-string v1, "ben,fan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v0, "151-86"

    const-string v1, "su,yin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v0, "151-93"

    const-string v1, "xuan,juan,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v0, "151-94"

    const-string v1, "tu,cha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v0, "151-96"

    const-string v1, "ao,you"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v0, "151-101"

    const-string v1, "ren,er"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v0, "151-116"

    const-string v1, "si,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v0, "151-123"

    const-string v1, "chan,yan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v0, "151-128"

    const-string v1, "bin,bing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v0, "151-131"

    const-string v1, "chou,tao,dao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v0, "151-140"

    const-string v1, "cong,song"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v0, "151-145"

    const-string v1, "de,zhe"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v0, "151-147"

    const-string v1, "pai,bei,pei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v0, "151-148"

    const-string v1, "bang,pou,bei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v0, "151-152"

    const-string v1, "li,lie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v0, "151-168"

    const-string v1, "quan,juan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v0, "151-170"

    const-string v1, "ren,shen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v0, "151-173"

    const-string v1, "fu,su"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v0, "151-175"

    const-string v1, "zou,sou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v0, "151-184"

    const-string v1, "jie,qie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v0, "151-185"

    const-string v1, "chou,zhou,diao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v0, "151-188"

    const-string v1, "cheng,sheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v0, "151-189"

    const-string v1, "zu,cui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v0, "151-190"

    const-string v1, "qiang,kong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string v0, "151-209"

    const-string v1, "quan,juan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string v0, "151-210"

    const-string v1, "mi eng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v0, "151-217"

    const-string v1, "duo,chuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string v0, "151-219"

    const-string v1, "wei,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v0, "151-223"

    const-string v1, "jian,han"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v0, "151-226"

    const-string v1, "yan,ya"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v0, "151-235"

    const-string v1, "guo,kua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v0, "151-249"

    const-string v1, "ji,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v0, "151-252"

    const-string v1, "ku,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method private static initMap152()V
    .locals 2

    .prologue
    .line 854
    const-string v0, "152-66"

    const-string v1, "song,cong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v0, "152-67"

    const-string v1, "xuan,yuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v0, "152-68"

    const-string v1, "yang,ying"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v0, "152-71"

    const-string v1, "die,ye"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v0, "152-74"

    const-string v1, "shun,dun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v0, "152-78"

    const-string v1, "di,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v0, "152-83"

    const-string v1, "le,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v0, "152-88"

    const-string v1, "wen,yun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v0, "152-91"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v0, "152-94"

    const-string v1, "zhan,nian,zhen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string v0, "152-95"

    const-string v1, "fu,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v0, "152-99"

    const-string v1, "jian,jin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v0, "152-102"

    const-string v1, "sha,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const-string v0, "152-141"

    const-string v1, "qian,lian,xian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const-string v0, "152-149"

    const-string v1, "dian,zhen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const-string v0, "152-155"

    const-string v1, "xi,die"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v0, "152-156"

    const-string v1, "ji,gui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v0, "152-159"

    const-string v1, "rong,yong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v0, "152-164"

    const-string v1, "tuan,shuan,quan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string v0, "152-167"

    const-string v1, "cui,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const-string v0, "152-169"

    const-string v1, "you,chao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v0, "152-180"

    const-string v1, "man,wan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v0, "152-183"

    const-string v1, "le,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string v0, "152-186"

    const-string v1, "cong,zong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v0, "152-187"

    const-string v1, "li,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const-string v0, "152-200"

    const-string v1, "chao,jiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v0, "152-205"

    const-string v1, "jiu,liao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v0, "152-210"

    const-string v1, "niao,mu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v0, "152-215"

    const-string v1, "sha,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v0, "152-236"

    const-string v1, "fa,fei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v0, "152-239"

    const-string v1, "rao,nao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v0, "152-246"

    const-string v1, "zhan,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v0, "152-250"

    const-string v1, "tui,dun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v0, "152-252"

    const-string v1, "tang,cheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v0, "152-254"

    const-string v1, "su,qiu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method private static initMap153()V
    .locals 2

    .prologue
    .line 892
    const-string v0, "153-65"

    const-string v1, "tan,dian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const-string v0, "153-72"

    const-string v1, "tong,chuang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const-string v0, "153-73"

    const-string v1, "zeng,ceng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v0, "153-74"

    const-string v1, "fen,fei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v0, "153-76"

    const-string v1, "ran,yan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const-string v0, "153-91"

    const-string v1, "cu,chu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v0, "153-93"

    const-string v1, "shu,qiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v0, "153-113"

    const-string v1, "ping,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string v0, "153-117"

    const-string v1, "gui,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v0, "153-121"

    const-string v1, "zhai,shi,tu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v0, "153-132"

    const-string v1, "chou,tao,dao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v0, "153-137"

    const-string v1, "bin,bing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string v0, "153-140"

    const-string v1, "qian,lian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string v0, "153-141"

    const-string v1, "ni,mi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string v0, "153-145"

    const-string v1, "jian,kan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v0, "153-147"

    const-string v1, "nou,ruan,ru"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string v0, "153-164"

    const-string v1, "huang,guo,gu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-string v0, "153-172"

    const-string v1, "lv,chu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v0, "153-173"

    const-string v1, "mie,mei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string v0, "153-181"

    const-string v1, "li,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v0, "153-183"

    const-string v1, "zhuo,zhu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v0, "153-195"

    const-string v1, "jue,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v0, "153-198"

    const-string v1, "huai,gui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v0, "153-202"

    const-string v1, "la,lai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v0, "153-217"

    const-string v1, "chan,zhan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v0, "153-222"

    const-string v1, "wei,zui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v0, "153-246"

    const-string v1, "yu,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const-string v0, "153-247"

    const-string v1, "qian,xian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-string v0, "153-250"

    const-string v1, "chu,qu,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const-string v0, "153-252"

    const-string v1, "ke,ai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-string v0, "153-253"

    const-string v1, "yi,yin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    return-void
.end method

.method private static initMap154()V
    .locals 2

    .prologue
    .line 926
    const-string v0, "154-64"

    const-string v1, "xi,kai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string v0, "154-70"

    const-string v1, "shuo,sou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string v0, "154-71"

    const-string v1, "ei,ai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v0, "154-72"

    const-string v1, "xu,chua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v0, "154-73"

    const-string v1, "chi,chuai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v0, "154-75"

    const-string v1, "kan,qian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v0, "154-77"

    const-string v1, "kan,ke"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v0, "154-80"

    const-string v1, "yan,yin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string v0, "154-86"

    const-string v1, "jin,qun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const-string v0, "154-97"

    const-string v1, "lian,han"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string v0, "154-108"

    const-string v1, "zhi,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v0, "154-111"

    const-string v1, "se,sha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string v0, "154-122"

    const-string v1, "mo,wen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v0, "154-132"

    const-string v1, "qing,jing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v0, "154-134"

    const-string v1, "fou,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v0, "154-135"

    const-string v1, "ye,yan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    const-string v0, "154-137"

    const-string v1, "hun,mei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v0, "154-149"

    const-string v1, "kui,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string v0, "154-160"

    const-string v1, "qing,keng,sheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string v0, "154-163"

    const-string v1, "ke,qiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const-string v0, "154-164"

    const-string v1, "ke,qiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const-string v0, "154-165"

    const-string v1, "xiao,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string v0, "154-175"

    const-string v1, "guan,wan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const-string v0, "154-195"

    const-string v1, "dou,nuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const-string v0, "154-203"

    const-string v1, "sai,sui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const-string v0, "154-222"

    const-string v1, "yang,ri"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const-string v0, "154-233"

    const-string v1, "zheng,cheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-string v0, "154-240"

    const-string v1, "gui,jiu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string v0, "154-241"

    const-string v1, "bin,pa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v0, "154-245"

    const-string v1, "zhuo,que"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    return-void
.end method

.method private static initMap155()V
    .locals 2

    .prologue
    .line 959
    const-string v0, "155-68"

    const-string v1, "zhi,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const-string v0, "155-78"

    const-string v1, "gan,han,cen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v0, "155-80"

    const-string v1, "fang,pang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string v0, "155-82"

    const-string v1, "hu,huang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string v0, "155-83"

    const-string v1, "niu,you"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string v0, "155-92"

    const-string v1, "nv,niu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v0, "155-93"

    const-string v1, "mei,mo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v0, "155-94"

    const-string v1, "mi,wu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v0, "155-96"

    const-string v1, "hong,pang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v0, "155-100"

    const-string v1, "zhui,zi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v0, "155-107"

    const-string v1, "tuo,duo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v0, "155-109"

    const-string v1, "mi,li"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v0, "155-110"

    const-string v1, "yi,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v0, "155-117"

    const-string v1, "yi,die"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v0, "155-123"

    const-string v1, "chu,she"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v0, "155-124"

    const-string v1, "you,ao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string v0, "155-128"

    const-string v1, "peng,ping"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v0, "155-135"

    const-string v1, "yue,sa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v0, "155-137"

    const-string v1, "jue,xue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string v0, "155-155"

    const-string v1, "se,qi,zi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const-string v0, "155-161"

    const-string v1, "an,yan,e"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v0, "155-171"

    const-string v1, "su,shuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v0, "155-173"

    const-string v1, "qie,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string v0, "155-193"

    const-string v1, "you,di"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const-string v0, "155-198"

    const-string v1, "ying,cheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string v0, "155-205"

    const-string v1, "feng,hong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string v0, "155-212"

    const-string v1, "sui,nei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v0, "155-226"

    const-string v1, "tun,yun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v0, "155-236"

    const-string v1, "shou,tao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string v0, "155-239"

    const-string v1, "kong,nang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v0, "155-240"

    const-string v1, "wan,wo,yuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string v0, "155-249"

    const-string v1, "qie,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v0, "155-253"

    const-string v1, "guo,guan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    return-void
.end method

.method private static initMap156()V
    .locals 2

    .prologue
    .line 995
    const-string v0, "156-75"

    const-string v1, "ping,peng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string v0, "156-77"

    const-string v1, "yu,xu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string v0, "156-81"

    const-string v1, "jing,cheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string v0, "156-86"

    const-string v1, "nian,shen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const-string v0, "156-87"

    const-string v1, "biao,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string v0, "156-98"

    const-string v1, "wen,min"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v0, "156-99"

    const-string v1, "ruo,re,luo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v0, "156-114"

    const-string v1, "qiu,wu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v0, "156-117"

    const-string v1, "wo,guo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const-string v0, "156-118"

    const-string v1, "ti,di"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string v0, "156-130"

    const-string v1, "hong,qing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const-string v0, "156-147"

    const-string v1, "hui,min,xu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const-string v0, "156-161"

    const-string v1, "min,hun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-string v0, "156-168"

    const-string v1, "tuan,nuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string v0, "156-169"

    const-string v1, "qiu,jiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    const-string v0, "156-171"

    const-string v1, "tang,shang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const-string v0, "156-176"

    const-string v1, "ban,pan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const-string v0, "156-179"

    const-string v1, "zhuang,hun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const-string v0, "156-189"

    const-string v1, "feng,hong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string v0, "156-196"

    const-string v1, "yan,gui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string v0, "156-199"

    const-string v1, "lian,nian,xian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string v0, "156-205"

    const-string v1, "da,ta"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const-string v0, "156-228"

    const-string v1, "chu,xu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const-string v0, "156-233"

    const-string v1, "hao,xue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const-string v0, "156-235"

    const-string v1, "qi,xi,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const-string v0, "156-238"

    const-string v1, "xing,ying"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const-string v0, "156-245"

    const-string v1, "ze,hao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method private static initMap157()V
    .locals 2

    .prologue
    .line 1025
    const-string v0, "157-71"

    const-string v1, "hu,xu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-string v0, "157-89"

    const-string v1, "cong,song"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string v0, "157-96"

    const-string v1, "tuan,zhuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string v0, "157-109"

    const-string v1, "feng,peng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v0, "157-112"

    const-string v1, "ben,peng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string v0, "157-114"

    const-string v1, "chong,zhuang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string v0, "157-116"

    const-string v1, "huo,kuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const-string v0, "157-120"

    const-string v1, "liao,liu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v0, "157-124"

    const-string v1, "cong,zong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const-string v0, "157-131"

    const-string v1, "cong,zong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v0, "157-135"

    const-string v1, "pi,pie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const-string v0, "157-137"

    const-string v1, "jiao,qiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v0, "157-139"

    const-string v1, "dang,xiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const-string v0, "157-148"

    const-string v1, "xi,ya"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const-string v0, "157-156"

    const-string v1, "cong,zong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const-string v0, "157-160"

    const-string v1, "tan,shan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    const-string v0, "157-162"

    const-string v1, "kui,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v0, "157-164"

    const-string v1, "tu,zha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string v0, "157-165"

    const-string v1, "san,sa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const-string v0, "157-185"

    const-string v1, "hong,gong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const-string v0, "157-198"

    const-string v1, "mian,sheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v0, "157-201"

    const-string v1, "ze,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string v0, "157-207"

    const-string v1, "wan,man"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-string v0, "157-210"

    const-string v1, "kuai,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string v0, "157-227"

    const-string v1, "guo,wo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v0, "157-229"

    const-string v1, "fen,pen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string v0, "157-231"

    const-string v1, "ji,sha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const-string v0, "157-232"

    const-string v1, "hui,huo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v0, "157-236"

    const-string v1, "ding,ting"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string v0, "157-240"

    const-string v1, "mi,ni"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const-string v0, "157-251"

    const-string v1, "cui,zui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method private static initMap158()V
    .locals 2

    .prologue
    .line 1059
    const-string v0, "158-67"

    const-string v1, "huo,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string v0, "158-70"

    const-string v1, "jun,xun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const-string v0, "158-71"

    const-string v1, "ai,kai,ke"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const-string v0, "158-83"

    const-string v1, "wei,dui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v0, "158-84"

    const-string v1, "luo,po"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-string v0, "158-85"

    const-string v1, "zan,cuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string v0, "158-94"

    const-string v1, "du,dou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string v0, "158-102"

    const-string v1, "mie,mo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v0, "158-106"

    const-string v1, "cheng,deng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const-string v0, "158-119"

    const-string v1, "wei,dui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const-string v0, "158-120"

    const-string v1, "huai,wai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const-string v0, "158-123"

    const-string v1, "long,shuang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const-string v0, "158-136"

    const-string v1, "jian,zun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const-string v0, "158-143"

    const-string v1, "rang,nang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const-string v0, "158-149"

    const-string v1, "zhuo,jiao,ze"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v0, "158-163"

    const-string v1, "zan,cuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    const-string v0, "158-170"

    const-string v1, "dang,tang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string v0, "158-181"

    const-string v1, "xun,quan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string v0, "158-193"

    const-string v1, "zha,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string v0, "158-199"

    const-string v1, "fen,ben"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const-string v0, "158-208"

    const-string v1, "pang,feng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    const-string v0, "158-227"

    const-string v1, "zhuo,chu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const-string v0, "158-228"

    const-string v1, "pao,fou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const-string v0, "158-232"

    const-string v1, "shan,qian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const-string v0, "158-236"

    const-string v1, "jiao,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string v0, "158-250"

    const-string v1, "tong,dong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    return-void
.end method

.method private static initMap159()V
    .locals 2

    .prologue
    .line 1088
    const-string v0, "159-74"

    const-string v1, "fu,pao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-string v0, "159-76"

    const-string v1, "xie,che"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const-string v0, "159-91"

    const-string v1, "xun,hun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v0, "159-93"

    const-string v1, "juan,ye"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const-string v0, "159-97"

    const-string v1, "qu,jun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string v0, "159-99"

    const-string v1, "xie,che"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    const-string v0, "159-100"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const-string v0, "159-113"

    const-string v1, "chao,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const-string v0, "159-115"

    const-string v1, "wo,ai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const-string v0, "159-116"

    const-string v1, "zong,cong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const-string v0, "159-121"

    const-string v1, "xi,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const-string v0, "159-130"

    const-string v1, "xiong,ying"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string v0, "159-135"

    const-string v1, "xiong,ying"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const-string v0, "159-144"

    const-string v1, "hui,yun,xun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    const-string v0, "159-154"

    const-string v1, "shan,qian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const-string v0, "159-155"

    const-string v1, "xi,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const-string v0, "159-164"

    const-string v1, "ye,zha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const-string v0, "159-184"

    const-string v1, "en,yun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    const-string v0, "159-192"

    const-string v1, "he,xiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const-string v0, "159-208"

    const-string v1, "cong,zong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    const-string v0, "159-209"

    const-string v1, "lu,ao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const-string v0, "159-212"

    const-string v1, "peng,feng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string v0, "159-213"

    const-string v1, "sui,cui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string v0, "159-223"

    const-string v1, "han,ran"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const-string v0, "159-237"

    const-string v1, "chan,dan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string v0, "159-247"

    const-string v1, "jiao,qiao,jue,zhuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const-string v0, "159-252"

    const-string v1, "tong,dong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    return-void
.end method

.method private static initMap160()V
    .locals 2

    .prologue
    .line 1118
    const-string v0, "160-77"

    const-string v1, "tai,lie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const-string v0, "160-104"

    const-string v1, "rong,ying"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const-string v0, "160-105"

    const-string v1, "li,lie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string v0, "160-109"

    const-string v1, "la,lie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string v0, "160-112"

    const-string v1, "kuang,huang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string v0, "160-119"

    const-string v1, "yan,xun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const-string v0, "160-141"

    const-string v1, "zhao,zhua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string v0, "160-144"

    const-string v1, "cheng,chen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v0, "160-164"

    const-string v1, "bian,mian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const-string v0, "160-168"

    const-string v1, "you,yong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const-string v0, "160-172"

    const-string v1, "jiu,le"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const-string v0, "160-179"

    const-string v1, "ge,qiu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    const-string v0, "160-182"

    const-string v1, "you,chou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    const-string v0, "160-195"

    const-string v1, "zhi,te"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const-string v0, "160-211"

    const-string v1, "mao,li"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    const-string v0, "160-227"

    const-string v1, "quan,ba"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const-string v0, "160-230"

    const-string v1, "zhuo,bao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    const-string v0, "160-232"

    const-string v1, "kang,gang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const-string v0, "160-233"

    const-string v1, "pei,fei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const-string v0, "160-237"

    const-string v1, "huan,fan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    const-string v0, "160-244"

    const-string v1, "yi,quan,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const-string v0, "160-245"

    const-string v1, "sheng,xing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const-string v0, "160-246"

    const-string v1, "tuo,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    return-void
.end method

.method private static initMap170()V
    .locals 2

    .prologue
    .line 1144
    const-string v0, "170-72"

    const-string v1, "ta,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const-string v0, "170-73"

    const-string v1, "tong,dong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string v0, "170-75"

    const-string v1, "mang,dou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v0, "170-76"

    const-string v1, "xi,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v0, "170-87"

    const-string v1, "bai,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string v0, "170-92"

    const-string v1, "jian,yan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string v0, "170-99"

    const-string v1, "ya,wei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const-string v0, "170-109"

    const-string v1, "ya,jia,qie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    const-string v0, "170-110"

    const-string v1, "xie,he,ge,hai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    const-string v0, "170-112"

    const-string v1, "bian,pian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    const-string v0, "170-116"

    const-string v1, "bo,po"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const-string v0, "170-130"

    const-string v1, "hao,gao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const-string v0, "170-146"

    const-string v1, "yao,xiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const-string v0, "170-147"

    const-string v1, "shuo,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const-string v0, "170-152"

    const-string v1, "ge,lie,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const-string v0, "170-160"

    const-string v1, "bian,pian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    return-void
.end method

.method private static initMap171()V
    .locals 2

    .prologue
    .line 1163
    const-string v0, "171-65"

    const-string v1, "nou,ru"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    const-string v0, "171-68"

    const-string v1, "nao,you"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const-string v0, "171-76"

    const-string v1, "nao,you"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const-string v0, "171-96"

    const-string v1, "chang,yang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const-string v0, "171-106"

    const-string v1, "men,yun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const-string v0, "171-108"

    const-string v1, "jian,qian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const-string v0, "171-111"

    const-string v1, "qiang,cang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string v0, "171-113"

    const-string v1, "an,gan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const-string v0, "171-116"

    const-string v1, "xuan,xian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const-string v0, "171-125"

    const-string v1, "yi,tai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-string v0, "171-126"

    const-string v1, "zu,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const-string v0, "171-144"

    const-string v1, "yin,ken"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const-string v0, "171-159"

    const-string v1, "di,ti"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    return-void
.end method

.method private static initMap172()V
    .locals 2

    .prologue
    .line 1179
    const-string v0, "172-73"

    const-string v1, "xuan,qiong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    const-string v0, "172-86"

    const-string v1, "pin,bing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const-string v0, "172-88"

    const-string v1, "cui,se"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    const-string v0, "172-94"

    const-string v1, "wei,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const-string v0, "172-97"

    const-string v1, "beng,pei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const-string v0, "172-113"

    const-string v1, "hun,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const-string v0, "172-128"

    const-string v1, "xie,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const-string v0, "172-132"

    const-string v1, "chang,yang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string v0, "172-153"

    const-string v1, "tian,zhen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string v0, "172-154"

    const-string v1, "qiang,cang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string v0, "172-158"

    const-string v1, "bin,pian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const-string v0, "172-159"

    const-string v1, "tu,shu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    return-void
.end method

.method private static initMap173()V
    .locals 2

    .prologue
    .line 1194
    const-string v0, "173-70"

    const-string v1, "zao,suo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    const-string v0, "173-87"

    const-string v1, "qiong,jue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    const-string v0, "173-103"

    const-string v1, "hui,kuai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const-string v0, "173-111"

    const-string v1, "lu,fu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const-string v0, "173-112"

    const-string v1, "bin,pian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const-string v0, "173-117"

    const-string v1, "ji,zi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const-string v0, "173-140"

    const-string v1, "mi,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-string v0, "173-142"

    const-string v1, "qiong,wei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string v0, "173-146"

    const-string v1, "huan,ye,ya"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v0, "173-148"

    const-string v1, "bo,pao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    const-string v0, "173-149"

    const-string v1, "zhi,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    const-string v0, "173-152"

    const-string v1, "xiang,hong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v0, "173-160"

    const-string v1, "ki ro ton,mao wa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    return-void
.end method

.method private static initMap174()V
    .locals 2

    .prologue
    .line 1210
    const-string v0, "174-107"

    const-string v1, "ting,ding"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string v0, "174-110"

    const-string v1, "bi,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string v0, "174-119"

    const-string v1, "fu,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    const-string v0, "174-125"

    const-string v1, "da,fu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const-string v0, "174-130"

    const-string v1, "ce,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string v0, "174-131"

    const-string v1, "zai,zi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string v0, "174-135"

    const-string v1, "zhi,chou,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v0, "174-137"

    const-string v1, "fan,pan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string v0, "174-140"

    const-string v1, "she,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    return-void
.end method

.method private static initMap175()V
    .locals 2

    .prologue
    .line 1222
    const-string v0, "175-67"

    const-string v1, "jie,qie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const-string v0, "175-70"

    const-string v1, "zhi,di"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const-string v0, "175-78"

    const-string v1, "jue,xue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const-string v0, "175-80"

    const-string v1, "ya,xia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    const-string v0, "175-86"

    const-string v1, "fa,bian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const-string v0, "175-90"

    const-string v1, "shan,dian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    const-string v0, "175-92"

    const-string v1, "teng,chong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    const-string v0, "175-95"

    const-string v1, "wei,you,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const-string v0, "175-97"

    const-string v1, "tan,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    const-string v0, "175-110"

    const-string v1, "beng,peng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    const-string v0, "175-114"

    const-string v1, "ma,lin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string v0, "175-116"

    const-string v1, "tian,dian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const-string v0, "175-117"

    const-string v1, "an,ye,e"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    const-string v0, "175-122"

    const-string v1, "ke,e"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string v0, "175-128"

    const-string v1, "zhi,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    const-string v0, "175-144"

    const-string v1, "hui,lei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    const-string v0, "175-145"

    const-string v1, "n<e,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const-string v0, "175-146"

    const-string v1, "dian,chen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    const-string v0, "175-160"

    const-string v1, "qiao,jiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    return-void
.end method

.method private static initMap176()V
    .locals 2

    .prologue
    .line 1244
    const-string v0, "176-73"

    const-string v1, "gui,wei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const-string v0, "176-79"

    const-string v1, "li,lai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const-string v0, "176-110"

    const-string v1, "ji,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string v0, "176-113"

    const-string v1, "pa,ba"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v0, "176-119"

    const-string v1, "gao,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v0, "176-141"

    const-string v1, "li,luo,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string v0, "176-154"

    const-string v1, "zha,cu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const-string v0, "176-156"

    const-string v1, "zhao,zhan,dan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const-string v0, "176-188"

    const-string v1, "ao,wa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-string v0, "176-194"

    const-string v1, "ao,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v0, "176-199"

    const-string v1, "ba,pa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string v0, "176-210"

    const-string v1, "ba,pa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v0, "176-213"

    const-string v1, "ba,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const-string v0, "176-216"

    const-string v1, "bai,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    const-string v0, "176-232"

    const-string v1, "ban,pan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    const-string v0, "176-245"

    const-string v1, "bang,pang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string v0, "176-246"

    const-string v1, "bang,beng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    const-string v0, "176-254"

    const-string v1, "bao,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    return-void
.end method

.method private static initMap177()V
    .locals 2

    .prologue
    .line 1265
    const-string v0, "177-84"

    const-string v1, "zhou,chou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    const-string v0, "177-90"

    const-string v1, "mang,wang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const-string v0, "177-93"

    const-string v1, "xian,tian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    const-string v0, "177-95"

    const-string v1, "xi,pan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    const-string v0, "177-100"

    const-string v1, "yun,hun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    const-string v0, "177-106"

    const-string v1, "yang,ying"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    const-string v0, "177-108"

    const-string v1, "yao,ao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const-string v0, "177-114"

    const-string v1, "ju,xu,kou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    const-string v0, "177-117"

    const-string v1, "mo,mie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const-string v0, "177-121"

    const-string v1, "die,ti"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const-string v0, "177-125"

    const-string v1, "bing,fang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    const-string v0, "177-126"

    const-string v1, "pang,pan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    const-string v0, "177-130"

    const-string v1, "die,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const-string v0, "177-134"

    const-string v1, "xuan,shun,xun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const-string v0, "177-141"

    const-string v1, "qiao,shao,xiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const-string v0, "177-145"

    const-string v1, "cuo,zhuai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const-string v0, "177-161"

    const-string v1, "bao,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    const-string v0, "177-164"

    const-string v1, "bao,bu,pu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    const-string v0, "177-169"

    const-string v1, "bao,pu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const-string v0, "177-187"

    const-string v1, "bei,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    const-string v0, "177-217"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const-string v0, "177-219"

    const-string v1, "bi,bei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    const-string v0, "177-226"

    const-string v1, "bian,pian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    const-string v0, "177-227"

    const-string v1, "bian,pian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    return-void
.end method

.method private static initMap178()V
    .locals 2

    .prologue
    .line 1292
    const-string v0, "178-66"

    const-string v1, "sui,zui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    const-string v0, "178-71"

    const-string v1, "yi,ze,gao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const-string v0, "178-90"

    const-string v1, "gui,wei,kui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const-string v0, "178-93"

    const-string v1, "kou,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const-string v0, "178-96"

    const-string v1, "qiong,huan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const-string v0, "178-102"

    const-string v1, "diao,dou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    const-string v0, "178-107"

    const-string v1, "lou,lv"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    const-string v0, "178-109"

    const-string v1, "man,men"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const-string v0, "178-112"

    const-string v1, "run,shun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const-string v0, "178-118"

    const-string v1, "xian,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string v0, "178-121"

    const-string v1, "wu,mi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const-string v0, "178-122"

    const-string v1, "gui,kui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const-string v0, "178-133"

    const-string v1, "ning,cheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    const-string v0, "178-136"

    const-string v1, "huo,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v0, "178-142"

    const-string v1, "kuang,guo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const-string v0, "178-149"

    const-string v1, "guan,quan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const-string v0, "178-155"

    const-string v1, "jin,qin,guan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const-string v0, "178-156"

    const-string v1, "yu,xu,jue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const-string v0, "178-170"

    const-string v1, "bo,bei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const-string v0, "178-174"

    const-string v1, "bo,bai,ba"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const-string v0, "178-180"

    const-string v1, "bo,po"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-string v0, "178-183"

    const-string v1, "bu,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string v0, "178-187"

    const-string v1, "bu,fou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v0, "178-190"

    const-string v1, "bu,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const-string v0, "178-206"

    const-string v1, "can,shen,cen,san"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const-string v0, "178-216"

    const-string v1, "cang,zang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string v0, "178-224"

    const-string v1, "ce,ze,zhai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v0, "178-233"

    const-string v1, "cha,zha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string v0, "178-238"

    const-string v1, "cha,chai,ci"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const-string v0, "178-240"

    const-string v1, "chai,ca"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    const-string v0, "178-244"

    const-string v1, "chan,xian,can,shan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const-string v0, "178-252"

    const-string v1, "chan,zhan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    return-void
.end method

.method private static initMap179()V
    .locals 2

    .prologue
    .line 1327
    const-string v0, "179-77"

    const-string v1, "gang,qiang,kong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const-string v0, "179-87"

    const-string v1, "pin,bin,fen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const-string v0, "179-96"

    const-string v1, "ke,luo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    const-string v0, "179-113"

    const-string v1, "kuang,guang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const-string v0, "179-117"

    const-string v1, "wei,gui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const-string v0, "179-119"

    const-string v1, "ken,xian,gun,yin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const-string v0, "179-121"

    const-string v1, "peng,ping"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    const-string v0, "179-125"

    const-string v1, "wei,ai,gai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    const-string v0, "179-130"

    const-string v1, "que,ke,ku"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    const-string v0, "179-137"

    const-string v1, "mang,bang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const-string v0, "179-138"

    const-string v1, "luo,long"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    const-string v0, "179-139"

    const-string v1, "yong,tong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    const-string v0, "179-155"

    const-string v1, "zhui,chui,duo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    const-string v0, "179-159"

    const-string v1, "zong,cong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    const-string v0, "179-164"

    const-string v1, "chang,zhang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    const-string v0, "179-167"

    const-string v1, "chang,an,han"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    const-string v0, "179-175"

    const-string v1, "zhao,chao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    const-string v0, "179-176"

    const-string v1, "chao,zhao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const-string v0, "179-198"

    const-string v1, "cheng,chen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const-string v0, "179-203"

    const-string v1, "cheng,sheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const-string v0, "179-206"

    const-string v1, "cheng,deng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    const-string v0, "179-215"

    const-string v1, "chi,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const-string v0, "179-223"

    const-string v1, "chi,che"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    const-string v0, "179-240"

    const-string v1, "chou,qiu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    const-string v0, "179-244"

    const-string v1, "chou,xiu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    return-void
.end method

.method private static initMap180()V
    .locals 2

    .prologue
    .line 1355
    const-string v0, "180-68"

    const-string v1, "jian,zhan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const-string v0, "180-70"

    const-string v1, "que,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const-string v0, "180-76"

    const-string v1, "nao,gang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    const-string v0, "180-84"

    const-string v1, "shuo,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    const-string v0, "180-89"

    const-string v1, "ti,di"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    const-string v0, "180-96"

    const-string v1, "que,qiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const-string v0, "180-99"

    const-string v1, "su,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const-string v0, "180-102"

    const-string v1, "si,ti"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    const-string v0, "180-104"

    const-string v1, "hua,ke,gu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const-string v0, "180-106"

    const-string v1, "kui,wei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const-string v0, "180-108"

    const-string v1, "xia,qia,ya"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    const-string v0, "180-110"

    const-string v1, "lian,qian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const-string v0, "180-111"

    const-string v1, "wei,ai,gai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    const-string v0, "180-120"

    const-string v1, "ao,qiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    const-string v0, "180-132"

    const-string v1, "qi,zhu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    const-string v0, "180-139"

    const-string v1, "lao,luo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    const-string v0, "180-145"

    const-string v1, "pan,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    const-string v0, "180-146"

    const-string v1, "ji,she"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    const-string v0, "180-157"

    const-string v1, "he,qiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const-string v0, "180-158"

    const-string v1, "ke,huo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-string v0, "180-167"

    const-string v1, "chuai,tuan,zhui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    const-string v0, "180-171"

    const-string v1, "chuan,zhuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    const-string v0, "180-177"

    const-string v1, "chuang,zhuang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const-string v0, "180-190"

    const-string v1, "chun,zhun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const-string v0, "180-194"

    const-string v1, "chuo,chao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const-string v0, "180-211"

    const-string v1, "cong,zong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v0, "180-233"

    const-string v1, "cuo,zuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const-string v0, "180-241"

    const-string v1, "da,dB"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    const-string v0, "180-243"

    const-string v1, "da,dai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    return-void
.end method

.method private static initMap181()V
    .locals 2

    .prologue
    .line 1387
    const-string v0, "181-67"

    const-string v1, "que,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    const-string v0, "181-74"

    const-string v1, "e,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string v0, "181-85"

    const-string v1, "xian,xin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const-string v0, "181-111"

    const-string v1, "zhi,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const-string v0, "181-112"

    const-string v1, "beng,fang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    const-string v0, "181-122"

    const-string v1, "mi,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string v0, "181-136"

    const-string v1, "shui,lei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    const-string v0, "181-150"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const-string v0, "181-153"

    const-string v1, "you,chao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    const-string v0, "181-165"

    const-string v1, "dan,shan,chan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    const-string v0, "181-167"

    const-string v1, "dan,shan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const-string v0, "181-172"

    const-string v1, "dan,da"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string v0, "181-175"

    const-string v1, "dan,tan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    const-string v0, "181-195"

    const-string v1, "de,dei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    const-string v0, "181-196"

    const-string v1, "di,de"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    const-string v0, "181-212"

    const-string v1, "di,zhai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    const-string v0, "181-215"

    const-string v1, "di,de"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const-string v0, "181-216"

    const-string v1, "di,de"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    const-string v0, "181-220"

    const-string v1, "di,ti,tui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    const-string v0, "181-232"

    const-string v1, "dian,tian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    const-string v0, "181-233"

    const-string v1, "dian,tian,sheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    return-void
.end method

.method private static initMap182()V
    .locals 2

    .prologue
    .line 1411
    const-string v0, "182-64"

    const-string v1, "shang,yang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const-string v0, "182-65"

    const-string v1, "ti,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const-string v0, "182-85"

    const-string v1, "shan,chan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const-string v0, "182-103"

    const-string v1, "cha,na"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v0, "182-104"

    const-string v1, "yi,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const-string v0, "182-109"

    const-string v1, "hao,mao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const-string v0, "182-129"

    const-string v1, "huo,kuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const-string v0, "182-131"

    const-string v1, "shi,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-string v0, "182-132"

    const-string v1, "huo,kuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    const-string v0, "182-141"

    const-string v1, "fu,pu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-string v0, "182-143"

    const-string v1, "xun,ze"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    const-string v0, "182-149"

    const-string v1, "tu,shu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    const-string v0, "182-157"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const-string v0, "182-160"

    const-string v1, "leng,ling"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    const-string v0, "182-161"

    const-string v1, "ding,zheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    const-string v0, "182-177"

    const-string v1, "dong,tong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const-string v0, "182-188"

    const-string v1, "du,dou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    const-string v0, "182-190"

    const-string v1, "du,dai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const-string v0, "182-193"

    const-string v1, "du,dou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    const-string v0, "182-200"

    const-string v1, "du,duo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    const-string v0, "182-210"

    const-string v1, "dui,rui,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    const-string v0, "182-216"

    const-string v1, "dun,dui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const-string v0, "182-218"

    const-string v1, "dun,tun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    const-string v0, "182-233"

    const-string v1, "duo,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    const-string v0, "182-234"

    const-string v1, "e,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    const-string v0, "182-241"

    const-string v1, "e,wu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    return-void
.end method

.method private static initMap183()V
    .locals 2

    .prologue
    .line 1440
    const-string v0, "183-66"

    const-string v1, "zui,zu,su"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    const-string v0, "183-71"

    const-string v1, "xi,qie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    const-string v0, "183-75"

    const-string v1, "pi,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    const-string v0, "183-81"

    const-string v1, "cheng,chen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    const-string v0, "183-83"

    const-string v1, "xian,jian,lian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    const-string v0, "183-84"

    const-string v1, "zi,jiu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    const-string v0, "183-95"

    const-string v1, "can,shan,cen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    const-string v0, "183-96"

    const-string v1, "men,mei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    const-string v0, "183-110"

    const-string v1, "xiao,rao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    const-string v0, "183-113"

    const-string v1, "zhuo,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    const-string v0, "183-114"

    const-string v1, "tong,zhong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    const-string v0, "183-129"

    const-string v1, "cheng,chen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    const-string v0, "183-133"

    const-string v1, "biao,pao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const-string v0, "183-135"

    const-string v1, "zhuo,jue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    const-string v0, "183-137"

    const-string v1, "cuan,zan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    const-string v0, "183-148"

    const-string v1, "zhu,ku"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    const-string v0, "183-149"

    const-string v1, "jiao,liao,liu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    const-string v0, "183-152"

    const-string v1, "wa,gui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    const-string v0, "183-172"

    const-string v1, "fan,pan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    const-string v0, "183-177"

    const-string v1, "fan,po"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    const-string v0, "183-221"

    const-string v1, "fen,bin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    const-string v0, "183-235"

    const-string v1, "feng,ping"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    const-string v0, "183-240"

    const-string v1, "fo,fu,bi,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    const-string v0, "183-241"

    const-string v1, "fou,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    const-string v0, "183-247"

    const-string v1, "fu,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    return-void
.end method

.method private static initMap184()V
    .locals 2

    .prologue
    .line 1468
    const-string v0, "184-69"

    const-string v1, "ya,ye"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    const-string v0, "184-75"

    const-string v1, "tian,dian,yan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const-string v0, "184-83"

    const-string v1, "chao,ke"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const-string v0, "184-84"

    const-string v1, "kuan,cuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    const-string v0, "184-85"

    const-string v1, "kuan,cuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    const-string v0, "184-101"

    const-string v1, "chu,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    const-string v0, "184-108"

    const-string v1, "qu,kou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const-string v0, "184-116"

    const-string v1, "jing,zhen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const-string v0, "184-125"

    const-string v1, "ceng,zeng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    const-string v0, "184-133"

    const-string v1, "le,jin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    const-string v0, "184-143"

    const-string v1, "zhui,rui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    const-string v0, "184-146"

    const-string v1, "cen,jin,han"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    const-string v0, "184-147"

    const-string v1, "pi,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    const-string v0, "184-151"

    const-string v1, "da,xia,na"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    const-string v0, "184-177"

    const-string v1, "fu,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    const-string v0, "184-199"

    const-string v1, "gai,ge,he"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    const-string v0, "184-219"

    const-string v1, "gang,jiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    const-string v0, "184-222"

    const-string v1, "gao,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    const-string v0, "184-237"

    const-string v1, "ge,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    const-string v0, "184-239"

    const-string v1, "ge,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    const-string v0, "184-242"

    const-string v1, "ge,ha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    const-string v0, "184-248"

    const-string v1, "gei,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    return-void
.end method

.method private static initMap185()V
    .locals 2

    .prologue
    .line 1493
    const-string v0, "185-65"

    const-string v1, "fu,fei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    const-string v0, "185-114"

    const-string v1, "pou,bu,fu,pu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    const-string v0, "185-117"

    const-string v1, "pai,bei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const-string v0, "185-120"

    const-string v1, "tai,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const-string v0, "185-121"

    const-string v1, "guai,dai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    const-string v0, "185-124"

    const-string v1, "zhao,dao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    const-string v0, "185-132"

    const-string v1, "jun,qun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    const-string v0, "185-149"

    const-string v1, "shi,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    const-string v0, "185-150"

    const-string v1, "yue,yao,chuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    const-string v0, "185-155"

    const-string v1, "shuo,xiao,qiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    const-string v0, "185-227"

    const-string v1, "guang,an"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    const-string v0, "185-234"

    const-string v1, "gui,jun,qiu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const-string v0, "185-241"

    const-string v1, "gui,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    const-string v0, "185-247"

    const-string v1, "gun,hun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    return-void
.end method

.method private static initMap186()V
    .locals 2

    .prologue
    .line 1510
    const-string v0, "186-84"

    const-string v1, "gong,gan,long"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    const-string v0, "186-85"

    const-string v1, "peng,pang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    const-string v0, "186-87"

    const-string v1, "zhuo,huo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    const-string v0, "186-91"

    const-string v1, "qiang,cang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    const-string v0, "186-97"

    const-string v1, "zhu,di"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    const-string v0, "186-100"

    const-string v1, "cen,zan,can"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    const-string v0, "186-101"

    const-string v1, "zhuan,zuan,suan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    const-string v0, "186-103"

    const-string v1, "piao,biao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    const-string v0, "186-105"

    const-string v1, "tuan,zhuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    const-string v0, "186-108"

    const-string v1, "guo,gui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    const-string v0, "186-117"

    const-string v1, "ce,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    const-string v0, "186-128"

    const-string v1, "mi,mie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    const-string v0, "186-129"

    const-string v1, "shai,si"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    const-string v0, "186-139"

    const-string v1, "sun,zhuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    const-string v0, "186-187"

    const-string v1, "hang,ben"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    const-string v0, "186-199"

    const-string v1, "he,a,ke"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    const-string v0, "186-200"

    const-string v1, "he,ye"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    const-string v0, "186-203"

    const-string v1, "he,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    const-string v0, "186-205"

    const-string v1, "he,huo,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    const-string v0, "186-207"

    const-string v1, "he,ge"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const-string v0, "186-209"

    const-string v1, "he,hao,mo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    const-string v0, "186-217"

    const-string v1, "hei,mo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    const-string v0, "186-223"

    const-string v1, "heng,hng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    const-string v0, "186-224"

    const-string v1, "heng,peng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    const-string v0, "186-236"

    const-string v1, "hong,gong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    return-void
.end method

.method private static initMap187()V
    .locals 2

    .prologue
    .line 1538
    const-string v0, "187-69"

    const-string v1, "zhen,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    const-string v0, "187-79"

    const-string v1, "fan,pan,bian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    const-string v0, "187-80"

    const-string v1, "sou,shu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    const-string v0, "187-93"

    const-string v1, "shen shi,sen si,qie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    const-string v0, "187-125"

    const-string v1, "sha,chao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    const-string v0, "187-126"

    const-string v1, "kang,jing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    const-string v0, "187-144"

    const-string v1, "ce,se"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    const-string v0, "187-163"

    const-string v1, "hu,xia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    const-string v0, "187-181"

    const-string v1, "huai,pei,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    const-string v0, "187-185"

    const-string v1, "huan,hai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    const-string v0, "187-225"

    const-string v1, "hui,kuai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    const-string v0, "187-252"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    return-void
.end method

.method private static initMap188()V
    .locals 2

    .prologue
    .line 1553
    const-string v0, "188-77"

    const-string v1, "gu,gou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    const-string v0, "188-82"

    const-string v1, "san,shen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    const-string v0, "188-86"

    const-string v1, "san,shen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    const-string v0, "188-115"

    const-string v1, "yue,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    const-string v0, "188-116"

    const-string v1, "hong,gong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    const-string v0, "188-118"

    const-string v1, "he,ge"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    const-string v0, "188-129"

    const-string v1, "ji,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    const-string v0, "188-146"

    const-string v1, "zha,za"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    const-string v0, "188-153"

    const-string v1, "zha,za"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    const-string v0, "188-158"

    const-string v1, "bo,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    const-string v0, "188-169"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const-string v0, "188-191"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const-string v0, "188-192"

    const-string v1, "ji,zhai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    const-string v0, "188-208"

    const-string v1, "jia,ga,xia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    const-string v0, "188-210"

    const-string v1, "jia,jiB"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    const-string v0, "188-214"

    const-string v1, "jia,gu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    const-string v0, "188-219"

    const-string v1, "jia,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    const-string v0, "188-247"

    const-string v1, "jian,kan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    const-string v0, "188-251"

    const-string v1, "jian,xian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    return-void
.end method

.method private static initMap189()V
    .locals 2

    .prologue
    .line 1575
    const-string v0, "189-71"

    const-string v1, "zhen,tian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    const-string v0, "189-92"

    const-string v1, "gua,kua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    const-string v0, "189-93"

    const-string v1, "bai,mo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    const-string v0, "189-98"

    const-string v1, "huan,geng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    const-string v0, "189-101"

    const-string v1, "xie,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    const-string v0, "189-104"

    const-string v1, "quan,shuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    const-string v0, "189-105"

    const-string v1, "gai,ai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    const-string v0, "189-106"

    const-string v1, "luo,lao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    const-string v0, "189-108"

    const-string v1, "beng,bing,peng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    const-string v0, "189-111"

    const-string v1, "gei,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    const-string v0, "189-112"

    const-string v1, "tong,dong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    const-string v0, "189-114"

    const-string v1, "tiao,diao,dao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    const-string v0, "189-119"

    const-string v1, "gai,hai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    const-string v0, "189-130"

    const-string v1, "chi,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const-string v0, "189-131"

    const-string v1, "mian,wen,man,wan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const-string v0, "189-140"

    const-string v1, "huan,wan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    const-string v0, "189-141"

    const-string v1, "qin,xian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    const-string v0, "189-158"

    const-string v1, "yan,xian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const-string v0, "189-174"

    const-string v1, "jiang,qiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    const-string v0, "189-192"

    const-string v1, "jiao,jue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    const-string v0, "189-196"

    const-string v1, "jiao,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    const-string v0, "189-199"

    const-string v1, "jiao,jue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    const-string v0, "189-201"

    const-string v1, "jiao,zhuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    const-string v0, "189-203"

    const-string v1, "jiao,chao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    const-string v0, "189-210"

    const-string v1, "jie,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    const-string v0, "189-219"

    const-string v1, "jie,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    const-string v0, "189-226"

    const-string v1, "jie,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    const-string v0, "189-229"

    const-string v1, "jie,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    const-string v0, "189-230"

    const-string v1, "jie,gai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    const-string v0, "189-367"

    const-string v1, "gei,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    return-void
.end method

.method private static initMap190()V
    .locals 2

    .prologue
    .line 1609
    const-string v0, "190-67"

    const-string v1, "zong,zeng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    const-string v0, "190-68"

    const-string v1, "lin,chen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    const-string v0, "190-70"

    const-string v1, "li,lie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    const-string v0, "190-78"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    const-string v0, "190-80"

    const-string v1, "qian,qing,zheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    const-string v0, "190-93"

    const-string v1, "lun,guan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    const-string v0, "190-98"

    const-string v1, "chuo,chao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    const-string v0, "190-103"

    const-string v1, "tian,tan,chan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    const-string v0, "190-118"

    const-string v1, "lv,lu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    const-string v0, "190-131"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    const-string v0, "190-133"

    const-string v1, "chong,zhong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    const-string v0, "190-136"

    const-string v1, "miao,mao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    const-string v0, "190-138"

    const-string v1, "xie,ye"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    const-string v0, "190-150"

    const-string v1, "tou,xu,shu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    const-string v0, "190-156"

    const-string v1, "bian,pian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    const-string v0, "190-157"

    const-string v1, "gun,yun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    const-string v0, "190-160"

    const-string v1, "gua,wo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    const-string v0, "190-162"

    const-string v1, "jin,jing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    const-string v0, "190-176"

    const-string v1, "jing,ying"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    const-string v0, "190-177"

    const-string v1, "jing,geng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    const-string v0, "190-187"

    const-string v1, "jing,cheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    const-string v0, "190-208"

    const-string v1, "ju,gou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    const-string v0, "190-215"

    const-string v1, "ju,zui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    const-string v0, "190-228"

    const-string v1, "ju,gou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    const-string v0, "190-245"

    const-string v1, "jue,jiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    return-void
.end method

.method private static initMap191()V
    .locals 2

    .prologue
    .line 1637
    const-string v0, "191-65"

    const-string v1, "yun,wen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    const-string v0, "191-87"

    const-string v1, "ci,cuo,suo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    const-string v0, "191-90"

    const-string v1, "yun,wen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    const-string v0, "191-92"

    const-string v1, "cui,sui,shuai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    const-string v0, "191-102"

    const-string v1, "zai,zeng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    const-string v0, "191-104"

    const-string v1, "xian,xuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    const-string v0, "191-115"

    const-string v1, "suo,su"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    const-string v0, "191-116"

    const-string v1, "yan,yin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    const-string v0, "191-120"

    const-string v1, "zhuan,juan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    const-string v0, "191-125"

    const-string v1, "mu,mo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    const-string v0, "191-138"

    const-string v1, "mou,miu,miao,mu,liao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    const-string v0, "191-155"

    const-string v1, "ju,jue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    const-string v0, "191-163"

    const-string v1, "jun,xun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    const-string v0, "191-167"

    const-string v1, "ka,ga"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    const-string v0, "191-168"

    const-string v1, "qia,ka"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    const-string v0, "191-169"

    const-string v1, "ka,luo,lo,ge"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    const-string v0, "191-172"

    const-string v1, "kai,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    const-string v0, "191-184"

    const-string v1, "kang,gang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    const-string v0, "191-193"

    const-string v1, "ke,he"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    const-string v0, "191-199"

    const-string v1, "ke,qiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    const-string v0, "191-200"

    const-string v1, "ke,hai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    const-string v0, "191-212"

    const-string v1, "hang,keng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    const-string v0, "191-230"

    const-string v1, "kua,ku"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    const-string v0, "191-254"

    const-string v1, "kui,gui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    return-void
.end method

.method private static initMap192()V
    .locals 2

    .prologue
    .line 1664
    const-string v0, "192-77"

    const-string v1, "xi,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    const-string v0, "192-82"

    const-string v1, "qiao,sao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    const-string v0, "192-85"

    const-string v1, "jiao,zhuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    const-string v0, "192-87"

    const-string v1, "dan,tan,chan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    const-string v0, "192-98"

    const-string v1, "pu,fu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    const-string v0, "192-102"

    const-string v1, "yao,li"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    const-string v0, "192-118"

    const-string v1, "xiang,rang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const-string v0, "192-123"

    const-string v1, "li,xi,sa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    const-string v0, "192-136"

    const-string v1, "yun,wen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    const-string v0, "192-138"

    const-string v1, "cui,sui,shuai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const-string v0, "192-163"

    const-string v1, "kui,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    const-string v0, "192-168"

    const-string v1, "kuo,gua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    const-string v0, "192-178"

    const-string v1, "lB,la"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    const-string v0, "192-209"

    const-string v1, "mu,lao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    const-string v0, "192-211"

    const-string v1, "lao,luo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    const-string v0, "192-213"

    const-string v1, "le,lei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    const-string v0, "192-214"

    const-string v1, "le,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    const-string v0, "192-223"

    const-string v1, "lei,le"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    const-string v0, "192-226"

    const-string v1, "leng,ling"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    return-void
.end method

.method private static initMap193()V
    .locals 2

    .prologue
    .line 1686
    const-string v0, "193-76"

    const-string v1, "guai,gua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    const-string v0, "193-84"

    const-string v1, "ba,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    const-string v0, "193-102"

    const-string v1, "yang,xiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    const-string v0, "193-111"

    const-string v1, "mei,gao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    const-string v0, "193-112"

    const-string v1, "yi,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    const-string v0, "193-122"

    const-string v1, "qiang,kong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    const-string v0, "193-123"

    const-string v1, "qian,xian,yan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    const-string v0, "193-135"

    const-string v1, "hong,gong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    const-string v0, "193-145"

    const-string v1, "pi,bi,po"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    const-string v0, "193-148"

    const-string v1, "qu,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    const-string v0, "193-159"

    const-string v1, "dao,zhou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    const-string v0, "193-165"

    const-string v1, "li,dai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const-string v0, "193-169"

    const-string v1, "liang,lia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    const-string v0, "193-202"

    const-string v1, "lao,liao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const-string v0, "193-203"

    const-string v1, "liao,le"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    const-string v0, "193-249"

    const-string v1, "liu,lu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    return-void
.end method

.method private static initMap194()V
    .locals 2

    .prologue
    .line 1705
    const-string v0, "194-74"

    const-string v1, "hou,qu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    const-string v0, "194-88"

    const-string v1, "ruan,nuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    const-string v0, "194-89"

    const-string v1, "er,nai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    const-string v0, "194-90"

    const-string v1, "duan,zhuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    const-string v0, "194-93"

    const-string v1, "si,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    const-string v0, "194-94"

    const-string v1, "qu,chu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const-string v0, "194-99"

    const-string v1, "ji,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    const-string v0, "194-100"

    const-string v1, "zha,ze"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    const-string v0, "194-109"

    const-string v1, "yun,ying"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    const-string v0, "194-118"

    const-string v1, "wa,tui,zhuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    const-string v0, "194-120"

    const-string v1, "er,nv"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    const-string v0, "194-122"

    const-string v1, "tie,zhe"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    const-string v0, "194-130"

    const-string v1, "di,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    const-string v0, "194-158"

    const-string v1, "ni,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    const-string v0, "194-181"

    const-string v1, "lu,liu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    const-string v0, "194-202"

    const-string v1, "shuai,lv"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    const-string v0, "194-204"

    const-string v1, "lv,lu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    const-string v0, "194-218"

    const-string v1, "lun,guan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    const-string v0, "194-228"

    const-string v1, "luo,la,lao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const-string v0, "194-231"

    const-string v1, "luo,lao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    const-string v0, "194-240"

    const-string v1, "ma,mB"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    const-string v0, "194-241"

    const-string v1, "mai,man"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    const-string v0, "194-247"

    const-string v1, "man,men"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    const-string v0, "194-251"

    const-string v1, "man,wan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    return-void
.end method

.method private static initMap195()V
    .locals 2

    .prologue
    .line 1732
    const-string v0, "195-74"

    const-string v1, "bo,di"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    const-string v0, "195-81"

    const-string v1, "qin,han"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    const-string v0, "195-84"

    const-string v1, "pang,pan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    const-string v0, "195-89"

    const-string v1, "pi,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    const-string v0, "195-94"

    const-string v1, "fei,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    const-string v0, "195-99"

    const-string v1, "zi,fei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    const-string v0, "195-100"

    const-string v1, "fei,ku"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    const-string v0, "195-103"

    const-string v1, "ping,peng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    const-string v0, "195-105"

    const-string v1, "fu,zhou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    const-string v0, "195-118"

    const-string v1, "gui,kui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    const-string v0, "195-165"

    const-string v1, "meng,mang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    const-string v0, "195-176"

    const-string v1, "mao,mo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    const-string v0, "195-180"

    const-string v1, "me,yao,mB"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    const-string v0, "195-187"

    const-string v1, "mei,mo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    const-string v0, "195-211"

    const-string v1, "mi,mei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    const-string v0, "195-216"

    const-string v1, "mi,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    const-string v0, "195-218"

    const-string v1, "mi,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    return-void
.end method

.method private static initMap196()V
    .locals 2

    .prologue
    .line 1752
    const-string v0, "196-114"

    const-string v1, "lu,biao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    const-string v0, "196-120"

    const-string v1, "zhuan,chuan,chun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    const-string v0, "196-135"

    const-string v1, "fan,pan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const-string v0, "196-138"

    const-string v1, "hu,wu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    const-string v0, "196-151"

    const-string v1, "la,ge"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    const-string v0, "196-159"

    const-string v1, "wo,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    const-string v0, "196-163"

    const-string v1, "mo,mu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    const-string v0, "196-166"

    const-string v1, "mo,ma"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    const-string v0, "196-168"

    const-string v1, "mo,ma"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    const-string v0, "196-170"

    const-string v1, "mo,mu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    const-string v0, "196-178"

    const-string v1, "mou,mu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    const-string v0, "196-196"

    const-string v1, "na,nei,nB,ne"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    const-string v0, "196-197"

    const-string v1, "na,ne"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    const-string v0, "196-199"

    const-string v1, "na,nei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    const-string v0, "196-200"

    const-string v1, "na,nuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    const-string v0, "196-207"

    const-string v1, "nan,na"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    const-string v0, "196-209"

    const-string v1, "nan,nuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    const-string v0, "196-215"

    const-string v1, "nao,chuo,zhuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    const-string v0, "196-218"

    const-string v1, "nei,na"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    const-string v0, "196-220"

    const-string v1, "neng,nai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    const-string v0, "196-231"

    const-string v1, "ni,niao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    const-string v0, "196-237"

    const-string v1, "nian,nie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    const-string v0, "196-242"

    const-string v1, "niao,sui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    const-string v0, "196-254"

    const-string v1, "ning,zhu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    return-void
.end method

.method private static initMap197()V
    .locals 2

    .prologue
    .line 1779
    const-string v0, "197-77"

    const-string v1, "ni,luan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    const-string v0, "197-79"

    const-string v1, "qian,xian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    const-string v0, "197-81"

    const-string v1, "guang,jiong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    const-string v0, "197-83"

    const-string v1, "guang,jiong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    const-string v0, "197-88"

    const-string v1, "mian,bian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    const-string v0, "197-92"

    const-string v1, "die,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    const-string v0, "197-93"

    const-string v1, "zhi,jin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    const-string v0, "197-154"

    const-string v1, "qiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    const-string v0, "197-170"

    const-string v1, "nong,long"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    const-string v0, "197-177"

    const-string v1, "n<e,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    const-string v0, "197-212"

    const-string v1, "pang,bang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    const-string v0, "197-214"

    const-string v1, "pang,pan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    const-string v0, "197-217"

    const-string v1, "pao,bao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    const-string v0, "197-218"

    const-string v1, "pao,bao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    const-string v0, "197-237"

    const-string v1, "peng,bang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    return-void
.end method

.method private static initMap198()V
    .locals 2

    .prologue
    .line 1797
    const-string v0, "198-79"

    const-string v1, "chai,cha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    const-string v0, "198-83"

    const-string v1, "hu,xia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    const-string v0, "198-85"

    const-string v1, "hui,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    const-string v0, "198-88"

    const-string v1, "tun,chun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    const-string v0, "198-94"

    const-string v1, "xu,zhu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    const-string v0, "198-95"

    const-string v1, "lun,hua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    const-string v0, "198-103"

    const-string v1, "chan,yin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string v0, "198-108"

    const-string v1, "di,ti"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    const-string v0, "198-114"

    const-string v1, "zhu,ning"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    const-string v0, "198-116"

    const-string v1, "pa,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    const-string v0, "198-122"

    const-string v1, "zuo,zha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    const-string v0, "198-129"

    const-string v1, "sheng,rui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    const-string v0, "198-181"

    const-string v1, "pin,bin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    const-string v0, "198-187"

    const-string v1, "ping,peng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    const-string v0, "198-193"

    const-string v1, "ping,bing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    const-string v0, "198-200"

    const-string v1, "po,pai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    const-string v0, "198-210"

    const-string v1, "pu,bu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    const-string v0, "198-211"

    const-string v1, "piao,pu,po"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    const-string v0, "198-216"

    const-string v1, "pu,bao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    const-string v0, "198-217"

    const-string v1, "pu,bao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    const-string v0, "198-218"

    const-string v1, "qi,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    const-string v0, "198-220"

    const-string v1, "qi,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    const-string v0, "198-228"

    const-string v1, "qi,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    const-string v0, "198-230"

    const-string v1, "qi,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    const-string v0, "198-241"

    const-string v1, "qi,kai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    const-string v0, "198-245"

    const-string v1, "qi,qie,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    const-string v0, "198-246"

    const-string v1, "qi,qie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    return-void
.end method

.method private static initMap199()V
    .locals 2

    .prologue
    .line 1827
    const-string v0, "199-108"

    const-string v1, "peng,feng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    const-string v0, "199-120"

    const-string v1, "su,you"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const-string v0, "199-122"

    const-string v1, "shao,xiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    const-string v0, "199-124"

    const-string v1, "wen,wan,mian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    const-string v0, "199-136"

    const-string v1, "zou,chu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    const-string v0, "199-140"

    const-string v1, "nie,ren"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    const-string v0, "199-143"

    const-string v1, "zi,zai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    const-string v0, "199-157"

    const-string v1, "jie,sha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    const-string v0, "199-159"

    const-string v1, "qiao,zhao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    const-string v0, "199-160"

    const-string v1, "tai,zhi,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    const-string v0, "199-166"

    const-string v1, "qian,yan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    const-string v0, "199-172"

    const-string v1, "qian,gan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    const-string v0, "199-179"

    const-string v1, "qian,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    const-string v0, "199-181"

    const-string v1, "qian,zan,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    const-string v0, "199-182"

    const-string v1, "qian,kan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    const-string v0, "199-191"

    const-string v1, "qiang,jiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    const-string v0, "199-192"

    const-string v1, "qiang,cheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    const-string v0, "199-202"

    const-string v1, "qiao,shao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    const-string v0, "199-206"

    const-string v1, "qiao,xiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const-string v0, "199-210"

    const-string v1, "qie,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    const-string v0, "199-215"

    const-string v1, "qin,qing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    const-string v0, "199-247"

    const-string v1, "qu,cu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    const-string v0, "199-248"

    const-string v1, "qu,ou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    const-string v0, "199-254"

    const-string v1, "qu,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    return-void
.end method

.method private static initMap200()V
    .locals 2

    .prologue
    .line 1854
    const-string v0, "200-66"

    const-string v1, "qin,jin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    const-string v0, "200-72"

    const-string v1, "lin,ma"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    const-string v0, "200-164"

    const-string v1, "qu,cu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    const-string v0, "200-166"

    const-string v1, "quan,juan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    const-string v0, "200-175"

    const-string v1, "quan,xuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    const-string v0, "200-184"

    const-string v1, "que,qiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    const-string v0, "200-244"

    const-string v1, "ruo,re"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    const-string v0, "200-247"

    const-string v1, "sa,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    const-string v0, "200-250"

    const-string v1, "sai,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    const-string v0, "200-251"

    const-string v1, "sai,se"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    return-void
.end method

.method private static initMap201()V
    .locals 2

    .prologue
    .line 1867
    const-string v0, "201-83"

    const-string v1, "ru,na"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    const-string v0, "201-86"

    const-string v1, "yuan,huan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    const-string v0, "201-91"

    const-string v1, "xu,shu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    const-string v0, "201-119"

    const-string v1, "gai,ge,he"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const-string v0, "201-124"

    const-string v1, "yao,zhuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    const-string v0, "201-137"

    const-string v1, "diao,tiao,di"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    const-string v0, "201-146"

    const-string v1, "qiu,xu,fu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    const-string v0, "201-155"

    const-string v1, "zi,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    const-string v0, "201-175"

    const-string v1, "suo,sha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    const-string v0, "201-178"

    const-string v1, "cha,sha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    const-string v0, "201-188"

    const-string v1, "shan,sha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    const-string v0, "201-209"

    const-string v1, "chang,shBng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    const-string v0, "201-210"

    const-string v1, "shao,sao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    const-string v0, "201-223"

    const-string v1, "she,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    const-string v0, "201-227"

    const-string v1, "she,nie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    const-string v0, "201-228"

    const-string v1, "she,ye,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    const-string v0, "201-242"

    const-string v1, "shen,chen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    return-void
.end method

.method private static initMap202()V
    .locals 2

    .prologue
    .line 1887
    const-string v0, "202-161"

    const-string v1, "sheng,xing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    const-string v0, "202-162"

    const-string v1, "sheng,cheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    const-string v0, "202-175"

    const-string v1, "shi,dan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    const-string v0, "202-176"

    const-string v1, "shi,she"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    const-string v0, "202-178"

    const-string v1, "shi,shen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    const-string v0, "202-179"

    const-string v1, "shi,si,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    const-string v0, "202-182"

    const-string v1, "shi,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    const-string v0, "202-207"

    const-string v1, "shi,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    const-string v0, "202-244"

    const-string v1, "shu,zhu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const-string v0, "202-245"

    const-string v1, "shu,zhu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    const-string v0, "202-253"

    const-string v1, "shu,shuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    return-void
.end method

.method private static initMap203()V
    .locals 2

    .prologue
    .line 1901
    const-string v0, "203-64"

    const-string v1, "xi,xiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    const-string v0, "203-72"

    const-string v1, "wan,luan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    const-string v0, "203-78"

    const-string v1, "qiang,se"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    const-string v0, "203-87"

    const-string v1, "xian,lian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    const-string v0, "203-94"

    const-string v1, "hao,kao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    const-string v0, "203-101"

    const-string v1, "yuan,wei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    const-string v0, "203-103"

    const-string v1, "chou,zhou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    const-string v0, "203-104"

    const-string v1, "mai,wo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    const-string v0, "203-114"

    const-string v1, "xiao,hao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    const-string v0, "203-121"

    const-string v1, "diao,zhuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    const-string v0, "203-142"

    const-string v1, "yao,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    const-string v0, "203-145"

    const-string v1, "biao,pao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    const-string v0, "203-160"

    const-string v1, "zhu,chu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    const-string v0, "203-181"

    const-string v1, "shuo,shui,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    const-string v0, "203-182"

    const-string v1, "shuo,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    const-string v0, "203-188"

    const-string v1, "si,sai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    const-string v0, "203-197"

    const-string v1, "si,ci"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    const-string v0, "203-198"

    const-string v1, "si,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    const-string v0, "203-222"

    const-string v1, "su,xiu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    const-string v0, "203-229"

    const-string v1, "sui,duo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    const-string v0, "203-239"

    const-string v1, "sun,xun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    const-string v0, "203-245"

    const-string v1, "suo,su"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    const-string v0, "203-253"

    const-string v1, "ta,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    return-void
.end method

.method private static initMap204()V
    .locals 2

    .prologue
    .line 1927
    const-string v0, "204-192"

    const-string v1, "tang,shang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    const-string v0, "204-200"

    const-string v1, "tang,chang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    const-string v0, "204-202"

    const-string v1, "tang,chang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    const-string v0, "204-225"

    const-string v1, "ti,di"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    const-string v0, "204-238"

    const-string v1, "tian,zhen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    const-string v0, "204-248"

    const-string v1, "tiao,tao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    return-void
.end method

.method private static initMap205()V
    .locals 2

    .prologue
    .line 1936
    const-string v0, "205-75"

    const-string v1, "fang,bang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    const-string v0, "205-86"

    const-string v1, "qi,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    const-string v0, "205-87"

    const-string v1, "yuan,wan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    const-string v0, "205-88"

    const-string v1, "jue,que"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    const-string v0, "205-90"

    const-string v1, "qin,qian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    const-string v0, "205-102"

    const-string v1, "dai,de"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    const-string v0, "205-109"

    const-string v1, "gou,qu,xu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    const-string v0, "205-111"

    const-string v1, "pi,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    const-string v0, "205-120"

    const-string v1, "ge,luo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    const-string v0, "205-123"

    const-string v1, "mang,bang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    const-string v0, "205-130"

    const-string v1, "yi,xu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    const-string v0, "205-137"

    const-string v1, "qie,ni"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    const-string v0, "205-205"

    const-string v1, "tun,zhun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    const-string v0, "205-216"

    const-string v1, "tuo,ta,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    const-string v0, "205-219"

    const-string v1, "wa,wB"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    const-string v0, "205-240"

    const-string v1, "wan,yuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    const-string v0, "205-242"

    const-string v1, "wan,mo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    const-string v0, "205-246"

    const-string v1, "wang,wu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    return-void
.end method

.method private static initMap206()V
    .locals 2

    .prologue
    .line 1957
    const-string v0, "206-151"

    const-string v1, "nai,neng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    const-string v0, "206-152"

    const-string v1, "he,xia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    const-string v0, "206-154"

    const-string v1, "gui,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    const-string v0, "206-178"

    const-string v1, "wei,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    const-string v0, "206-190"

    const-string v1, "wei,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    const-string v0, "206-206"

    const-string v1, "zhua,wo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    const-string v0, "206-208"

    const-string v1, "wo,guo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    const-string v0, "206-211"

    const-string v1, "wo,guan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    const-string v0, "206-225"

    const-string v1, "wu,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    return-void
.end method

.method private static initMap207()V
    .locals 2

    .prologue
    .line 1969
    const-string v0, "207-72"

    const-string v1, "die,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    const-string v0, "207-74"

    const-string v1, "qu,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    const-string v0, "207-77"

    const-string v1, "chan,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    const-string v0, "207-110"

    const-string v1, "fei,ben"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    const-string v0, "207-111"

    const-string v1, "lao,liao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    const-string v0, "207-114"

    const-string v1, "yin,xun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    const-string v0, "207-179"

    const-string v1, "xian,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    const-string v0, "207-180"

    const-string v1, "xi,xian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    const-string v0, "207-181"

    const-string v1, "xi,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    const-string v0, "207-183"

    const-string v1, "xi,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    const-string v0, "207-195"

    const-string v1, "sha,xia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    const-string v0, "207-197"

    const-string v1, "xia,he"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    const-string v0, "207-203"

    const-string v1, "xian,qian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    const-string v0, "207-216"

    const-string v1, "xian,xuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    const-string v0, "207-234"

    const-string v1, "xiang,yang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    const-string v0, "207-239"

    const-string v1, "xiang,hang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    const-string v0, "207-247"

    const-string v1, "xiao,xue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    return-void
.end method

.method private static initMap208()V
    .locals 2

    .prologue
    .line 1989
    const-string v0, "208-136"

    const-string v1, "bao,pao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    const-string v0, "208-141"

    const-string v1, "ju,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    const-string v0, "208-142"

    const-string v1, "he,ke"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    const-string v0, "208-156"

    const-string v1, "na,jue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    const-string v0, "208-163"

    const-string v1, "xiao,jiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    const-string v0, "208-169"

    const-string v1, "xie,suo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    const-string v0, "208-174"

    const-string v1, "xie,jia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    const-string v0, "208-176"

    const-string v1, "xie,ya,ye,yu,xu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    const-string v0, "208-185"

    const-string v1, "xie,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    const-string v0, "208-197"

    const-string v1, "xin,shen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    const-string v0, "208-208"

    const-string v1, "xing,hang,heng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    const-string v0, "208-221"

    const-string v1, "xiu,xu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    const-string v0, "208-234"

    const-string v1, "xu,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    const-string v0, "208-237"

    const-string v1, "xu,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    const-string v0, "208-243"

    const-string v1, "xu,chu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    return-void
.end method

.method private static initMap209()V
    .locals 2

    .prologue
    .line 2007
    const-string v0, "209-68"

    const-string v1, "chi,nuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    const-string v0, "209-69"

    const-string v1, "chi,qi,duo,nuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    const-string v0, "209-73"

    const-string v1, "jian,zun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    const-string v0, "209-74"

    const-string v1, "bo,mo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    const-string v0, "209-79"

    const-string v1, "gui,gua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    const-string v0, "209-92"

    const-string v1, "ge,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    const-string v0, "209-110"

    const-string v1, "chou,dao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    const-string v0, "209-114"

    const-string v1, "yuan,gun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    const-string v0, "209-115"

    const-string v1, "yan,an"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    const-string v0, "209-189"

    const-string v1, "ya,yB"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    const-string v0, "209-202"

    const-string v1, "yan,ye"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    const-string v0, "209-242"

    const-string v1, "yang,xiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    const-string v0, "209-246"

    const-string v1, "yang,ang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    return-void
.end method

.method private static initMap210()V
    .locals 2

    .prologue
    .line 2023
    const-string v0, "210-134"

    const-string v1, "ba,po"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    const-string v0, "210-138"

    const-string v1, "jian,xian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    const-string v0, "210-143"

    const-string v1, "jue,jiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    const-string v0, "210-148"

    const-string v1, "pie,mie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    const-string v0, "210-153"

    const-string v1, "jue,jiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    const-string v0, "210-182"

    const-string v1, "ye,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    const-string v0, "210-201"

    const-string v1, "yi,ni"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    const-string v0, "210-243"

    const-string v1, "yin,yan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    return-void
.end method

.method private static initMap211()V
    .locals 2

    .prologue
    .line 2034
    const-string v0, "211-72"

    const-string v1, "qin,qing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    const-string v0, "211-83"

    const-string v1, "jian,bian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    const-string v0, "211-84"

    const-string v1, "luo,luan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    const-string v0, "211-88"

    const-string v1, "jue,jiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    const-string v0, "211-105"

    const-string v1, "hua,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    const-string v0, "211-110"

    const-string v1, "jie,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2040
    const-string v0, "211-115"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    const-string v0, "211-123"

    const-string v1, "xue,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    const-string v0, "211-128"

    const-string v1, "li,lu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    const-string v0, "211-191"

    const-string v1, "yong,chong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    const-string v0, "211-225"

    const-string v1, "yu,shu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    const-string v0, "211-228"

    const-string v1, "yu,tou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    const-string v0, "211-245"

    const-string v1, "xu,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    return-void
.end method

.method private static initMap212()V
    .locals 2

    .prologue
    .line 2050
    const-string v0, "212-177"

    const-string v1, "yuan,yun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    const-string v0, "212-188"

    const-string v1, "yue,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    const-string v0, "212-191"

    const-string v1, "yue,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    const-string v0, "212-219"

    const-string v1, "zan,za,zBn"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    const-string v0, "212-220"

    const-string v1, "zan,cuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    const-string v0, "212-241"

    const-string v1, "ze,zhai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    const-string v0, "212-243"

    const-string v1, "ze,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    const-string v0, "212-248"

    const-string v1, "zeng,ceng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    const-string v0, "212-250"

    const-string v1, "za,zha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    const-string v0, "212-251"

    const-string v1, "zha,cha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    return-void
.end method

.method private static initMap213()V
    .locals 2

    .prologue
    .line 2063
    const-string v0, "213-65"

    const-string v1, "tiao,diao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    const-string v0, "213-66"

    const-string v1, "yi,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    const-string v0, "213-79"

    const-string v1, "ei,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    const-string v0, "213-82"

    const-string v1, "bei,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    const-string v0, "213-102"

    const-string v1, "shuo,shui,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    const-string v0, "213-104"

    const-string v1, "shuo,shui,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    const-string v0, "213-108"

    const-string v1, "shui,shei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    const-string v0, "213-111"

    const-string v1, "qu,jue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    const-string v0, "213-118"

    const-string v1, "chi,lai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    const-string v0, "213-121"

    const-string v1, "ni,na"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    const-string v0, "213-123"

    const-string v1, "diao,tiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    const-string v0, "213-124"

    const-string v1, "pi,bei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    const-string v0, "213-139"

    const-string v1, "ze,zuo,zha,cuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    const-string v0, "213-145"

    const-string v1, "chu,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    const-string v0, "213-146"

    const-string v1, "xia,hao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    const-string v0, "213-156"

    const-string v1, "shi,di"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    const-string v0, "213-160"

    const-string v1, "hua,gua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    const-string v0, "213-164"

    const-string v1, "zha,shan,shi,ce"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    const-string v0, "213-166"

    const-string v1, "zha,za"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    const-string v0, "213-183"

    const-string v1, "zhan,nian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    const-string v0, "213-184"

    const-string v1, "zhan,chan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    const-string v0, "213-217"

    const-string v1, "zhao,shao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    const-string v0, "213-219"

    const-string v1, "zhe,she"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    const-string v0, "213-226"

    const-string v1, "zhe,zhei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    return-void
.end method

.method private static initMap214()V
    .locals 2

    .prologue
    .line 2090
    const-string v0, "214-76"

    const-string v1, "xi,shai,ai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    const-string v0, "214-166"

    const-string v1, "zhi,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    const-string v0, "214-168"

    const-string v1, "zhi,zi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    const-string v0, "214-179"

    const-string v1, "zhi,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    const-string v0, "214-197"

    const-string v1, "zhi,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    const-string v0, "214-216"

    const-string v1, "zhong,chong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    const-string v0, "214-224"

    const-string v1, "zhou,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    const-string v0, "214-236"

    const-string v1, "zhu,shu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    const-string v0, "214-248"

    const-string v1, "zhu,zhuo,zhe"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    const-string v0, "214-250"

    const-string v1, "zhu,chu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    return-void
.end method

.method private static initMap215()V
    .locals 2

    .prologue
    .line 2103
    const-string v0, "215-122"

    const-string v1, "juan,xuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    const-string v0, "215-130"

    const-string v1, "yi,tui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    const-string v0, "215-158"

    const-string v1, "zhou,chou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    const-string v0, "215-166"

    const-string v1, "zhao,zhua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    const-string v0, "215-167"

    const-string v1, "zhuai,ye"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    const-string v0, "215-181"

    const-string v1, "zhui,chui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    const-string v0, "215-183"

    const-string v1, "zhui,dui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    const-string v0, "215-193"

    const-string v1, "zhuo,zuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    const-string v0, "215-197"

    const-string v1, "zhuo,zhao,zhe"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    const-string v0, "215-200"

    const-string v1, "zi,ci"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    const-string v0, "215-208"

    const-string v1, "zi,zai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    const-string v0, "215-219"

    const-string v1, "zong,zeng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    const-string v0, "215-228"

    const-string v1, "zu,cu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    const-string v0, "215-245"

    const-string v1, "zuo,zha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    return-void
.end method

.method private static initMap216()V
    .locals 2

    .prologue
    .line 2120
    const-string v0, "216-126"

    const-string v1, "ken,kun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    const-string v0, "216-128"

    const-string v1, "he,mo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    const-string v0, "216-139"

    const-string v1, "ju,lou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    const-string v0, "216-146"

    const-string v1, "yuan,yun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    const-string v0, "216-159"

    const-string v1, "ze,zhai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    const-string v0, "216-162"

    const-string v1, "qi,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    const-string v0, "216-174"

    const-string v1, "yu,ou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    const-string v0, "216-177"

    const-string v1, "tuo,zhe"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    const-string v0, "216-189"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    const-string v0, "216-191"

    const-string v1, "mie,nie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    const-string v0, "216-209"

    const-string v1, "kui,gui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    const-string v0, "216-223"

    const-string v1, "yan,shan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    const-string v0, "216-238"

    const-string v1, "yi,ge"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    const-string v0, "216-247"

    const-string v1, "cang,chen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    const-string v0, "216-253"

    const-string v1, "yi,die"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    const-string v0, "216-254"

    const-string v1, "gou,kou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    return-void
.end method

.method private static initMap217()V
    .locals 2

    .prologue
    .line 2139
    const-string v0, "217-74"

    const-string v1, "dai,te"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    const-string v0, "217-83"

    const-string v1, "bi,ben"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    const-string v0, "217-90"

    const-string v1, "jia,gu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    const-string v0, "217-130"

    const-string v1, "xiong,min"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    const-string v0, "217-141"

    const-string v1, "zhuan,zuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    const-string v0, "217-164"

    const-string v1, "qie,jia,ga"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    const-string v0, "217-166"

    const-string v1, "er,nai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    const-string v0, "217-185"

    const-string v1, "si,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    const-string v0, "217-193"

    const-string v1, "wo,wei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    const-string v0, "217-202"

    const-string v1, "ji,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    const-string v0, "217-205"

    const-string v1, "lv,lou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    const-string v0, "217-215"

    const-string v1, "tong,zhuang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    return-void
.end method

.method private static initMap218()V
    .locals 2

    .prologue
    .line 2154
    const-string v0, "218-103"

    const-string v1, "die,tu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    const-string v0, "218-108"

    const-string v1, "ji,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    const-string v0, "218-111"

    const-string v1, "gua,huo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    const-string v0, "218-124"

    const-string v1, "que,qi,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    const-string v0, "218-133"

    const-string v1, "qu,cu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    const-string v0, "218-140"

    const-string v1, "ti,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    const-string v0, "218-143"

    const-string v1, "kua,wu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    const-string v0, "218-145"

    const-string v1, "jue,gui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    const-string v0, "218-147"

    const-string v1, "fang,pang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    const-string v0, "218-149"

    const-string v1, "ba,pao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    const-string v0, "218-153"

    const-string v1, "jian,chen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    const-string v0, "218-177"

    const-string v1, "yi,dai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    const-string v0, "218-181"

    const-string v1, "jie,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    const-string v0, "218-192"

    const-string v1, "ei,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    const-string v0, "218-243"

    const-string v1, "wei,kui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    return-void
.end method

.method private static initMap219()V
    .locals 2

    .prologue
    .line 2172
    const-string v0, "219-64"

    const-string v1, "dian,tie,die"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    const-string v0, "219-65"

    const-string v1, "pan,ban"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    const-string v0, "219-66"

    const-string v1, "ju,qie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    const-string v0, "219-70"

    const-string v1, "dai,duo,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    const-string v0, "219-77"

    const-string v1, "pian,beng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    const-string v0, "219-83"

    const-string v1, "shu,chou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    const-string v0, "219-167"

    const-string v1, "qie,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    const-string v0, "219-168"

    const-string v1, "xun,huan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    const-string v0, "219-170"

    const-string v1, "li,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    const-string v0, "219-193"

    const-string v1, "ge,jia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    const-string v0, "219-201"

    const-string v1, "kan,qian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    const-string v0, "219-204"

    const-string v1, "si,mou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    const-string v0, "219-215"

    const-string v1, "wei,xu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    const-string v0, "219-223"

    const-string v1, "qi,yin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    const-string v0, "219-230"

    const-string v1, "di,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    const-string v0, "219-237"

    const-string v1, "dong,tong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    const-string v0, "219-239"

    const-string v1, "yan,shan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    const-string v0, "219-249"

    const-string v1, "yuan,huan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    return-void
.end method

.method private static initMap220()V
    .locals 2

    .prologue
    .line 2193
    const-string v0, "220-86"

    const-string v1, "li,luo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    const-string v0, "220-97"

    const-string v1, "sa,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    const-string v0, "220-135"

    const-string v1, "che,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    const-string v0, "220-136"

    const-string v1, "ya,zha,ga"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    const-string v0, "220-140"

    const-string v1, "xin,xian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    const-string v0, "220-143"

    const-string v1, "fan,gui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    const-string v0, "220-161"

    const-string v1, "peng,beng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    const-string v0, "220-190"

    const-string v1, "yuan,yan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    const-string v0, "220-192"

    const-string v1, "fei,fu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    const-string v0, "220-196"

    const-string v1, "ju,qu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    const-string v0, "220-197"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    const-string v0, "220-204"

    const-string v1, "wu,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    const-string v0, "220-230"

    const-string v1, "tiao,shao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    return-void
.end method

.method private static initMap221()V
    .locals 2

    .prologue
    .line 2209
    const-string v0, "221-178"

    const-string v1, "xian,lian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    const-string v0, "221-179"

    const-string v1, "fu,piao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    const-string v0, "221-183"

    const-string v1, "shen,xin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    const-string v0, "221-184"

    const-string v1, "guan,wan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    const-string v0, "221-185"

    const-string v1, "lang,liang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    const-string v0, "221-210"

    const-string v1, "wan,yun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    const-string v0, "221-222"

    const-string v1, "kui,kuai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    return-void
.end method

.method private static initMap222()V
    .locals 2

    .prologue
    .line 2219
    const-string v0, "222-120"

    const-string v1, "dao,bian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    const-string v0, "222-130"

    const-string v1, "wang,kuang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    const-string v0, "222-140"

    const-string v1, "zhi,li"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    const-string v0, "222-142"

    const-string v1, "zhu,wang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    const-string v0, "222-164"

    const-string v1, "liao,lu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    const-string v0, "222-202"

    const-string v1, "zang,zhuang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    const-string v0, "222-213"

    const-string v1, "pan,pin,fan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    const-string v0, "222-214"

    const-string v1, "ao,niu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    const-string v0, "222-215"

    const-string v1, "jie,jia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    const-string v0, "222-217"

    const-string v1, "za,zan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    const-string v0, "222-219"

    const-string v1, "luo,lv"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    const-string v0, "222-233"

    const-string v1, "she,die,ye"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    return-void
.end method

.method private static initMap223()V
    .locals 2

    .prologue
    .line 2234
    const-string v0, "223-128"

    const-string v1, "huan,hai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    const-string v0, "223-134"

    const-string v1, "li,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    const-string v0, "223-146"

    const-string v1, "kang,hang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    const-string v0, "223-168"

    const-string v1, "pi,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    const-string v0, "223-175"

    const-string v1, "te,tui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    const-string v0, "223-182"

    const-string v1, "tao,dao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    const-string v0, "223-188"

    const-string v1, "fu,?"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2241
    const-string v0, "223-193"

    const-string v1, "pi,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    const-string v0, "223-194"

    const-string v1, "bei,bai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    const-string v0, "223-195"

    const-string v1, "wai,he,wo,wa,gua,guo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    const-string v0, "223-197"

    const-string v1, "yin,shen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    const-string v0, "223-201"

    const-string v1, "gua,gu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    const-string v0, "223-210"

    const-string v1, "ji,xi,qia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    const-string v0, "223-218"

    const-string v1, "zi,ci"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    const-string v0, "223-220"

    const-string v1, "yue,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    const-string v0, "223-226"

    const-string v1, "ji,jie,zhai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    const-string v0, "223-231"

    const-string v1, "gen,hen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    const-string v0, "223-246"

    const-string v1, "nuo,re"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    const-string v0, "223-248"

    const-string v1, "lan,lin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    const-string v0, "223-250"

    const-string v1, "zhou,zhao,tiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    const-string v0, "223-253"

    const-string v1, "cui,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    return-void
.end method

.method private static initMap224()V
    .locals 2

    .prologue
    .line 2258
    const-string v0, "224-64"

    const-string v1, "gai,hai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    const-string v0, "224-85"

    const-string v1, "xiao,ao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2260
    const-string v0, "224-168"

    const-string v1, "chuo,chuai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    const-string v0, "224-169"

    const-string v1, "die,zha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    const-string v0, "224-170"

    const-string v1, "ta,da"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    const-string v0, "224-184"

    const-string v1, "o,wo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    const-string v0, "224-196"

    const-string v1, "sha,a"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    const-string v0, "224-201"

    const-string v1, "yi,ai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    const-string v0, "224-203"

    const-string v1, "hai,hei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    const-string v0, "224-229"

    const-string v1, "jue,xue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    const-string v0, "224-234"

    const-string v1, "ca,cha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    const-string v0, "224-237"

    const-string v1, "wei,guo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    const-string v0, "224-238"

    const-string v1, "jian,nan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    const-string v0, "224-247"

    const-string v1, "huan,yuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    const-string v0, "224-251"

    const-string v1, "tang,nu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    const-string v0, "224-252"

    const-string v1, "chou,dao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    return-void
.end method

.method private static initMap225()V
    .locals 2

    .prologue
    .line 2277
    const-string v0, "225-93"

    const-string v1, "tan,dan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    const-string v0, "225-98"

    const-string v1, "qiu,chou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    const-string v0, "225-112"

    const-string v1, "chan,chen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    const-string v0, "225-119"

    const-string v1, "po,fa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    const-string v0, "225-121"

    const-string v1, "yi,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    const-string v0, "225-122"

    const-string v1, "yan,lian,xian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    const-string v0, "225-160"

    const-string v1, "qiao,jiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    const-string v0, "225-188"

    const-string v1, "tong,dong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    const-string v0, "225-189"

    const-string v1, "jiao,qiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    const-string v0, "225-203"

    const-string v1, "wai,wei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    const-string v0, "225-221"

    const-string v1, "pang,fang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    const-string v0, "225-231"

    const-string v1, "zhi,zheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    const-string v0, "225-234"

    const-string v1, "shan,xian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    const-string v0, "225-237"

    const-string v1, "han,an"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    return-void
.end method

.method private static initMap226()V
    .locals 2

    .prologue
    .line 2294
    const-string v0, "226-68"

    const-string v1, "hua,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    const-string v0, "226-69"

    const-string v1, "hua,wu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    const-string v0, "226-74"

    const-string v1, "ri,ren,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    const-string v0, "226-75"

    const-string v1, "di,dai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    const-string v0, "226-80"

    const-string v1, "shi,yi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    const-string v0, "226-86"

    const-string v1, "ri,ren,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    const-string v0, "226-87"

    const-string v1, "pi,zhao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    const-string v0, "226-88"

    const-string v1, "ye,ya"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    const-string v0, "226-186"

    const-string v1, "zhi,zhong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    const-string v0, "226-219"

    const-string v1, "jin,qin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    const-string v0, "226-236"

    const-string v1, "song,zhong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    const-string v0, "226-244"

    const-string v1, "zuo,zha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    return-void
.end method

.method private static initMap227()V
    .locals 2

    .prologue
    .line 2309
    const-string v0, "227-125"

    const-string v1, "xiang,jiong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    const-string v0, "227-131"

    const-string v1, "yu,si"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    const-string v0, "227-132"

    const-string v1, "xu,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    const-string v0, "227-136"

    const-string v1, "shan,shuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    const-string v0, "227-137"

    const-string v1, "chi,li"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    const-string v0, "227-138"

    const-string v1, "xian,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    const-string v0, "227-144"

    const-string v1, "hou,xiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2316
    const-string v0, "227-147"

    const-string v1, "diao,tiao,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    const-string v0, "227-148"

    const-string v1, "xian,kuo,tian,gua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    const-string v0, "227-166"

    const-string v1, "kui,li"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    const-string v0, "227-187"

    const-string v1, "qian,qie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    const-string v0, "227-196"

    const-string v1, "hui,duo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    const-string v0, "227-219"

    const-string v1, "kan,han"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    const-string v0, "227-233"

    const-string v1, "gu,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    const-string v0, "227-235"

    const-string v1, "wen,men"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    const-string v0, "227-241"

    const-string v1, "long,shuang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    const-string v0, "227-245"

    const-string v1, "tuo,duo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    const-string v0, "227-248"

    const-string v1, "luo,po"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    return-void
.end method

.method private static initMap228()V
    .locals 2

    .prologue
    .line 2330
    const-string v0, "228-75"

    const-string v1, "shi,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    const-string v0, "228-79"

    const-string v1, "zhe,nie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    const-string v0, "228-84"

    const-string v1, "xian,kuo,tian,gua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    const-string v0, "228-85"

    const-string v1, "hong,gong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    const-string v0, "228-86"

    const-string v1, "zhong,yong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    const-string v0, "228-87"

    const-string v1, "tou,tu,dou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    const-string v0, "228-89"

    const-string v1, "mei,meng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    const-string v0, "228-91"

    const-string v1, "wan,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    const-string v0, "228-93"

    const-string v1, "yun,jun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    const-string v0, "228-98"

    const-string v1, "ting,ding"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    const-string v0, "228-103"

    const-string v1, "juan,jian,cuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    const-string v0, "228-109"

    const-string v1, "xuan,juan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    const-string v0, "228-110"

    const-string v1, "hua,wu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    const-string v0, "228-114"

    const-string v1, "zhuo,chuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    const-string v0, "228-116"

    const-string v1, "xing,jing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    const-string v0, "228-142"

    const-string v1, "zui,nie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    const-string v0, "228-145"

    const-string v1, "yuan,wan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2347
    const-string v0, "228-171"

    const-string v1, "kuai,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    const-string v0, "228-176"

    const-string v1, "hu,xu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    const-string v0, "228-194"

    const-string v1, "du,dou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    const-string v0, "228-196"

    const-string v1, "pi,pei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    const-string v0, "228-197"

    const-string v1, "mian,sheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    const-string v0, "228-206"

    const-string v1, "yan,yin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    const-string v0, "228-208"

    const-string v1, "qiu,jiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    const-string v0, "228-218"

    const-string v1, "zhen,qin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    const-string v0, "228-234"

    const-string v1, "huang,guang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    const-string v0, "228-240"

    const-string v1, "luo,ta"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    const-string v0, "228-248"

    const-string v1, "shu,zhu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    return-void
.end method

.method private static initMap229()V
    .locals 2

    .prologue
    .line 2361
    const-string v0, "229-163"

    const-string v1, "dan,tan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    const-string v0, "229-168"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    const-string v0, "229-170"

    const-string v1, "zhuo,zhao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    const-string v0, "229-181"

    const-string v1, "mi,fu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    const-string v0, "229-238"

    const-string v1, "chan,can"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    const-string v0, "229-248"

    const-string v1, "che,cao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    const-string v0, "229-250"

    const-string v1, "fei,pei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    return-void
.end method

.method private static initMap230()V
    .locals 2

    .prologue
    .line 2371
    const-string v0, "230-92"

    const-string v1, "cuo,cha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2372
    const-string v0, "230-93"

    const-string v1, "da,ta"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    const-string v0, "230-97"

    const-string v1, "suo,se"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    const-string v0, "230-99"

    const-string v1, "yao,zu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    const-string v0, "230-100"

    const-string v1, "ye,ta,ge"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    const-string v0, "230-106"

    const-string v1, "qiang,cheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    const-string v0, "230-107"

    const-string v1, "ge,li"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    const-string v0, "230-113"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    const-string v0, "230-126"

    const-string v1, "wan,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    const-string v0, "230-128"

    const-string v1, "gao,hao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    const-string v0, "230-151"

    const-string v1, "zu,chuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    const-string v0, "230-157"

    const-string v1, "shou,sou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    const-string v0, "230-175"

    const-string v1, "jiao,xiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2384
    const-string v0, "230-193"

    const-string v1, "ao,yun,wo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    const-string v0, "230-244"

    const-string v1, "piao,biao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    const-string v0, "230-252"

    const-string v1, "he,ge"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    return-void
.end method

.method private static initMap231()V
    .locals 2

    .prologue
    .line 2390
    const-string v0, "231-68"

    const-string v1, "san,qiao,can"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    const-string v0, "231-71"

    const-string v1, "lu,ao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    const-string v0, "231-90"

    const-string v1, "jian,zan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    const-string v0, "231-105"

    const-string v1, "hui,sui,rui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    const-string v0, "231-111"

    const-string v1, "san,xian,sa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    const-string v0, "231-162"

    const-string v1, "pi,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    const-string v0, "231-194"

    const-string v1, "bian,pian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    const-string v0, "231-209"

    const-string v1, "mou,miu,miao,mu,liao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    const-string v0, "231-216"

    const-string v1, "qiao,sao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    const-string v0, "231-222"

    const-string v1, "zai,zi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    const-string v0, "231-227"

    const-string v1, "bin,fen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    const-string v0, "231-228"

    const-string v1, "min,wen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2402
    const-string v0, "231-245"

    const-string v1, "hun,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2403
    return-void
.end method

.method private static initMap232()V
    .locals 2

    .prologue
    .line 2406
    const-string v0, "232-149"

    const-string v1, "sa,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    const-string v0, "232-157"

    const-string v1, "xian,kuo,tian,gua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    const-string v0, "232-185"

    const-string v1, "yun,wen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    const-string v0, "232-188"

    const-string v1, "shao,biao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    const-string v0, "232-200"

    const-string v1, "cong,zong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    const-string v0, "232-202"

    const-string v1, "fang,bing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    const-string v0, "232-219"

    const-string v1, "ju,gou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    const-string v0, "232-221"

    const-string v1, "li,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    const-string v0, "232-222"

    const-string v1, "tuo,duo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    const-string v0, "232-233"

    const-string v1, "gua,tian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    const-string v0, "232-236"

    const-string v1, "heng,hang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    const-string v0, "232-237"

    const-string v1, "gui,hui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    const-string v0, "232-254"

    const-string v1, "zhao,zhuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    return-void
.end method

.method private static initMap233()V
    .locals 2

    .prologue
    .line 2422
    const-string v0, "233-88"

    const-string v1, "huo,shan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    const-string v0, "233-92"

    const-string v1, "han,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    const-string v0, "233-94"

    const-string v1, "ci ka Bi lu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    const-string v0, "233-102"

    const-string v1, "xian,jian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    const-string v0, "233-112"

    const-string v1, "xia,ke"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    const-string v0, "233-114"

    const-string v1, "bian,guan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    const-string v0, "233-123"

    const-string v1, "hong,xiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    const-string v0, "233-145"

    const-string v1, "e,yan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    const-string v0, "233-151"

    const-string v1, "hong,juan,xiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    const-string v0, "233-155"

    const-string v1, "ban,pan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    const-string v0, "233-166"

    const-string v1, "di,dai,ti"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    const-string v0, "233-168"

    const-string v1, "cou,zou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    const-string v0, "233-169"

    const-string v1, "zhen,shen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    const-string v0, "233-171"

    const-string v1, "zha,cha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    const-string v0, "233-196"

    const-string v1, "bin,bing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    const-string v0, "233-202"

    const-string v1, "qi,se"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2438
    return-void
.end method

.method private static initMap234()V
    .locals 2

    .prologue
    .line 2441
    const-string v0, "234-67"

    const-string v1, "pBi ying,po he deng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    const-string v0, "234-79"

    const-string v1, "tang,chang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    const-string v0, "234-82"

    const-string v1, "kan,han"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    const-string v0, "234-83"

    const-string v1, "xi,se,ta"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    const-string v0, "234-92"

    const-string v1, "han,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    const-string v0, "234-156"

    const-string v1, "yu,yao,shu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    const-string v0, "234-160"

    const-string v1, "dui,zhui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2448
    const-string v0, "234-176"

    const-string v1, "zang,cang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    const-string v0, "234-186"

    const-string v1, "gan,han"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    const-string v0, "234-193"

    const-string v1, "jiong,gui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2451
    const-string v0, "234-200"

    const-string v1, "qi,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    const-string v0, "234-201"

    const-string v1, "sheng,cheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    const-string v0, "234-249"

    const-string v1, "jian,qian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    const-string v0, "234-253"

    const-string v1, "suo,sB,shB"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    return-void
.end method

.method private static initMap235()V
    .locals 2

    .prologue
    .line 2458
    const-string v0, "235-66"

    const-string v1, "qi,gai,ai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    const-string v0, "235-68"

    const-string v1, "hui,duo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    const-string v0, "235-84"

    const-string v1, "ao,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    const-string v0, "235-95"

    const-string v1, "li,dai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    const-string v0, "235-96"

    const-string v1, "li,dai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    const-string v0, "235-97"

    const-string v1, "hu,he"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    const-string v0, "235-104"

    const-string v1, "jun,juan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2465
    const-string v0, "235-113"

    const-string v1, "guan,huan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    const-string v0, "235-118"

    const-string v1, "gui,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2467
    const-string v0, "235-121"

    const-string v1, "nan,nuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    const-string v0, "235-129"

    const-string v1, "se,xi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    const-string v0, "235-137"

    const-string v1, "wu,meng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    const-string v0, "235-162"

    const-string v1, "bo,bai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    const-string v0, "235-192"

    const-string v1, "rong,chen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    const-string v0, "235-198"

    const-string v1, "zhun,chun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    const-string v0, "235-212"

    const-string v1, "qu,xu,chun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    const-string v0, "235-254"

    const-string v1, "shan,dan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2475
    return-void
.end method

.method private static initMap236()V
    .locals 2

    .prologue
    .line 2478
    const-string v0, "236-145"

    const-string v1, "ge,ta,sa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    const-string v0, "236-147"

    const-string v1, "jie,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    const-string v0, "236-153"

    const-string v1, "bian,ying"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    const-string v0, "236-156"

    const-string v1, "xuan,juan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    const-string v0, "236-160"

    const-string v1, "shang,zhang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    const-string v0, "236-168"

    const-string v1, "xi,she"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2484
    const-string v0, "236-182"

    const-string v1, "yu,wu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    const-string v0, "236-204"

    const-string v1, "zhuo,chao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2486
    const-string v0, "236-217"

    const-string v1, "yun,yu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    const-string v0, "236-225"

    const-string v1, "huo,biao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    const-string v0, "236-248"

    const-string v1, "chan,shan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2489
    return-void
.end method

.method private static initMap237()V
    .locals 2

    .prologue
    .line 2492
    const-string v0, "237-64"

    const-string v1, "bing,pi,bi,bei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2493
    const-string v0, "237-67"

    const-string v1, "xie,die"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    const-string v0, "237-74"

    const-string v1, "mu,mou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    const-string v0, "237-77"

    const-string v1, "wen,yun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    const-string v0, "237-83"

    const-string v1, "bi,bing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    const-string v0, "237-105"

    const-string v1, "mei,wa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    const-string v0, "237-115"

    const-string v1, "she,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    const-string v0, "237-165"

    const-string v1, "nen,nin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    const-string v0, "237-176"

    const-string v1, "gang,zhuang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2501
    const-string v0, "237-179"

    const-string v1, "ta,da"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    const-string v0, "237-185"

    const-string v1, "xu,hua"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    const-string v0, "237-199"

    const-string v1, "li,la"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    const-string v0, "237-201"

    const-string v1, "fu,fei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    const-string v0, "237-209"

    const-string v1, "luo,ge"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    const-string v0, "237-217"

    const-string v1, "jie,ya"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    const-string v0, "237-244"

    const-string v1, "yi,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    const-string v0, "237-245"

    const-string v1, "gui,sui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    return-void
.end method

.method private static initMap238()V
    .locals 2

    .prologue
    .line 2512
    const-string v0, "238-174"

    const-string v1, "ting,ding"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    const-string v0, "238-217"

    const-string v1, "ba,pa"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2514
    const-string v0, "238-228"

    const-string v1, "dian,tian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    const-string v0, "238-232"

    const-string v1, "ta,tuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    const-string v0, "238-245"

    const-string v1, "dang,cheng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2517
    const-string v0, "238-250"

    const-string v1, "ting,ding"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    const-string v0, "238-254"

    const-string v1, "ha,ke"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2519
    return-void
.end method

.method private static initMap239()V
    .locals 2

    .prologue
    .line 2522
    const-string v0, "239-77"

    const-string v1, "biao,diu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    const-string v0, "239-84"

    const-string v1, "ba,fu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    const-string v0, "239-98"

    const-string v1, "sao,sou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    const-string v0, "239-102"

    const-string v1, "liu,liao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2526
    const-string v0, "239-133"

    const-string v1, "yang,juan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    const-string v0, "239-140"

    const-string v1, "zhu,tou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2528
    const-string v0, "239-142"

    const-string v1, "zuo,ze,zha"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    const-string v0, "239-162"

    const-string v1, "diao,tiao,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2530
    return-void
.end method

.method private static initMap240()V
    .locals 2

    .prologue
    .line 2533
    const-string v0, "240-221"

    const-string v1, "li,lai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    const-string v0, "240-251"

    const-string v1, "chai,cuo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    const-string v0, "240-253"

    const-string v1, "jia,xia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    return-void
.end method

.method private static initMap241()V
    .locals 2

    .prologue
    .line 2539
    const-string v0, "241-78"

    const-string v1, "yun,wo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    const-string v0, "241-84"

    const-string v1, "feng,ping"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    const-string v0, "241-87"

    const-string v1, "tuo,duo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    const-string v0, "241-88"

    const-string v1, "tuo,zhe"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2543
    const-string v0, "241-92"

    const-string v1, "zhi,shi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    const-string v0, "241-94"

    const-string v1, "xin,jin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    const-string v0, "241-105"

    const-string v1, "jue,kuai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    const-string v0, "241-106"

    const-string v1, "tuo,duo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2547
    const-string v0, "241-126"

    const-string v1, "tai,dai"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    const-string v0, "241-143"

    const-string v1, "xun,xuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    const-string v0, "241-187"

    const-string v1, "tiao,yao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    const-string v0, "241-191"

    const-string v1, "yin,xun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    const-string v0, "241-202"

    const-string v1, "jia,jie,qia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2552
    const-string v0, "241-211"

    const-string v1, "xi,ti"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    const-string v0, "241-212"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    const-string v0, "241-226"

    const-string v1, "pi,ya,shu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    const-string v0, "241-230"

    const-string v1, "jin,qin,guan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    const-string v0, "241-251"

    const-string v1, "tan,qin"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    return-void
.end method

.method private static initMap242()V
    .locals 2

    .prologue
    .line 2560
    const-string v0, "242-64"

    const-string v1, "liang,lang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    const-string v0, "242-161"

    const-string v1, "jie,xie,jia"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    const-string v0, "242-162"

    const-string v1, "he,ge"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2563
    const-string v0, "242-188"

    const-string v1, "gong,zhong"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    const-string v0, "242-254"

    const-string v1, "mang,meng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    return-void
.end method

.method private static initMap243()V
    .locals 2

    .prologue
    .line 2568
    const-string v0, "243-99"

    const-string v1, "bei,mo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2569
    const-string v0, "243-102"

    const-string v1, "qiao,xiao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2570
    const-string v0, "243-112"

    const-string v1, "bo,jue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    const-string v0, "243-143"

    const-string v1, "bi,po"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    const-string v0, "243-144"

    const-string v1, "mao,meng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    const-string v0, "243-150"

    const-string v1, "kuo,yue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    const-string v0, "243-167"

    const-string v1, "shi,zhe"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    const-string v0, "243-195"

    const-string v1, "zhu,du"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    const-string v0, "243-208"

    const-string v1, "zuo,ze"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    const-string v0, "243-222"

    const-string v1, "yun,jun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    const-string v0, "243-228"

    const-string v1, "qing,jing"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    const-string v0, "243-238"

    const-string v1, "wan,yuan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    return-void
.end method

.method private static initMap244()V
    .locals 2

    .prologue
    .line 2583
    const-string v0, "244-210"

    const-string v1, "zi,ci"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    const-string v0, "244-214"

    const-string v1, "san,shen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    const-string v0, "244-233"

    const-string v1, "mi,si"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    const-string v0, "244-236"

    const-string v1, "qing,qi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    const-string v0, "244-237"

    const-string v1, "yao,you,zhou"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    const-string v0, "244-242"

    const-string v1, "qie,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    return-void
.end method

.method private static initMap245()V
    .locals 2

    .prologue
    .line 2592
    const-string v0, "245-74"

    const-string v1, "ci,ji"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    const-string v0, "245-78"

    const-string v1, "bo,ba"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    const-string v0, "245-105"

    const-string v1, "luo,ge"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2595
    const-string v0, "245-113"

    const-string v1, "gui,xie,wa,kui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2596
    const-string v0, "245-139"

    const-string v1, "pu,bu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    const-string v0, "245-192"

    const-string v1, "bao,bo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    const-string v0, "245-200"

    const-string v1, "li,luo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    const-string v0, "245-254"

    const-string v1, "zi,zui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    return-void
.end method

.method private static initMap246()V
    .locals 2

    .prologue
    .line 2603
    const-string v0, "246-71"

    const-string v1, "yi,si"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    const-string v0, "246-149"

    const-string v1, "ha ta ha ta"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    const-string v0, "246-184"

    const-string v1, "yin,ken"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    const-string v0, "246-188"

    const-string v1, "min,mian,meng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    const-string v0, "246-191"

    const-string v1, "zhui,cui,wei"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    const-string v0, "246-193"

    const-string v1, "jun,juan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    const-string v0, "246-196"

    const-string v1, "qu,ju"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    const-string v0, "246-217"

    const-string v1, "gui,xie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    return-void
.end method

.method private static initMap247()V
    .locals 2

    .prologue
    .line 2614
    const-string v0, "247-133"

    const-string v1, "he,ge"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    const-string v0, "247-136"

    const-string v1, "bo,ba"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    const-string v0, "247-172"

    const-string v1, "gui,jue"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    const-string v0, "247-180"

    const-string v1, "man,men"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2618
    const-string v0, "247-225"

    const-string v1, "mo,me"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    const-string v0, "247-229"

    const-string v1, "jun,qun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    return-void
.end method

.method private static initMap248()V
    .locals 2

    .prologue
    .line 2623
    const-string v0, "248-64"

    const-string v1, "zhan,shan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    const-string v0, "248-66"

    const-string v1, "niao,diao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    const-string v0, "248-74"

    const-string v1, "diao,zhao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    const-string v0, "248-78"

    const-string v1, "gan,han,yan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    const-string v0, "248-87"

    const-string v1, "fu,gui"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    const-string v0, "248-88"

    const-string v1, "ban,fen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    const-string v0, "248-90"

    const-string v1, "jian,qian,zhan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    return-void
.end method

.method private static initMap249()V
    .locals 2

    .prologue
    .line 2633
    const-string v0, "249-149"

    const-string v1, "ti,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    const-string v0, "249-151"

    const-string v1, "ti,chi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2635
    const-string v0, "249-155"

    const-string v1, "fu,bi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    const-string v0, "249-159"

    const-string v1, "he,jie"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    return-void
.end method

.method private static initMap250()V
    .locals 2

    .prologue
    .line 2640
    const-string v0, "250-64"

    const-string v1, "pian,bian"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2641
    const-string v0, "250-69"

    const-string v1, "chuan,zhi"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2642
    const-string v0, "250-73"

    const-string v1, "cang,qiang"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    const-string v0, "250-75"

    const-string v1, "he,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2644
    const-string v0, "250-88"

    const-string v1, "gu,hu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2645
    const-string v0, "250-90"

    const-string v1, "sun,xun"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    const-string v0, "250-121"

    const-string v1, "lou,lv"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2647
    return-void
.end method

.method private static initMap251()V
    .locals 2

    .prologue
    .line 2650
    const-string v0, "251-129"

    const-string v1, "pao,biao"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2651
    const-string v0, "251-132"

    const-string v1, "zhu,cu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2652
    return-void
.end method

.method private static initMap252()V
    .locals 2

    .prologue
    .line 2655
    const-string v0, "252-78"

    const-string v1, "mo,me"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    const-string v0, "252-108"

    const-string v1, "dan,shen"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    const-string v0, "252-109"

    const-string v1, "zhen,yan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    const-string v0, "252-114"

    const-string v1, "dan,zhan"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2659
    const-string v0, "252-119"

    const-string v1, "min,mian,meng"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    return-void
.end method

.method private static initMap253()V
    .locals 2

    .prologue
    .line 2663
    const-string v0, "253-135"

    const-string v1, "yin,ken"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    const-string v0, "253-138"

    const-string v1, "gong,wo"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2665
    const-string v0, "253-148"

    const-string v1, "gui,jun,qiu"

    invoke-static {v0, v1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    return-void
.end method

.method private static putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "ascii"
    .parameter "pinyins"

    .prologue
    .line 55
    sget-object v0, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->multiPinyinMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "cnStr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/hanzi/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3112
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3113
    .local v6, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/hanzi/HanziToPinyin$Token;>;"
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3141
    :cond_0
    return-object v6

    .line 3116
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3117
    .local v0, chars:[C
    array-length v3, v0

    .line 3118
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 3119
    aget-char v7, v0, v1

    const/16 v8, 0x20

    if-ne v7, v8, :cond_2

    .line 3118
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3123
    :cond_2
    aget-char v7, v0, v1

    invoke-static {v7}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->getCharacterGbk(C)Ljava/lang/String;

    move-result-object v2

    .line 3124
    .local v2, keyGbk:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 3125
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToPinyin;->getInstance()Lcom/samsung/mms/hanzi/HanziToPinyin;

    move-result-object v7

    aget-char v8, v0, v1

    invoke-virtual {v7, v8}, Lcom/samsung/mms/hanzi/HanziToPinyin;->getTokenIncludingSpecialSuffix(C)Lcom/samsung/mms/hanzi/HanziToPinyin$Token;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3127
    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->getMultiPinyinsByGBK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3128
    .local v4, pinyin:Ljava/lang/String;
    if-nez v4, :cond_4

    .line 3129
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToPinyin;->getInstance()Lcom/samsung/mms/hanzi/HanziToPinyin;

    move-result-object v7

    aget-char v8, v0, v1

    invoke-virtual {v7, v8}, Lcom/samsung/mms/hanzi/HanziToPinyin;->getTokenIncludingSpecialSuffix(C)Lcom/samsung/mms/hanzi/HanziToPinyin$Token;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3133
    :cond_4
    new-instance v5, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;

    invoke-direct {v5}, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;-><init>()V

    .line 3134
    .local v5, token:Lcom/samsung/mms/hanzi/HanziToPinyin$Token;
    const/4 v7, 0x2

    iput v7, v5, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->type:I

    .line 3135
    aget-char v7, v0, v1

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 3136
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 3137
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getMultiPinyins(C)Ljava/lang/String;
    .locals 4
    .parameter "character"

    .prologue
    .line 3094
    invoke-static {p1}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->getCharacterGbk(C)Ljava/lang/String;

    move-result-object v0

    .line 3095
    .local v0, keyGbk:Ljava/lang/String;
    new-instance v2, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;

    invoke-direct {v2}, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;-><init>()V

    .line 3096
    .local v2, token:Lcom/samsung/mms/hanzi/HanziToPinyin$Token;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 3097
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToPinyin;->getInstance()Lcom/samsung/mms/hanzi/HanziToPinyin;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/mms/hanzi/HanziToPinyin;->getTokenIncludingSpecialSuffix(C)Lcom/samsung/mms/hanzi/HanziToPinyin$Token;

    move-result-object v2

    .line 3108
    :goto_0
    iget-object v3, v2, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    return-object v3

    .line 3099
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/mms/hanzi/HanziToMultiPinyin;->getMultiPinyinsByGBK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3100
    .local v1, pinyin:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 3101
    invoke-static {}, Lcom/samsung/mms/hanzi/HanziToPinyin;->getInstance()Lcom/samsung/mms/hanzi/HanziToPinyin;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/mms/hanzi/HanziToPinyin;->getTokenIncludingSpecialSuffix(C)Lcom/samsung/mms/hanzi/HanziToPinyin$Token;

    move-result-object v2

    goto :goto_0

    .line 3103
    :cond_1
    const/4 v3, 0x2

    iput v3, v2, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->type:I

    .line 3104
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 3105
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/mms/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0
.end method
