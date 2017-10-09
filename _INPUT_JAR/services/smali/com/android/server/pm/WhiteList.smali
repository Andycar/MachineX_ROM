.class public Lcom/android/server/pm/WhiteList;
.super Ljava/lang/Object;
.source "WhiteList.java"


# static fields
.field private static final ATTRIBUTE_NAME:[Ljava/lang/String;

.field private static final CONTENTS_TAG_NAME:Ljava/lang/String; = "CONTENTS"

.field private static final LIST_TAG_NAME:Ljava/lang/String; = "LIST"

.field private static final VALUE_COMMON:Ljava/lang/String; = "COMMON"

.field private static final VALUE_MODLE:Ljava/lang/String;

.field private static final WHTELIST_PATH:Ljava/lang/String; = "/system/etc/AutoRunTargetPermission.xml"

.field private static mInstance:Lcom/android/server/pm/WhiteList;


# instance fields
.field private mWhiteListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/android/server/pm/WhiteList;->VALUE_MODLE:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/WhiteList;->ATTRIBUTE_NAME:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/WhiteList;->mWhiteListMap:Ljava/util/HashMap;

    .line 36
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/AutoRunTargetPermission.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v1, "whiteListFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_18

    .line 46
    :goto_17
    return-void

    .line 42
    :cond_18
    :try_start_18
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Lcom/android/server/pm/WhiteList;->loadPolicy(Ljava/io/FileInputStream;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_20} :catch_21

    goto :goto_17

    .line 43
    :catch_21
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_17
.end method

.method public static getInstance()Lcom/android/server/pm/WhiteList;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/server/pm/WhiteList;->mInstance:Lcom/android/server/pm/WhiteList;

    if-nez v0, :cond_b

    .line 50
    new-instance v0, Lcom/android/server/pm/WhiteList;

    invoke-direct {v0}, Lcom/android/server/pm/WhiteList;-><init>()V

    sput-object v0, Lcom/android/server/pm/WhiteList;->mInstance:Lcom/android/server/pm/WhiteList;

    .line 52
    :cond_b
    sget-object v0, Lcom/android/server/pm/WhiteList;->mInstance:Lcom/android/server/pm/WhiteList;

    return-object v0
.end method

.method private loadPolicy(Ljava/io/FileInputStream;)V
    .registers 14
    .param p1, "fi"    # Ljava/io/FileInputStream;

    .prologue
    const/4 v11, 0x1

    .line 72
    const/4 v7, 0x0

    .line 73
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, -0x1

    .line 75
    .local v1, "eventType":I
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 76
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 77
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 78
    const/4 v8, 0x0

    invoke-interface {v7, p1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 79
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 80
    const/4 v3, 0x0

    .line 81
    .local v3, "found":Z
    const-string v5, ""

    .line 82
    .local v5, "listName":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1f
    if-eq v1, v11, :cond_101

    .line 84
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 85
    packed-switch v1, :pswitch_data_130

    .line 118
    :cond_27
    :goto_27
    :pswitch_27
    const/4 v8, 0x3

    if-ne v1, v8, :cond_3d

    .line 119
    if-eqz v3, :cond_39

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "LIST"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 120
    const/4 v3, 0x0

    .line 122
    :cond_39
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 124
    :cond_3d
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1f

    .line 87
    :pswitch_42
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "LIST"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 88
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4f
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    if-ge v4, v8, :cond_63

    .line 89
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 91
    :cond_63
    sget-object v8, Lcom/android/server/pm/WhiteList;->ATTRIBUTE_NAME:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a0

    sget-object v8, Lcom/android/server/pm/WhiteList;->ATTRIBUTE_NAME:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "COMMON"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_94

    sget-object v8, Lcom/android/server/pm/WhiteList;->ATTRIBUTE_NAME:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Lcom/android/server/pm/WhiteList;->VALUE_MODLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 93
    :cond_94
    const/4 v3, 0x1

    .line 94
    sget-object v8, Lcom/android/server/pm/WhiteList;->ATTRIBUTE_NAME:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "listName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 98
    .end local v4    # "i":I
    .restart local v5    # "listName":Ljava/lang/String;
    :cond_a0
    if-eqz v3, :cond_27

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CONTENTS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 99
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_af
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    if-ge v4, v8, :cond_c3

    .line 100
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    add-int/lit8 v4, v4, 0x1

    goto :goto_af

    .line 102
    :cond_c3
    sget-object v8, Lcom/android/server/pm/WhiteList;->ATTRIBUTE_NAME:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 103
    iget-object v8, p0, Lcom/android/server/pm/WhiteList;->mWhiteListMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e0

    .line 104
    iget-object v8, p0, Lcom/android/server/pm/WhiteList;->mWhiteListMap:Ljava/util/HashMap;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_e0
    iget-object v8, p0, Lcom/android/server/pm/WhiteList;->mWhiteListMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/pm/WhiteList;->ATTRIBUTE_NAME:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f4} :catch_f6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_f4} :catch_112
    .catchall {:try_start_3 .. :try_end_f4} :catchall_122

    goto/16 :goto_27

    .line 127
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "found":Z
    .end local v4    # "i":I
    .end local v5    # "listName":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_f6
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    :try_start_f7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_122

    .line 133
    if-eqz p1, :cond_100

    .line 135
    :try_start_fc
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_10d

    .line 139
    :goto_ff
    const/4 p1, 0x0

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    :cond_100
    :goto_100
    return-void

    .line 133
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3    # "found":Z
    .restart local v5    # "listName":Ljava/lang/String;
    .restart local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_101
    if-eqz p1, :cond_100

    .line 135
    :try_start_103
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_108

    .line 139
    :goto_106
    const/4 p1, 0x0

    goto :goto_100

    .line 136
    :catch_108
    move-exception v0

    .line 137
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_106

    .line 136
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "found":Z
    .end local v5    # "listName":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_10d
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ff

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    :catch_112
    move-exception v0

    .line 131
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_113
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_116
    .catchall {:try_start_113 .. :try_end_116} :catchall_122

    .line 133
    if-eqz p1, :cond_100

    .line 135
    :try_start_118
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11b} :catch_11d

    .line 139
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_11b
    const/4 p1, 0x0

    goto :goto_100

    .line 136
    .restart local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_11d
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11b

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_122
    move-exception v8

    if-eqz p1, :cond_129

    .line 135
    :try_start_125
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_12a

    .line 139
    :goto_128
    const/4 p1, 0x0

    :cond_129
    throw v8

    .line 136
    :catch_12a
    move-exception v0

    .line 137
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_128

    .line 85
    nop

    :pswitch_data_130
    .packed-switch 0x2
        :pswitch_42
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public isInWhiteList(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "ret":Z
    const-string v1, ".cts."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, ".cts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 59
    :cond_11
    const/4 v1, 0x1

    .line 66
    :goto_12
    return v1

    .line 61
    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/WhiteList;->mWhiteListMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/pm/WhiteList;->VALUE_MODLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 62
    iget-object v1, p0, Lcom/android/server/pm/WhiteList;->mWhiteListMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/pm/WhiteList;->VALUE_MODLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :cond_2b
    :goto_2b
    move v1, v0

    .line 66
    goto :goto_12

    .line 63
    :cond_2d
    iget-object v1, p0, Lcom/android/server/pm/WhiteList;->mWhiteListMap:Ljava/util/HashMap;

    const-string v2, "COMMON"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 64
    iget-object v1, p0, Lcom/android/server/pm/WhiteList;->mWhiteListMap:Ljava/util/HashMap;

    const-string v2, "COMMON"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2b
.end method
