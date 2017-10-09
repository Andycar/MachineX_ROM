.class public Lcom/android/server/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static BT_TYPE:I = 0x0

.field private static SDCARD_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BTSdcard"

.field private static WHITELIST_MAC_PERM:Ljava/lang/String;

.field private static WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

.field private static instance:Lcom/android/server/ResourceManager;

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mcontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    const-string v0, "/data/security/whitelist"

    sput-object v0, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    .line 83
    const-string v0, "/data/security/whitelist/mac_permissions.xml"

    sput-object v0, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    .line 85
    const/4 v0, 0x1

    sput v0, Lcom/android/server/ResourceManager;->BT_TYPE:I

    .line 86
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/server/ResourceManager;->mcontext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method protected static declared-synchronized addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .registers 43
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "resourceType"    # I

    .prologue
    .line 981
    const-class v35, Lcom/android/server/ResourceManager;

    monitor-enter v35

    :try_start_3
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 982
    .local v25, "seinfo":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 983
    .local v6, "category":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 984
    .local v5, "allowcategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 985
    .local v3, "allowContainerCategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v34, v0

    and-int/lit8 v34, v34, 0x4

    const/16 v36, 0x4

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_1cb

    const/16 v34, 0x1

    :goto_2d
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    .line 986
    .local v16, "issdcardsbaapp":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v34, v0

    and-int/lit8 v34, v34, 0x8

    const/16 v36, 0x8

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_1cf

    const/16 v34, 0x1

    :goto_43
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    .line 987
    .local v15, "isbluetoothsbaapp":Ljava/lang/String;
    const/4 v14, 0x0

    .line 988
    .local v14, "isAddedMac":Z
    const/16 v17, 0x0

    .line 990
    .local v17, "macPermExists":Z
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_354

    move-result-object v9

    .line 991
    .local v9, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    .line 993
    .local v8, "doc":Lorg/w3c/dom/Document;
    :try_start_4f
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 994
    .local v7, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v34

    if-eqz v34, :cond_1d3

    .line 998
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v34

    if-nez v34, :cond_68

    .line 999
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 1001
    :cond_68
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 1002
    const/16 v17, 0x1

    .line 1014
    :goto_70
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Element;->normalize()V

    .line 1015
    const-string/jumbo v34, "policy"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 1016
    .local v21, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    .line 1017
    .local v20, "policyElement":Lorg/w3c/dom/Element;
    const/16 v34, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v20, Lorg/w3c/dom/Element;

    .line 1018
    .restart local v20    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v34, "signer"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v27

    .line 1019
    .local v27, "signer":Lorg/w3c/dom/NodeList;
    const/16 v29, 0x0

    .line 1020
    .local v29, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v28, 0x0

    .line 1021
    .local v28, "signerElement":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 1022
    .local v4, "allowallElement":Lorg/w3c/dom/Element;
    const/16 v18, 0x0

    .line 1023
    .local v18, "newElement":Lorg/w3c/dom/Element;
    const/16 v26, 0x0

    .line 1024
    .local v26, "seinfoElement":Lorg/w3c/dom/Element;
    const/16 v31, 0x0

    .line 1025
    .local v31, "specialTag":Ljava/lang/String;
    const-string/jumbo v31, "service"

    .line 1026
    move-object/from16 v0, v31

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    .line 1027
    const-string v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string/jumbo v34, "seinfo"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    if-eqz v6, :cond_cf

    .line 1030
    const-string v34, "category"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    :cond_cf
    if-eqz v5, :cond_da

    .line 1033
    const-string v34, "allowcategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    :cond_da
    if-eqz v3, :cond_e5

    .line 1036
    const-string v34, "containerallowcategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    :cond_e5
    if-eqz v16, :cond_f2

    .line 1039
    const-string v34, "issdcardsbaapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    :cond_f2
    if-eqz v15, :cond_fd

    .line 1042
    const-string v34, "isbluetoothsbaapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    :cond_fd
    sget v34, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_115

    .line 1045
    const-string/jumbo v34, "sdcarduseridBL"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    :cond_115
    sget v34, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_12c

    .line 1051
    const-string v34, "bluetoothuseridBL"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :cond_12c
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v24

    .line 1061
    .local v24, "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v34, "signer"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v28

    .line 1062
    const-string/jumbo v34, "seinfo"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v26

    .line 1063
    const-string v34, "allow-all"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 1064
    const-string/jumbo v34, "signature"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string/jumbo v34, "value"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    if-eqz v6, :cond_16d

    .line 1067
    const-string v34, "category"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    :cond_16d
    if-eqz v5, :cond_178

    .line 1070
    const-string v34, "allowcategory"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :cond_178
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_179
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v34

    move/from16 v0, v34

    if-ge v13, v0, :cond_255

    .line 1074
    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v29, Lorg/w3c/dom/Element;

    .line 1075
    .restart local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v34, "signature"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_33f

    .line 1076
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 1077
    .local v12, "existElem":Lorg/w3c/dom/Element;
    if-eqz v12, :cond_32f

    .line 1081
    sget v34, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_2b5

    .line 1083
    const-string/jumbo v34, "sdcarduseridBL"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1c4
    .catch Lorg/xml/sax/SAXException; {:try_start_4f .. :try_end_1c4} :catch_1f9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4f .. :try_end_1c4} :catch_34e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4f .. :try_end_1c4} :catch_357
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_1c4} :catch_35d
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_1c4} :catch_363
    .catchall {:try_start_4f .. :try_end_1c4} :catchall_354

    move-result v34

    if-eqz v34, :cond_200

    .line 1087
    const/16 v34, 0x0

    .line 1158
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v13    # "i":I
    .end local v18    # "newElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v24    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v27    # "signer":Lorg/w3c/dom/NodeList;
    .end local v28    # "signerElement":Lorg/w3c/dom/Element;
    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v31    # "specialTag":Ljava/lang/String;
    :goto_1c9
    monitor-exit v35

    return v34

    .line 985
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "isAddedMac":Z
    .end local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v16    # "issdcardsbaapp":Ljava/lang/String;
    .end local v17    # "macPermExists":Z
    :cond_1cb
    const/16 v34, 0x0

    goto/16 :goto_2d

    .line 986
    .restart local v16    # "issdcardsbaapp":Ljava/lang/String;
    :cond_1cf
    const/16 v34, 0x0

    goto/16 :goto_43

    .line 1007
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "isAddedMac":Z
    .restart local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v17    # "macPermExists":Z
    :cond_1d3
    :try_start_1d3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z

    .line 1008
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v34

    if-nez v34, :cond_1e5

    .line 1009
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 1010
    :cond_1e5
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    .line 1011
    const-string/jumbo v34, "policy"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    .line 1012
    .local v23, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1f7
    .catch Lorg/xml/sax/SAXException; {:try_start_1d3 .. :try_end_1f7} :catch_1f9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1d3 .. :try_end_1f7} :catch_34e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1d3 .. :try_end_1f7} :catch_357
    .catch Ljava/io/IOException; {:try_start_1d3 .. :try_end_1f7} :catch_35d
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_1f7} :catch_363
    .catchall {:try_start_1d3 .. :try_end_1f7} :catchall_354

    goto/16 :goto_70

    .line 1147
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v23    # "rootElement":Lorg/w3c/dom/Element;
    :catch_1f9
    move-exception v11

    .line 1148
    .local v11, "e1":Lorg/xml/sax/SAXException;
    :try_start_1fa
    invoke-virtual {v11}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_1fd
    .catchall {:try_start_1fa .. :try_end_1fd} :catchall_354

    .line 1158
    .end local v11    # "e1":Lorg/xml/sax/SAXException;
    :goto_1fd
    const/16 v34, -0x1

    goto :goto_1c9

    .line 1089
    .restart local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v13    # "i":I
    .restart local v18    # "newElement":Lorg/w3c/dom/Element;
    .restart local v20    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v24    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v28    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v31    # "specialTag":Ljava/lang/String;
    :cond_200
    const/16 v19, 0x0

    .line 1090
    .local v19, "newValue":Ljava/lang/String;
    :try_start_202
    const-string/jumbo v34, "sdcarduseridBL"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_2b0

    const-string/jumbo v34, "sdcarduseridBL"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v36, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_2b0

    .line 1091
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, ","

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v36, "sdcarduseridBL"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1095
    :goto_24a
    const-string/jumbo v34, "sdcarduseridBL"

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const/4 v14, 0x1

    .line 1126
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_255
    :goto_255
    if-nez v14, :cond_271

    .line 1127
    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1128
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1129
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1130
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1132
    :cond_271
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Element;->normalize()V

    .line 1133
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v33

    .line 1134
    .local v33, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v33 .. v33}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v32

    .line 1135
    .local v32, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v30, 0x0

    .line 1136
    .local v30, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v17, :cond_343

    .line 1137
    new-instance v30, Ljavax/xml/transform/dom/DOMSource;

    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v30

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1141
    .restart local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_28b
    new-instance v22, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1142
    .local v22, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1143
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v34

    if-eqz v34, :cond_2ac

    .line 1144
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 1146
    :cond_2ac
    const/16 v34, 0x0

    goto/16 :goto_1c9

    .line 1093
    .end local v22    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v19    # "newValue":Ljava/lang/String;
    :cond_2b0
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_24a

    .line 1099
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_2b5
    sget v34, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_32f

    .line 1101
    const-string v34, "bluetoothuseridBL"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_2d7

    .line 1105
    const/16 v34, 0x0

    goto/16 :goto_1c9

    .line 1107
    :cond_2d7
    const/16 v19, 0x0

    .line 1108
    .restart local v19    # "newValue":Ljava/lang/String;
    const-string v34, "bluetoothuseridBL"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_32a

    const-string v34, "bluetoothuseridBL"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v36, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_32a

    .line 1109
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, ","

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, "bluetoothuseridBL"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1113
    :goto_31e
    const-string v34, "bluetoothuseridBL"

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const/4 v14, 0x1

    .line 1115
    goto/16 :goto_255

    .line 1111
    :cond_32a
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_31e

    .line 1118
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_32f
    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1122
    const/4 v14, 0x1

    .line 1123
    goto/16 :goto_255

    .line 1073
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    :cond_33f
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_179

    .line 1139
    .restart local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_343
    new-instance v30, Ljavax/xml/transform/dom/DOMSource;

    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_34c
    .catch Lorg/xml/sax/SAXException; {:try_start_202 .. :try_end_34c} :catch_1f9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_202 .. :try_end_34c} :catch_34e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_202 .. :try_end_34c} :catch_357
    .catch Ljava/io/IOException; {:try_start_202 .. :try_end_34c} :catch_35d
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_34c} :catch_363
    .catchall {:try_start_202 .. :try_end_34c} :catchall_354

    .restart local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    goto/16 :goto_28b

    .line 1149
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "i":I
    .end local v18    # "newElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v24    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v27    # "signer":Lorg/w3c/dom/NodeList;
    .end local v28    # "signerElement":Lorg/w3c/dom/Element;
    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v31    # "specialTag":Ljava/lang/String;
    .end local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_34e
    move-exception v11

    .line 1150
    .local v11, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_34f
    invoke-virtual {v11}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_352
    .catchall {:try_start_34f .. :try_end_352} :catchall_354

    goto/16 :goto_1fd

    .line 981
    .end local v3    # "allowContainerCategory":Ljava/lang/String;
    .end local v5    # "allowcategory":Ljava/lang/String;
    .end local v6    # "category":Ljava/lang/String;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v14    # "isAddedMac":Z
    .end local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v16    # "issdcardsbaapp":Ljava/lang/String;
    .end local v17    # "macPermExists":Z
    .end local v25    # "seinfo":Ljava/lang/String;
    :catchall_354
    move-exception v34

    monitor-exit v35

    throw v34

    .line 1151
    .restart local v3    # "allowContainerCategory":Ljava/lang/String;
    .restart local v5    # "allowcategory":Ljava/lang/String;
    .restart local v6    # "category":Ljava/lang/String;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "isAddedMac":Z
    .restart local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v16    # "issdcardsbaapp":Ljava/lang/String;
    .restart local v17    # "macPermExists":Z
    .restart local v25    # "seinfo":Ljava/lang/String;
    :catch_357
    move-exception v11

    .line 1152
    .local v11, "e1":Ljavax/xml/transform/TransformerException;
    :try_start_358
    invoke-virtual {v11}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_1fd

    .line 1153
    .end local v11    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_35d
    move-exception v11

    .line 1154
    .local v11, "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1fd

    .line 1155
    .end local v11    # "e1":Ljava/io/IOException;
    :catch_363
    move-exception v10

    .line 1156
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_367
    .catchall {:try_start_358 .. :try_end_367} :catchall_354

    goto/16 :goto_1fd
.end method

.method protected static declared-synchronized addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .registers 43
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "resourceType"    # I

    .prologue
    .line 338
    const-class v35, Lcom/android/server/ResourceManager;

    monitor-enter v35

    :try_start_3
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 339
    .local v25, "seinfo":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, "category":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 341
    .local v5, "allowcategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 342
    .local v3, "allowContainerCategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v34, v0

    and-int/lit8 v34, v34, 0x4

    const/16 v36, 0x4

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_1cb

    const/16 v34, 0x1

    :goto_2d
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    .line 343
    .local v16, "issdcardsbaapp":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v34, v0

    and-int/lit8 v34, v34, 0x8

    const/16 v36, 0x8

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_1cf

    const/16 v34, 0x1

    :goto_43
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    .line 344
    .local v15, "isbluetoothsbaapp":Ljava/lang/String;
    const/4 v14, 0x0

    .line 345
    .local v14, "isAddedMac":Z
    const/16 v17, 0x0

    .line 347
    .local v17, "macPermExists":Z
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_354

    move-result-object v9

    .line 348
    .local v9, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    .line 350
    .local v8, "doc":Lorg/w3c/dom/Document;
    :try_start_4f
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 351
    .local v7, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v34

    if-eqz v34, :cond_1d3

    .line 355
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v34

    if-nez v34, :cond_68

    .line 356
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 358
    :cond_68
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 359
    const/16 v17, 0x1

    .line 371
    :goto_70
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Element;->normalize()V

    .line 372
    const-string/jumbo v34, "policy"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 373
    .local v21, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    .line 374
    .local v20, "policyElement":Lorg/w3c/dom/Element;
    const/16 v34, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v20, Lorg/w3c/dom/Element;

    .line 375
    .restart local v20    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v34, "signer"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v27

    .line 376
    .local v27, "signer":Lorg/w3c/dom/NodeList;
    const/16 v29, 0x0

    .line 377
    .local v29, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v28, 0x0

    .line 378
    .local v28, "signerElement":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 379
    .local v4, "allowallElement":Lorg/w3c/dom/Element;
    const/16 v18, 0x0

    .line 380
    .local v18, "newElement":Lorg/w3c/dom/Element;
    const/16 v26, 0x0

    .line 381
    .local v26, "seinfoElement":Lorg/w3c/dom/Element;
    const/16 v31, 0x0

    .line 382
    .local v31, "specialTag":Ljava/lang/String;
    const-string/jumbo v31, "service"

    .line 383
    move-object/from16 v0, v31

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    .line 384
    const-string v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string/jumbo v34, "seinfo"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    if-eqz v6, :cond_cf

    .line 387
    const-string v34, "category"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_cf
    if-eqz v5, :cond_da

    .line 390
    const-string v34, "allowcategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_da
    if-eqz v3, :cond_e5

    .line 393
    const-string v34, "containerallowcategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_e5
    if-eqz v16, :cond_f2

    .line 396
    const-string v34, "issdcardsbaapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_f2
    if-eqz v15, :cond_fd

    .line 399
    const-string v34, "isbluetoothsbaapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_fd
    sget v34, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_115

    .line 402
    const-string/jumbo v34, "sdcarduserid"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_115
    sget v34, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_12c

    .line 408
    const-string v34, "bluetoothuserid"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_12c
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v24

    .line 418
    .local v24, "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v34, "signer"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v28

    .line 419
    const-string/jumbo v34, "seinfo"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v26

    .line 420
    const-string v34, "allow-all"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 421
    const-string/jumbo v34, "signature"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string/jumbo v34, "value"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    if-eqz v6, :cond_16d

    .line 424
    const-string v34, "category"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_16d
    if-eqz v5, :cond_178

    .line 427
    const-string v34, "allowcategory"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_178
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_179
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v34

    move/from16 v0, v34

    if-ge v13, v0, :cond_255

    .line 431
    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v29, Lorg/w3c/dom/Element;

    .line 432
    .restart local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v34, "signature"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_33f

    .line 433
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 434
    .local v12, "existElem":Lorg/w3c/dom/Element;
    if-eqz v12, :cond_32f

    .line 438
    sget v34, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_2b5

    .line 440
    const-string/jumbo v34, "sdcarduserid"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1c4
    .catch Lorg/xml/sax/SAXException; {:try_start_4f .. :try_end_1c4} :catch_1f9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4f .. :try_end_1c4} :catch_34e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4f .. :try_end_1c4} :catch_357
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_1c4} :catch_35d
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_1c4} :catch_363
    .catchall {:try_start_4f .. :try_end_1c4} :catchall_354

    move-result v34

    if-eqz v34, :cond_200

    .line 444
    const/16 v34, 0x0

    .line 515
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v13    # "i":I
    .end local v18    # "newElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v24    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v27    # "signer":Lorg/w3c/dom/NodeList;
    .end local v28    # "signerElement":Lorg/w3c/dom/Element;
    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v31    # "specialTag":Ljava/lang/String;
    :goto_1c9
    monitor-exit v35

    return v34

    .line 342
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "isAddedMac":Z
    .end local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v16    # "issdcardsbaapp":Ljava/lang/String;
    .end local v17    # "macPermExists":Z
    :cond_1cb
    const/16 v34, 0x0

    goto/16 :goto_2d

    .line 343
    .restart local v16    # "issdcardsbaapp":Ljava/lang/String;
    :cond_1cf
    const/16 v34, 0x0

    goto/16 :goto_43

    .line 364
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "isAddedMac":Z
    .restart local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v17    # "macPermExists":Z
    :cond_1d3
    :try_start_1d3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z

    .line 365
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v34

    if-nez v34, :cond_1e5

    .line 366
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 367
    :cond_1e5
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    .line 368
    const-string/jumbo v34, "policy"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    .line 369
    .local v23, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1f7
    .catch Lorg/xml/sax/SAXException; {:try_start_1d3 .. :try_end_1f7} :catch_1f9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1d3 .. :try_end_1f7} :catch_34e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1d3 .. :try_end_1f7} :catch_357
    .catch Ljava/io/IOException; {:try_start_1d3 .. :try_end_1f7} :catch_35d
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_1f7} :catch_363
    .catchall {:try_start_1d3 .. :try_end_1f7} :catchall_354

    goto/16 :goto_70

    .line 504
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v23    # "rootElement":Lorg/w3c/dom/Element;
    :catch_1f9
    move-exception v11

    .line 505
    .local v11, "e1":Lorg/xml/sax/SAXException;
    :try_start_1fa
    invoke-virtual {v11}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_1fd
    .catchall {:try_start_1fa .. :try_end_1fd} :catchall_354

    .line 515
    .end local v11    # "e1":Lorg/xml/sax/SAXException;
    :goto_1fd
    const/16 v34, -0x1

    goto :goto_1c9

    .line 446
    .restart local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v13    # "i":I
    .restart local v18    # "newElement":Lorg/w3c/dom/Element;
    .restart local v20    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v24    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v28    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v31    # "specialTag":Ljava/lang/String;
    :cond_200
    const/16 v19, 0x0

    .line 447
    .local v19, "newValue":Ljava/lang/String;
    :try_start_202
    const-string/jumbo v34, "sdcarduserid"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_2b0

    const-string/jumbo v34, "sdcarduserid"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v36, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_2b0

    .line 448
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, ","

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v36, "sdcarduserid"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 452
    :goto_24a
    const-string/jumbo v34, "sdcarduserid"

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v14, 0x1

    .line 483
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_255
    :goto_255
    if-nez v14, :cond_271

    .line 484
    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 485
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 486
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 487
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 489
    :cond_271
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Element;->normalize()V

    .line 490
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v33

    .line 491
    .local v33, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v33 .. v33}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v32

    .line 492
    .local v32, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v30, 0x0

    .line 493
    .local v30, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v17, :cond_343

    .line 494
    new-instance v30, Ljavax/xml/transform/dom/DOMSource;

    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v30

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 498
    .restart local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_28b
    new-instance v22, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 499
    .local v22, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 500
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v34

    if-eqz v34, :cond_2ac

    .line 501
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 503
    :cond_2ac
    const/16 v34, 0x0

    goto/16 :goto_1c9

    .line 450
    .end local v22    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v19    # "newValue":Ljava/lang/String;
    :cond_2b0
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_24a

    .line 456
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_2b5
    sget v34, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_32f

    .line 458
    const-string v34, "bluetoothuserid"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_2d7

    .line 462
    const/16 v34, 0x0

    goto/16 :goto_1c9

    .line 464
    :cond_2d7
    const/16 v19, 0x0

    .line 465
    .restart local v19    # "newValue":Ljava/lang/String;
    const-string v34, "bluetoothuserid"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_32a

    const-string v34, "bluetoothuserid"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v36, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_32a

    .line 466
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, ","

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, "bluetoothuserid"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 470
    :goto_31e
    const-string v34, "bluetoothuserid"

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v14, 0x1

    .line 472
    goto/16 :goto_255

    .line 468
    :cond_32a
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_31e

    .line 475
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_32f
    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 479
    const/4 v14, 0x1

    .line 480
    goto/16 :goto_255

    .line 430
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    :cond_33f
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_179

    .line 496
    .restart local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_343
    new-instance v30, Ljavax/xml/transform/dom/DOMSource;

    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_34c
    .catch Lorg/xml/sax/SAXException; {:try_start_202 .. :try_end_34c} :catch_1f9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_202 .. :try_end_34c} :catch_34e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_202 .. :try_end_34c} :catch_357
    .catch Ljava/io/IOException; {:try_start_202 .. :try_end_34c} :catch_35d
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_34c} :catch_363
    .catchall {:try_start_202 .. :try_end_34c} :catchall_354

    .restart local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    goto/16 :goto_28b

    .line 506
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "i":I
    .end local v18    # "newElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v24    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v27    # "signer":Lorg/w3c/dom/NodeList;
    .end local v28    # "signerElement":Lorg/w3c/dom/Element;
    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v31    # "specialTag":Ljava/lang/String;
    .end local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_34e
    move-exception v11

    .line 507
    .local v11, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_34f
    invoke-virtual {v11}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_352
    .catchall {:try_start_34f .. :try_end_352} :catchall_354

    goto/16 :goto_1fd

    .line 338
    .end local v3    # "allowContainerCategory":Ljava/lang/String;
    .end local v5    # "allowcategory":Ljava/lang/String;
    .end local v6    # "category":Ljava/lang/String;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v14    # "isAddedMac":Z
    .end local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v16    # "issdcardsbaapp":Ljava/lang/String;
    .end local v17    # "macPermExists":Z
    .end local v25    # "seinfo":Ljava/lang/String;
    :catchall_354
    move-exception v34

    monitor-exit v35

    throw v34

    .line 508
    .restart local v3    # "allowContainerCategory":Ljava/lang/String;
    .restart local v5    # "allowcategory":Ljava/lang/String;
    .restart local v6    # "category":Ljava/lang/String;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "isAddedMac":Z
    .restart local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v16    # "issdcardsbaapp":Ljava/lang/String;
    .restart local v17    # "macPermExists":Z
    .restart local v25    # "seinfo":Ljava/lang/String;
    :catch_357
    move-exception v11

    .line 509
    .local v11, "e1":Ljavax/xml/transform/TransformerException;
    :try_start_358
    invoke-virtual {v11}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_1fd

    .line 510
    .end local v11    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_35d
    move-exception v11

    .line 511
    .local v11, "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1fd

    .line 512
    .end local v11    # "e1":Ljava/io/IOException;
    :catch_363
    move-exception v10

    .line 513
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_367
    .catchall {:try_start_358 .. :try_end_367} :catchall_354

    goto/16 :goto_1fd
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 6
    .param p0, "curElem"    # Lorg/w3c/dom/Element;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 771
    if-nez p0, :cond_4

    .line 775
    const/4 v1, 0x0

    .line 791
    :cond_3
    :goto_3
    return-object v1

    .line 778
    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 779
    .local v0, "currTrustedPackageElem":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 781
    .local v1, "returnElem":Lorg/w3c/dom/Element;
    :goto_b
    if-eqz v0, :cond_3

    .line 782
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 786
    move-object v1, v0

    .line 787
    goto :goto_3

    .line 789
    :cond_28
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    check-cast v0, Lorg/w3c/dom/Element;

    .restart local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    goto :goto_b
.end method

.method private static checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "existUsers"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 704
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "allowUsers":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_9
    if-ge v2, v4, :cond_18

    aget-object v3, v1, v2

    .line 706
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 707
    const/4 v5, 0x1

    .line 710
    .end local v3    # "item":Ljava/lang/String;
    :goto_14
    return v5

    .line 705
    .restart local v3    # "item":Ljava/lang/String;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 710
    .end local v3    # "item":Ljava/lang/String;
    :cond_18
    const/4 v5, 0x0

    goto :goto_14
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ResourceManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const-class v1, Lcom/android/server/ResourceManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    if-nez v0, :cond_e

    .line 103
    new-instance v0, Lcom/android/server/ResourceManager;

    invoke-direct {v0, p0}, Lcom/android/server/ResourceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    .line 105
    :cond_e
    sget-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 102
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 748
    if-nez p0, :cond_5

    move-object v5, v6

    .line 766
    :cond_4
    :goto_4
    return-object v5

    .line 754
    :cond_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 755
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .line 757
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v7, 0x40

    :try_start_c
    invoke-interface {v3, p0, v7, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 758
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 759
    .local v4, "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    array-length v7, v4

    if-ge v1, v7, :cond_4

    .line 761
    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_24} :catch_27

    .line 760
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 764
    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_27
    move-exception v0

    .line 765
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 766
    goto :goto_4
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 740
    if-nez p0, :cond_4

    .line 744
    :cond_3
    :goto_3
    return-object v1

    .line 740
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    .line 741
    :catch_10
    move-exception v0

    .line 742
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_a

    .line 690
    :cond_8
    const/4 v0, 0x0

    .line 697
    :cond_9
    return-object v0

    .line 692
    :cond_a
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 693
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 694
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 695
    .local v4, "s":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput-object v4, v0, v1

    move v1, v2

    .line 696
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_15
.end method

.method private loadContainerSetting(Ljava/lang/String;IZ)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerID"    # I
    .param p3, "appNotInstalled"    # Z

    .prologue
    .line 798
    const/4 v0, -0x1

    .line 799
    .local v0, "ret":I
    if-nez p1, :cond_e

    .line 800
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v4, "loadContainerSetting, packageName is null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 814
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_d
    return v1

    .line 806
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_e
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    iput-object v2, p0, Lcom/android/server/ResourceManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 808
    iget-object v2, p0, Lcom/android/server/ResourceManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->updateAppInfoForPackage(Ljava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 812
    const/4 v0, 0x0

    :cond_22
    move v1, v0

    .line 814
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_d
.end method

.method protected static declared-synchronized removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .registers 31
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resourceType"    # I

    .prologue
    .line 1167
    const-class v23, Lcom/android/server/ResourceManager;

    monitor-enter v23

    const/4 v9, 0x0

    .line 1168
    .local v9, "isRemoveSuccess":Z
    const/4 v15, 0x0

    .line 1170
    .local v15, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_5
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_198

    move-result-object v5

    .line 1172
    .local v5, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_9
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 1173
    .local v3, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    .line 1174
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_112

    .line 1178
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-nez v22, :cond_23

    .line 1179
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 1181
    :cond_23
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 1188
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    .line 1189
    const-string/jumbo v22, "policy"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 1190
    .local v12, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .line 1191
    .local v11, "policyElement":Lorg/w3c/dom/Element;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v11, Lorg/w3c/dom/Element;

    .line 1192
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v22, "signer"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 1193
    .local v17, "signer":Lorg/w3c/dom/NodeList;
    const/16 v18, 0x0

    .line 1194
    .local v18, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v13, 0x0

    .line 1201
    .local v13, "removeElem":Lorg/w3c/dom/Element;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_51
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_c3

    .line 1202
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v18, Lorg/w3c/dom/Element;

    .line 1204
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 1205
    if-eqz v13, :cond_1bf

    .line 1207
    sget v22, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_139

    .line 1208
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_136

    .line 1212
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_115

    .line 1216
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 1217
    const/4 v9, 0x1

    .line 1218
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_b8

    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_c3

    .line 1219
    :cond_b8
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1286
    :cond_c3
    :goto_c3
    if-eqz v9, :cond_1c3

    .line 1287
    const-string/jumbo v22, "service"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 1288
    .local v16, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    if-nez v22, :cond_db

    .line 1289
    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1294
    :cond_db
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    .line 1295
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v21

    .line 1296
    .local v21, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v20

    .line 1297
    .local v20, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v19, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1298
    .local v19, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v14, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1299
    .local v14, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1306
    .end local v14    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v16    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v19    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v20    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v21    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_ff
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-eqz v22, :cond_10e

    .line 1307
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_10e
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_10e} :catch_192
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_10e} :catch_1ef
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_10e} :catch_1f5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10e} :catch_1fb
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10e} :catch_201
    .catchall {:try_start_9 .. :try_end_10e} :catchall_198

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_10e
    :goto_10e
    move/from16 v22, v9

    .line 1320
    :goto_110
    monitor-exit v23

    return v22

    .line 1186
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    :cond_112
    const/16 v22, 0x0

    goto :goto_110

    .line 1226
    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_115
    :try_start_115
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1227
    .local v10, "newVal":Ljava/lang/String;
    if-eqz v10, :cond_139

    .line 1228
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    const/4 v9, 0x1

    .line 1230
    goto :goto_c3

    .line 1237
    .end local v10    # "newVal":Ljava/lang/String;
    :cond_136
    const/16 v22, 0x0

    goto :goto_110

    .line 1241
    :cond_139
    sget v22, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_1bf

    .line 1242
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1bb

    .line 1246
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19b

    .line 1250
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 1251
    const/4 v9, 0x1

    .line 1252
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_185

    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_c3

    .line 1253
    :cond_185
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_190
    .catch Lorg/xml/sax/SAXException; {:try_start_115 .. :try_end_190} :catch_192
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_115 .. :try_end_190} :catch_1ef
    .catch Ljavax/xml/transform/TransformerException; {:try_start_115 .. :try_end_190} :catch_1f5
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_190} :catch_1fb
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_190} :catch_201
    .catchall {:try_start_115 .. :try_end_190} :catchall_198

    goto/16 :goto_c3

    .line 1309
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_192
    move-exception v7

    .line 1310
    .local v7, "e1":Lorg/xml/sax/SAXException;
    :try_start_193
    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_196
    .catchall {:try_start_193 .. :try_end_196} :catchall_198

    goto/16 :goto_10e

    .line 1167
    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "e1":Lorg/xml/sax/SAXException;
    :catchall_198
    move-exception v22

    monitor-exit v23

    throw v22

    .line 1260
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_19b
    :try_start_19b
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1261
    .restart local v10    # "newVal":Ljava/lang/String;
    if-eqz v10, :cond_1bf

    .line 1262
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const/4 v9, 0x1

    .line 1264
    goto/16 :goto_c3

    .line 1271
    .end local v10    # "newVal":Ljava/lang/String;
    :cond_1bb
    const/16 v22, 0x0

    goto/16 :goto_110

    .line 1201
    :cond_1bf
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_51

    .line 1304
    :cond_1c3
    sget-object v22, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v24, "BTSdcard"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " removeBlacklistEntryFromMac, No match for packageName:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ". Please check again"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ed
    .catch Lorg/xml/sax/SAXException; {:try_start_19b .. :try_end_1ed} :catch_192
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_19b .. :try_end_1ed} :catch_1ef
    .catch Ljavax/xml/transform/TransformerException; {:try_start_19b .. :try_end_1ed} :catch_1f5
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_1ed} :catch_1fb
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1ed} :catch_201
    .catchall {:try_start_19b .. :try_end_1ed} :catchall_198

    goto/16 :goto_ff

    .line 1311
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_1ef
    move-exception v7

    .line 1312
    .local v7, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_1f0
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_10e

    .line 1313
    .end local v7    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1f5
    move-exception v7

    .line 1314
    .local v7, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v7}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_10e

    .line 1315
    .end local v7    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_1fb
    move-exception v7

    .line 1316
    .local v7, "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_10e

    .line 1317
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_201
    move-exception v6

    .line 1318
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_205
    .catchall {:try_start_1f0 .. :try_end_205} :catchall_198

    goto/16 :goto_10e
.end method

.method private static removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "existUsers"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 714
    const/4 v5, 0x0

    .line 715
    .local v5, "returnCat":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 716
    .local v6, "srcUsers":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 717
    .local v4, "matchFound":Z
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_b
    if-ge v1, v3, :cond_35

    aget-object v2, v0, v1

    .line 718
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 719
    const/4 v4, 0x1

    .line 717
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 721
    :cond_19
    if-nez v5, :cond_1d

    .line 722
    move-object v5, v2

    goto :goto_16

    .line 724
    :cond_1d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_16

    .line 728
    .end local v2    # "item":Ljava/lang/String;
    :cond_35
    if-eqz v4, :cond_38

    .line 734
    .end local v5    # "returnCat":Ljava/lang/String;
    :goto_37
    return-object v5

    .restart local v5    # "returnCat":Ljava/lang/String;
    :cond_38
    const/4 v5, 0x0

    goto :goto_37
.end method

.method protected static declared-synchronized removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .registers 31
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resourceType"    # I

    .prologue
    .line 524
    const-class v23, Lcom/android/server/ResourceManager;

    monitor-enter v23

    const/4 v9, 0x0

    .line 525
    .local v9, "isRemoveSuccess":Z
    const/4 v15, 0x0

    .line 527
    .local v15, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_5
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_198

    move-result-object v5

    .line 529
    .local v5, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_9
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 530
    .local v3, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    .line 531
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_112

    .line 535
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-nez v22, :cond_23

    .line 536
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 538
    :cond_23
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 545
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    .line 546
    const-string/jumbo v22, "policy"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 547
    .local v12, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .line 548
    .local v11, "policyElement":Lorg/w3c/dom/Element;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v11, Lorg/w3c/dom/Element;

    .line 549
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v22, "signer"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 550
    .local v17, "signer":Lorg/w3c/dom/NodeList;
    const/16 v18, 0x0

    .line 551
    .local v18, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v13, 0x0

    .line 558
    .local v13, "removeElem":Lorg/w3c/dom/Element;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_51
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_c3

    .line 559
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v18, Lorg/w3c/dom/Element;

    .line 561
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 562
    if-eqz v13, :cond_1bf

    .line 564
    sget v22, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_139

    .line 565
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_136

    .line 569
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_115

    .line 573
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 574
    const/4 v9, 0x1

    .line 575
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_b8

    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_c3

    .line 576
    :cond_b8
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 645
    :cond_c3
    :goto_c3
    if-eqz v9, :cond_1c3

    .line 646
    const-string/jumbo v22, "service"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 647
    .local v16, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    if-nez v22, :cond_db

    .line 648
    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 653
    :cond_db
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    .line 654
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v21

    .line 655
    .local v21, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v20

    .line 656
    .local v20, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v19, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 657
    .local v19, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v14, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 658
    .local v14, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 665
    .end local v14    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v16    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v19    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v20    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v21    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_ff
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-eqz v22, :cond_10e

    .line 666
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_10e
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_10e} :catch_192
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_10e} :catch_1ef
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_10e} :catch_1f5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10e} :catch_1fb
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10e} :catch_201
    .catchall {:try_start_9 .. :try_end_10e} :catchall_198

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_10e
    :goto_10e
    move/from16 v22, v9

    .line 679
    :goto_110
    monitor-exit v23

    return v22

    .line 543
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    :cond_112
    const/16 v22, 0x0

    goto :goto_110

    .line 583
    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_115
    :try_start_115
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 584
    .local v10, "newVal":Ljava/lang/String;
    if-eqz v10, :cond_139

    .line 585
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const/4 v9, 0x1

    .line 587
    goto :goto_c3

    .line 594
    .end local v10    # "newVal":Ljava/lang/String;
    :cond_136
    const/16 v22, 0x0

    goto :goto_110

    .line 600
    :cond_139
    sget v22, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_1bf

    .line 601
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1bb

    .line 605
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19b

    .line 609
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 610
    const/4 v9, 0x1

    .line 611
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_185

    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_c3

    .line 612
    :cond_185
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_190
    .catch Lorg/xml/sax/SAXException; {:try_start_115 .. :try_end_190} :catch_192
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_115 .. :try_end_190} :catch_1ef
    .catch Ljavax/xml/transform/TransformerException; {:try_start_115 .. :try_end_190} :catch_1f5
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_190} :catch_1fb
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_190} :catch_201
    .catchall {:try_start_115 .. :try_end_190} :catchall_198

    goto/16 :goto_c3

    .line 668
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_192
    move-exception v7

    .line 669
    .local v7, "e1":Lorg/xml/sax/SAXException;
    :try_start_193
    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_196
    .catchall {:try_start_193 .. :try_end_196} :catchall_198

    goto/16 :goto_10e

    .line 524
    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "e1":Lorg/xml/sax/SAXException;
    :catchall_198
    move-exception v22

    monitor-exit v23

    throw v22

    .line 619
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_19b
    :try_start_19b
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 620
    .restart local v10    # "newVal":Ljava/lang/String;
    if-eqz v10, :cond_1bf

    .line 621
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v9, 0x1

    .line 623
    goto/16 :goto_c3

    .line 630
    .end local v10    # "newVal":Ljava/lang/String;
    :cond_1bb
    const/16 v22, 0x0

    goto/16 :goto_110

    .line 558
    :cond_1bf
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_51

    .line 663
    :cond_1c3
    sget-object v22, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v24, "BTSdcard"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " removeWhitelistEntryFromMac, No match for packageName:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ". Please check again"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ed
    .catch Lorg/xml/sax/SAXException; {:try_start_19b .. :try_end_1ed} :catch_192
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_19b .. :try_end_1ed} :catch_1ef
    .catch Ljavax/xml/transform/TransformerException; {:try_start_19b .. :try_end_1ed} :catch_1f5
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_1ed} :catch_1fb
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1ed} :catch_201
    .catchall {:try_start_19b .. :try_end_1ed} :catchall_198

    goto/16 :goto_ff

    .line 670
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_1ef
    move-exception v7

    .line 671
    .local v7, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_1f0
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_10e

    .line 672
    .end local v7    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1f5
    move-exception v7

    .line 673
    .local v7, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v7}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_10e

    .line 674
    .end local v7    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_1fb
    move-exception v7

    .line 675
    .local v7, "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_10e

    .line 676
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_201
    move-exception v6

    .line 677
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_205
    .catchall {:try_start_1f0 .. :try_end_205} :catchall_198

    goto/16 :goto_10e
.end method


# virtual methods
.method public addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 16
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "certificate"    # [Ljava/lang/String;
    .param p4, "resourceType"    # I

    .prologue
    .line 821
    const/4 v6, 0x0

    .line 826
    .local v6, "appNotInstalled":Z
    :try_start_1
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p4, v2, :cond_b

    sget v2, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p4, v2, :cond_b

    .line 827
    const/4 v2, -0x1

    .line 923
    :goto_a
    return v2

    .line 829
    :cond_b
    new-instance v10, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 830
    .local v10, "whitelistDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_25

    .line 832
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 833
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 834
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_36

    .line 841
    :cond_25
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 842
    if-nez p2, :cond_45

    .line 843
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, " addAppToBlacklist failed, no packageName found"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const/4 v2, -0x1

    goto :goto_a

    .line 836
    .end local v10    # "whitelistDir":Ljava/io/File;
    :catch_36
    move-exception v8

    .line 837
    .local v8, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "Issue with whitelistDir directory"

    invoke-virtual {v2, v3, v5, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 838
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 839
    const/4 v2, -0x1

    goto :goto_a

    .line 849
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "whitelistDir":Ljava/io/File;
    :cond_45
    const/4 v7, 0x0

    .line 850
    .local v7, "certMatch":Z
    const/4 v1, 0x0

    .line 851
    .local v1, "signature":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v9, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 853
    if-nez p3, :cond_55

    .line 857
    const/16 v2, -0xe

    goto :goto_a

    .line 858
    :cond_55
    if-nez v9, :cond_66

    .line 860
    const/4 v2, 0x0

    aget-object v1, p3, v2

    .line 861
    const/4 v6, 0x1

    .line 882
    :cond_5b
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 883
    .local v0, "macPermFile":Ljava/io/File;
    if-nez v0, :cond_7c

    .line 887
    const/4 v2, -0x1

    goto :goto_a

    .line 863
    .end local v0    # "macPermFile":Ljava/io/File;
    :cond_66
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "signature":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 866
    .restart local v1    # "signature":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 867
    const/4 v7, 0x1

    .line 872
    :cond_77
    if-nez v7, :cond_5b

    .line 876
    const/16 v2, -0xd

    goto :goto_a

    .line 890
    .restart local v0    # "macPermFile":Ljava/io/File;
    :cond_7c
    :try_start_7c
    invoke-static {p2, p3}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 891
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v2, :cond_be

    .line 892
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "addAppToBlacklist, Got Application Info, Seinfo is not null"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const-string v2, "default"

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 894
    const-string/jumbo v2, "untrusted"

    iput-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :cond_9c
    move-object v2, p2

    move v3, p1

    move v5, p4

    .line 896
    invoke-static/range {v0 .. v5}, Lcom/android/server/ResourceManager;->addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v2

    if-eqz v2, :cond_b1

    .line 898
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "addBlacklistEntryToMac failed"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 901
    :cond_b1
    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c5

    .line 902
    invoke-static {v0, p2, p1, p4}, Lcom/android/server/ResourceManager;->removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_bb} :catch_c1

    .line 903
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 912
    :cond_be
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 914
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_c1
    move-exception v8

    .line 918
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 923
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_c5
    const/4 v2, 0x0

    goto/16 :goto_a
.end method

.method public addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 16
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "certificate"    # [Ljava/lang/String;
    .param p4, "resourceType"    # I

    .prologue
    .line 178
    const/4 v6, 0x0

    .line 183
    .local v6, "appNotInstalled":Z
    :try_start_1
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p4, v2, :cond_b

    sget v2, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p4, v2, :cond_b

    .line 184
    const/4 v2, -0x1

    .line 280
    :goto_a
    return v2

    .line 186
    :cond_b
    new-instance v10, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v10, "whitelistDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_25

    .line 189
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 190
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 191
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_36

    .line 198
    :cond_25
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 199
    if-nez p2, :cond_45

    .line 200
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, " addAppToWhitelist failed, no packageName found"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v2, -0x1

    goto :goto_a

    .line 193
    .end local v10    # "whitelistDir":Ljava/io/File;
    :catch_36
    move-exception v8

    .line 194
    .local v8, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "Issue with whitelistDir directory"

    invoke-virtual {v2, v3, v5, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    const/4 v2, -0x1

    goto :goto_a

    .line 206
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "whitelistDir":Ljava/io/File;
    :cond_45
    const/4 v7, 0x0

    .line 207
    .local v7, "certMatch":Z
    const/4 v1, 0x0

    .line 208
    .local v1, "signature":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v9, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 210
    if-nez p3, :cond_55

    .line 214
    const/16 v2, -0xe

    goto :goto_a

    .line 215
    :cond_55
    if-nez v9, :cond_66

    .line 217
    const/4 v2, 0x0

    aget-object v1, p3, v2

    .line 218
    const/4 v6, 0x1

    .line 239
    :cond_5b
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "macPermFile":Ljava/io/File;
    if-nez v0, :cond_7c

    .line 244
    const/4 v2, -0x1

    goto :goto_a

    .line 220
    .end local v0    # "macPermFile":Ljava/io/File;
    :cond_66
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "signature":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 223
    .restart local v1    # "signature":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 224
    const/4 v7, 0x1

    .line 229
    :cond_77
    if-nez v7, :cond_5b

    .line 233
    const/16 v2, -0xd

    goto :goto_a

    .line 247
    .restart local v0    # "macPermFile":Ljava/io/File;
    :cond_7c
    :try_start_7c
    invoke-static {p2, p3}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 248
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v2, :cond_be

    .line 249
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "addAppToWhitelist, Got Application Info, Seinfo is not null"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v2, "default"

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 251
    const-string/jumbo v2, "untrusted"

    iput-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :cond_9c
    move-object v2, p2

    move v3, p1

    move v5, p4

    .line 253
    invoke-static/range {v0 .. v5}, Lcom/android/server/ResourceManager;->addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v2

    if-eqz v2, :cond_b1

    .line 255
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "addWhitelistEntryToMac failed"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 258
    :cond_b1
    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c5

    .line 259
    invoke-static {v0, p2, p1, p4}, Lcom/android/server/ResourceManager;->removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_bb} :catch_c1

    .line 260
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 269
    :cond_be
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 271
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_c1
    move-exception v8

    .line 275
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 280
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_c5
    const/4 v2, 0x0

    goto/16 :goto_a
.end method

.method public clearSBABlacklist(II)I
    .registers 12
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    const/4 v6, -0x1

    .line 1324
    sget v7, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v7, :cond_a

    sget v7, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v7, :cond_a

    .line 1342
    :goto_9
    return v6

    .line 1327
    :cond_a
    const/4 v4, -0x1

    .line 1329
    .local v4, "ret":I
    :try_start_b
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getBlacklist(II)Ljava/util/HashSet;

    move-result-object v2

    .line 1330
    .local v2, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_37

    .line 1331
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1332
    .local v5, "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1333
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/ResourceManager;->removeAppFromSBABlacklist(ILjava/lang/String;I)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_29} :catch_2d

    move-result v4

    .line 1334
    if-eqz v4, :cond_1a

    goto :goto_9

    .line 1339
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_2d
    move-exception v0

    .line 1340
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BTSdcard"

    const-string v8, "clearBlacklist exception"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1342
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_37
    const/4 v6, 0x0

    goto :goto_9
.end method

.method public clearWhitelist(II)I
    .registers 12
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    const/4 v6, -0x1

    .line 132
    sget v7, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v7, :cond_a

    sget v7, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v7, :cond_a

    .line 151
    :goto_9
    return v6

    .line 135
    :cond_a
    const/4 v4, -0x1

    .line 138
    .local v4, "ret":I
    :try_start_b
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v2

    .line 139
    .local v2, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_37

    .line 140
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 141
    .local v5, "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 142
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/ResourceManager;->removeAppFromWhitelist(ILjava/lang/String;I)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_29} :catch_2d

    move-result v4

    .line 143
    if-eqz v4, :cond_1a

    goto :goto_9

    .line 148
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_2d
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BTSdcard"

    const-string v8, "clearWhitelist exception"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_37
    const/4 v6, 0x0

    goto :goto_9
.end method

.method public getPackagesFromSBABlacklist(II)[Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 1346
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v1, :cond_a

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v1, :cond_a

    .line 1347
    const/4 v1, 0x0

    .line 1350
    :goto_9
    return-object v1

    .line 1349
    :cond_a
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getBlacklist(II)Ljava/util/HashSet;

    move-result-object v0

    .line 1350
    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method public getPackagesFromSBAList(I)[Ljava/lang/String;
    .registers 4
    .param p1, "resourceType"    # I

    .prologue
    .line 155
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p1, v1, :cond_a

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p1, v1, :cond_a

    .line 156
    const/4 v1, 0x0

    .line 159
    :goto_9
    return-object v1

    .line 158
    :cond_a
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->getSBAlist(I)Ljava/util/HashSet;

    move-result-object v0

    .line 159
    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method public getPackagesFromWhitelist(II)[Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 109
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v1, :cond_a

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v1, :cond_a

    .line 110
    const/4 v1, 0x0

    .line 113
    :goto_9
    return-object v1

    .line 112
    :cond_a
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v0

    .line 113
    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method public isSBAApp(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceType"    # I

    .prologue
    const/4 v2, -0x1

    .line 164
    :try_start_1
    sget v3, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v3, :cond_a

    sget v3, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v3, :cond_a

    .line 174
    :cond_9
    :goto_9
    return v2

    .line 167
    :cond_a
    invoke-static {p2}, Lcom/android/server/pm/SELinuxMMAC;->getSBAlist(I)Ljava/util/HashSet;

    move-result-object v1

    .line 168
    .local v1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_9

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_18

    move-result v3

    if-eqz v3, :cond_9

    .line 169
    const/4 v2, 0x0

    goto :goto_9

    .line 171
    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_18
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_9
.end method

.method public isWhitelistApp(ILjava/lang/String;I)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    const/4 v2, -0x1

    .line 118
    :try_start_1
    sget v3, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v3, :cond_a

    sget v3, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v3, :cond_a

    .line 128
    :cond_9
    :goto_9
    return v2

    .line 121
    :cond_a
    invoke-static {p1, p3}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v1

    .line 122
    .local v1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_9

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_18

    move-result v3

    if-eqz v3, :cond_9

    .line 123
    const/4 v2, 0x0

    goto :goto_9

    .line 125
    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_18
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_9
.end method

.method public removeAppFromSBABlacklist(ILjava/lang/String;I)I
    .registers 15
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    const/4 v6, -0x1

    .line 927
    const/4 v0, 0x0

    .line 931
    .local v0, "appNotInstalled":Z
    sget v7, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v7, :cond_b

    sget v7, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v7, :cond_b

    .line 974
    :cond_a
    :goto_a
    return v6

    .line 934
    :cond_b
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 935
    if-nez p2, :cond_1b

    .line 936
    sget-object v7, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    const-string v9, " removeAppFromBlacklist failed, no packageName found"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 939
    :cond_1b
    const/4 v1, 0x0

    .line 940
    .local v1, "certMatch":Z
    const/4 v4, 0x0

    .line 941
    .local v4, "signature":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 943
    if-nez v5, :cond_29

    .line 947
    const/4 v0, 0x1

    .line 949
    :cond_29
    new-instance v3, Ljava/io/File;

    sget-object v7, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 950
    .local v3, "macPermFile":Ljava/io/File;
    if-nez v3, :cond_58

    .line 951
    sget-object v7, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removeAppFromBlacklist, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 961
    :cond_58
    :try_start_58
    invoke-static {v3, p2, p1, p3}, Lcom/android/server/ResourceManager;->removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_6b

    .line 962
    sget-object v7, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    const-string/jumbo v9, "removeEntryFromMac failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 968
    :catch_69
    move-exception v2

    .line 969
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_a

    .line 965
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6b
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6e} :catch_69

    move-result v7

    if-eq v7, v6, :cond_a

    .line 974
    const/4 v6, 0x0

    goto :goto_a
.end method

.method public removeAppFromWhitelist(ILjava/lang/String;I)I
    .registers 15
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    const/4 v6, -0x1

    .line 284
    const/4 v0, 0x0

    .line 288
    .local v0, "appNotInstalled":Z
    sget v7, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v7, :cond_b

    sget v7, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v7, :cond_b

    .line 331
    :cond_a
    :goto_a
    return v6

    .line 291
    :cond_b
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 292
    if-nez p2, :cond_1b

    .line 293
    sget-object v7, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    const-string v9, " removeAppFromWhitelist failed, no packageName found"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 296
    :cond_1b
    const/4 v1, 0x0

    .line 297
    .local v1, "certMatch":Z
    const/4 v4, 0x0

    .line 298
    .local v4, "signature":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 300
    if-nez v5, :cond_29

    .line 304
    const/4 v0, 0x1

    .line 306
    :cond_29
    new-instance v3, Ljava/io/File;

    sget-object v7, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v3, "macPermFile":Ljava/io/File;
    if-nez v3, :cond_58

    .line 308
    sget-object v7, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removeAppFromWhitelist, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 318
    :cond_58
    :try_start_58
    invoke-static {v3, p2, p1, p3}, Lcom/android/server/ResourceManager;->removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_6b

    .line 319
    sget-object v7, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    const-string/jumbo v9, "removeEntryFromMac failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 325
    :catch_69
    move-exception v2

    .line 326
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_a

    .line 322
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6b
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6e} :catch_69

    move-result v7

    if-eq v7, v6, :cond_a

    .line 331
    const/4 v6, 0x0

    goto :goto_a
.end method
