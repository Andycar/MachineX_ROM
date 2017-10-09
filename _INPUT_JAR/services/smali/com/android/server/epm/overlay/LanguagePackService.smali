.class public Lcom/android/server/epm/overlay/LanguagePackService;
.super Lcom/android/server/epm/overlay/OverlayManagerService;
.source "LanguagePackService.java"


# static fields
.field public static final DEBUG_ELASTIC:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-class v0, Lcom/android/server/epm/overlay/LanguagePackService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/epm/overlay/LanguagePackService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/OverlayManagerService;-><init>(Landroid/content/Context;)V

    .line 67
    iput-object p1, p0, Lcom/android/server/epm/overlay/LanguagePackService;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private appendNewData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "xmlFilePath"    # Ljava/lang/String;
    .param p2, "nameText"    # Ljava/lang/String;
    .param p3, "fileText"    # Ljava/lang/String;

    .prologue
    .line 139
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/epm/overlay/LanguagePackService;->existsInXML(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-direct {p0, p1, p3}, Lcom/android/server/epm/overlay/LanguagePackService;->existsInXML(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 170
    :cond_c
    :goto_c
    return-void

    .line 144
    :cond_d
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 146
    .local v2, "documentBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 147
    .local v1, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v10, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 148
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    .line 150
    .local v9, "rootElement":Lorg/w3c/dom/Element;
    const-string v10, "family"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 151
    .local v4, "family":Lorg/w3c/dom/Element;
    const-string v10, "nameset"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 153
    .local v8, "nameset":Lorg/w3c/dom/Element;
    const-string v10, "fileset"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 155
    .local v6, "fileset":Lorg/w3c/dom/Element;
    const-string v10, "name"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 157
    .local v7, "name":Lorg/w3c/dom/Element;
    const-string v10, "file"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 159
    .local v5, "file":Lorg/w3c/dom/Element;
    invoke-interface {v0, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 160
    invoke-interface {v0, p3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v10

    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 161
    invoke-interface {v8, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 162
    invoke-interface {v6, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 163
    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 164
    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 165
    invoke-interface {v9, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 166
    invoke-direct {p0, v0, p1}, Lcom/android/server/epm/overlay/LanguagePackService;->commitXML(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_66

    goto :goto_c

    .line 167
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "documentBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "family":Lorg/w3c/dom/Element;
    .end local v5    # "file":Lorg/w3c/dom/Element;
    .end local v6    # "fileset":Lorg/w3c/dom/Element;
    .end local v7    # "name":Lorg/w3c/dom/Element;
    .end local v8    # "nameset":Lorg/w3c/dom/Element;
    .end local v9    # "rootElement":Lorg/w3c/dom/Element;
    :catch_66
    move-exception v3

    .line 168
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method private commitXML(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .registers 8
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "xmlFilePath"    # Ljava/lang/String;

    .prologue
    .line 213
    :try_start_0
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 214
    .local v2, "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    .line 215
    .local v4, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 216
    .local v3, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, p2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v3, v2, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 221
    .end local v1    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v3    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v4    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_15
    return-void

    .line 218
    :catch_16
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method private existsInXML(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 19
    .param p1, "xmlFilePath"    # Ljava/lang/String;
    .param p2, "strToBeDeleted"    # Ljava/lang/String;

    .prologue
    .line 174
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 176
    .local v3, "documentBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 177
    .local v2, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v14, Ljava/io/FileInputStream;

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 179
    .local v1, "doc":Lorg/w3c/dom/Document;
    const-string v14, "family"

    invoke-interface {v1, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 182
    .local v12, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1f
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v8, v14, :cond_74

    .line 183
    invoke-interface {v12, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 184
    .local v5, "family":Lorg/w3c/dom/Element;
    const-string v14, "fileset"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 187
    .local v7, "fileset":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    invoke-interface {v7, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 188
    .local v6, "file":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 189
    .local v13, "ttfName":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4c

    .line 190
    const/4 v14, 0x1

    .line 208
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "documentBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "family":Lorg/w3c/dom/Element;
    .end local v6    # "file":Lorg/w3c/dom/Element;
    .end local v7    # "fileset":Lorg/w3c/dom/NodeList;
    .end local v8    # "i":I
    .end local v12    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v13    # "ttfName":Ljava/lang/String;
    :goto_4b
    return v14

    .line 193
    .restart local v1    # "doc":Lorg/w3c/dom/Document;
    .restart local v2    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "documentBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "family":Lorg/w3c/dom/Element;
    .restart local v6    # "file":Lorg/w3c/dom/Element;
    .restart local v7    # "fileset":Lorg/w3c/dom/NodeList;
    .restart local v8    # "i":I
    .restart local v12    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v13    # "ttfName":Ljava/lang/String;
    :cond_4c
    const-string v14, "nameset"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 196
    .local v11, "nameset":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    invoke-interface {v11, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 197
    .local v10, "name":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, "langName":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_68} :catch_70

    move-result v14

    if-eqz v14, :cond_6d

    .line 202
    const/4 v14, 0x1

    goto :goto_4b

    .line 182
    :cond_6d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    .line 205
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "documentBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "family":Lorg/w3c/dom/Element;
    .end local v6    # "file":Lorg/w3c/dom/Element;
    .end local v7    # "fileset":Lorg/w3c/dom/NodeList;
    .end local v8    # "i":I
    .end local v9    # "langName":Ljava/lang/String;
    .end local v10    # "name":Lorg/w3c/dom/Element;
    .end local v11    # "nameset":Lorg/w3c/dom/NodeList;
    .end local v12    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v13    # "ttfName":Ljava/lang/String;
    :catch_70
    move-exception v4

    .line 206
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_74
    const/4 v14, 0x0

    goto :goto_4b
.end method

.method private initXmlFile()V
    .registers 6

    .prologue
    .line 121
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/downloaded_fonts/downloaded_fonts.xml"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "downloaded_fonts_file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_24

    .line 124
    :try_start_d
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 125
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 126
    .local v2, "fos":Ljava/io/FileOutputStream;
    const-string v3, "<familyset>\n\n</familyset>"

    .line 127
    .local v3, "initialData":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 128
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 129
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_24} :catch_25

    .line 134
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "initialData":Ljava/lang/String;
    :cond_24
    :goto_24
    return-void

    .line 130
    :catch_25
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24
.end method


# virtual methods
.method public extractFontFiles(Ljava/lang/String;)V
    .registers 11
    .param p1, "languageData"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 104
    :try_start_1
    iget-object v4, p0, Lcom/android/server/epm/overlay/LanguagePackService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 105
    .local v0, "am":Landroid/content/res/AssetManager;
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/downloaded_fonts"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "downloadedDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 108
    invoke-direct {p0}, Lcom/android/server/epm/overlay/LanguagePackService;->initXmlFile()V

    .line 110
    :cond_1a
    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "fontFileList":[Ljava/lang/String;
    const-string v4, "/data/downloaded_fonts/downloaded_fonts.xml"

    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/epm/overlay/LanguagePackService;->appendNewData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "chmod 777 -R /data/downloaded_fonts"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_65

    .line 117
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v1    # "downloadedDir":Ljava/io/File;
    .end local v3    # "fontFileList":[Ljava/lang/String;
    :goto_40
    iget-object v4, p0, Lcom/android/server/epm/overlay/LanguagePackService;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " language pack is installed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 118
    return-void

    .line 114
    :catch_65
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40
.end method

.method public getCategory()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x2

    return v0
.end method

.method public onPluginInstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgManager"    # Landroid/content/pm/PackageManager;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/epm/overlay/OverlayManagerService;->onPluginInstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/android/server/epm/overlay/LanguagePackService;->mContext:Landroid/content/Context;

    .line 89
    :try_start_5
    iget-object v2, p0, Lcom/android/server/epm/overlay/LanguagePackService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p3, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 90
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_22

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_22

    .line 91
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "elastic.language.ttf"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/epm/overlay/LanguagePackService;->extractFontFiles(Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_22} :catch_23

    .line 96
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_22
    :goto_22
    return-void

    .line 93
    :catch_23
    move-exception v1

    .line 94
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_22
.end method
