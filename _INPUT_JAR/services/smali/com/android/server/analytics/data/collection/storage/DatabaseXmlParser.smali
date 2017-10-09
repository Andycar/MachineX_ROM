.class public Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;
.super Ljava/lang/Object;
.source "DatabaseXmlParser.java"


# static fields
.field private static final ATTR_DEFAULT:Ljava/lang/String; = "default"

.field private static final ATTR_FOREIGN_KEY_NAME:Ljava/lang/String; = "foreignkeyname"

.field private static final ATTR_FOREIGN_REFER_KEY:Ljava/lang/String; = "foreignreferkey"

.field private static final ATTR_FOREIGN_REFER_TABLE:Ljava/lang/String; = "foreignrefertable"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PRIMARY_KEY:Ljava/lang/String; = "primarykey"

.field private static final ATTR_PROPERTIES:Ljava/lang/String; = "properties"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final TABLE:Ljava/lang/String; = "table"

.field private static final TAG:Ljava/lang/String; = "DatabaseXmlParser"


# instance fields
.field private final mCallback:Lcom/android/server/analytics/data/collection/storage/TableCallback;

.field private final mParser:Landroid/content/res/XmlResourceParser;


# direct methods
.method public constructor <init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/analytics/data/collection/storage/TableCallback;)V
    .registers 3
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "cb"    # Lcom/android/server/analytics/data/collection/storage/TableCallback;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 67
    iput-object p2, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mCallback:Lcom/android/server/analytics/data/collection/storage/TableCallback;

    .line 68
    return-void
.end method

.method private getType(Ljava/lang/String;)Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 71
    if-nez p1, :cond_5

    .line 73
    sget-object v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    .line 84
    :goto_4
    return-object v0

    .line 74
    :cond_5
    const-string v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 75
    sget-object v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;->INTEGER:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    goto :goto_4

    .line 76
    :cond_10
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 77
    sget-object v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;->TEXT:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    goto :goto_4

    .line 78
    :cond_1c
    const-string/jumbo v0, "numeric"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 79
    sget-object v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;->NUMERIC:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    goto :goto_4

    .line 80
    :cond_28
    const-string/jumbo v0, "real"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 81
    sget-object v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;->REAL:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    goto :goto_4

    .line 84
    :cond_34
    sget-object v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    goto :goto_4
.end method

.method private isPrimaryKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 88
    if-eqz p1, :cond_d

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public parseXML()V
    .registers 13

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    .line 94
    .local v7, "event":I
    const/4 v8, 0x0

    .line 95
    .local v8, "table":Lcom/android/server/analytics/data/collection/storage/Table;
    :goto_7
    const/4 v0, 0x1

    if-eq v7, v0, :cond_a1

    .line 96
    packed-switch v7, :pswitch_data_bc

    .line 124
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    goto :goto_7

    .line 98
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, "tag":Ljava/lang/String;
    const-string/jumbo v0, "table"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 100
    new-instance v8, Lcom/android/server/analytics/data/collection/storage/Table;

    .end local v8    # "table":Lcom/android/server/analytics/data/collection/storage/Table;
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v1, 0x0

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v2, 0x0

    const-string v3, "foreignrefertable"

    invoke-interface {v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v3, 0x0

    const-string v4, "foreignreferkey"

    invoke-interface {v2, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v4, 0x0

    const-string v5, "foreignkeyname"

    invoke-interface {v3, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/android/server/analytics/data/collection/storage/Table;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .restart local v8    # "table":Lcom/android/server/analytics/data/collection/storage/Table;
    :cond_4c
    const-string v0, "column"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v8, :cond_d

    .line 106
    new-instance v0, Lcom/android/server/analytics/data/collection/storage/Column;

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v2, 0x0

    const-string v3, "name"

    invoke-interface {v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v3, 0x0

    const-string/jumbo v4, "type"

    invoke-interface {v2, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->getType(Ljava/lang/String;)Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v4, 0x0

    const-string/jumbo v5, "primarykey"

    invoke-interface {v3, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->isPrimaryKey(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v5, 0x0

    const-string/jumbo v10, "properties"

    invoke-interface {v4, v5, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v10, 0x0

    const-string v11, "default"

    invoke-interface {v5, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/analytics/data/collection/storage/Column;-><init>(Ljava/lang/String;Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/android/server/analytics/data/collection/storage/Table;->addColumn(Lcom/android/server/analytics/data/collection/storage/Column;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_96} :catch_98

    goto/16 :goto_d

    .line 127
    .end local v7    # "event":I
    .end local v8    # "table":Lcom/android/server/analytics/data/collection/storage/Table;
    .end local v9    # "tag":Ljava/lang/String;
    :catch_98
    move-exception v6

    .line 128
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "DatabaseXmlParser"

    const-string/jumbo v1, "parseXML EX:"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_a1
    return-void

    .line 116
    .restart local v7    # "event":I
    .restart local v8    # "table":Lcom/android/server/analytics/data/collection/storage/Table;
    :pswitch_a2
    :try_start_a2
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 117
    .restart local v9    # "tag":Ljava/lang/String;
    const-string/jumbo v0, "table"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v8, :cond_d

    .line 118
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mCallback:Lcom/android/server/analytics/data/collection/storage/TableCallback;

    invoke-interface {v0, v8}, Lcom/android/server/analytics/data/collection/storage/TableCallback;->onTableFound(Lcom/android/server/analytics/data/collection/storage/Table;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_b8} :catch_98

    .line 119
    const/4 v8, 0x0

    goto/16 :goto_d

    .line 96
    nop

    :pswitch_data_bc
    .packed-switch 0x2
        :pswitch_14
        :pswitch_a2
    .end packed-switch
.end method
