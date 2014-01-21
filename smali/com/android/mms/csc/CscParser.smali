.class public Lcom/android/mms/csc/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# static fields
.field private static final CHAMELEON_PRESET_MESSAGE_EN_XML_FILE:Ljava/lang/String; = "/carrier/data/app/mms/PresetMessage_en.xml"

.field private static final CHAMELEON_PRESET_MESSAGE_ES_XML_FILE:Ljava/lang/String; = "/carrier/data/app/mms/PresetMessage_es.xml"

.field private static final CHAMELEON_PRESET_MESSAGE_KO_XML_FILE:Ljava/lang/String; = "/carrier/data/app/mms/PresetMessage_ko.xml"

.field private static final CHAMELEON_PRESET_MESSAGE_VI_XML_FILE:Ljava/lang/String; = "/carrier/data/app/mms/PresetMessage_vi.xml"

.field private static final CHAMELEON_PRESET_MESSAGE_ZH_XML_FILE:Ljava/lang/String; = "/carrier/data/app/mms/PresetMessage_zh_cn.xml"

.field private static final CSC_XML_FILE:Ljava/lang/String; = "/system/csc/customer.xml"

.field public static final PRESET_MESSAGE_EN:I = 0x0

.field public static final PRESET_MESSAGE_ES:I = 0x1

.field public static final PRESET_MESSAGE_KO:I = 0x3

.field public static final PRESET_MESSAGE_VI:I = 0x2

.field public static final PRESET_MESSAGE_ZH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Mms/CscParser"

.field private static sChameleonInstance:Lcom/android/mms/csc/CscParser;

.field private static sCustomerInstance:Lcom/android/mms/csc/CscParser;


# instance fields
.field private mDocument:Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/csc/CscParser;->mDocument:Lorg/w3c/dom/Document;

    .line 43
    return-void
.end method

.method public static getChameleonInstance(I)Lcom/android/mms/csc/CscParser;
    .locals 1
    .parameter "mLanguage"

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getCustomerInstance()Lcom/android/mms/csc/CscParser;
    .locals 3

    .prologue
    .line 46
    const-class v1, Lcom/android/mms/csc/CscParser;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/csc/CscParser;->sCustomerInstance:Lcom/android/mms/csc/CscParser;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/mms/csc/CscParser;

    invoke-direct {v0}, Lcom/android/mms/csc/CscParser;-><init>()V

    sput-object v0, Lcom/android/mms/csc/CscParser;->sCustomerInstance:Lcom/android/mms/csc/CscParser;

    .line 48
    sget-object v0, Lcom/android/mms/csc/CscParser;->sCustomerInstance:Lcom/android/mms/csc/CscParser;

    const-string v2, "/system/csc/customer.xml"

    invoke-virtual {v0, v2}, Lcom/android/mms/csc/CscParser;->load(Ljava/lang/String;)Z

    .line 53
    :goto_0
    sget-object v0, Lcom/android/mms/csc/CscParser;->sCustomerInstance:Lcom/android/mms/csc/CscParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/mms/csc/CscParser;->sCustomerInstance:Lcom/android/mms/csc/CscParser;

    const-string v2, "/system/csc/customer.xml"

    invoke-virtual {v0, v2}, Lcom/android/mms/csc/CscParser;->load(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6
    .parameter "parent"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 155
    if-nez p1, :cond_1

    move-object v0, v4

    .line 169
    :cond_0
    :goto_0
    return-object v0

    .line 158
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 159
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_2

    .line 160
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 162
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 163
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 164
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_2
    move-object v0, v4

    .line 169
    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/android/mms/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 129
    .local v0, node:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 133
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .parameter "node"

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    const/4 v2, 0x0

    .line 214
    :goto_0
    return-object v2

    .line 205
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 206
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 207
    .local v1, stringValue:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 208
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 214
    .end local v0           #idx:I
    .end local v1           #stringValue:Ljava/lang/StringBuffer;
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/csc/CscParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 6
    .parameter "fileName"

    .prologue
    const/4 v3, 0x0

    .line 97
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    :try_start_1
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/csc/CscParser;->mDocument:Lorg/w3c/dom/Document;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 107
    const/4 v3, 0x1

    .line 116
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #file:Ljava/io/File;
    :goto_0
    return v3

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v4, "Mms/CscParser"

    const-string v5, "ParserConfigurationException is occured"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v0       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2       #file:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 109
    .local v1, e:Lorg/xml/sax/SAXException;
    const-string v4, "Mms/CscParser"

    const-string v5, "SAXException is occured"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :cond_0
    :goto_1
    const-string v4, "Mms/CscParser"

    const-string v5, "File didn\'t exist"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :catch_2
    move-exception v1

    .line 111
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Mms/CscParser"

    const-string v5, "IOException is occured"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 137
    if-nez p1, :cond_1

    move-object v0, v3

    .line 151
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    iget-object v4, p0, Lcom/android/mms/csc/CscParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 141
    .local v0, node:Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, token:Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v0, v3

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/mms/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 149
    goto :goto_1
.end method

.method public searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 9
    .parameter "parent"
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 173
    if-nez p1, :cond_0

    .line 196
    :goto_0
    return-object v6

    .line 177
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/csc/CscParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 178
    .local v4, list:Lorg/w3c/dom/Element;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 180
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_2

    .line 181
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 183
    .local v5, n:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 184
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 185
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_1

    .line 187
    :try_start_1
    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 188
    :catch_0
    move-exception v2

    .line 189
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 195
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:I
    .end local v4           #list:Lorg/w3c/dom/Element;
    .end local v5           #n:I
    :catch_1
    move-exception v2

    .line 196
    .restart local v2       #e:Ljava/lang/Exception;
    goto :goto_0

    .line 194
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #children:Lorg/w3c/dom/NodeList;
    .restart local v4       #list:Lorg/w3c/dom/Element;
    :cond_2
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    goto :goto_0
.end method
