.class public Llibcore/net/url/JarHandler;
.super Ljava/net/URLStreamHandler;
.source "JarHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Llibcore/net/url/JarURLConnectionImpl;

    invoke-direct {v0, p1}, Llibcore/net/url/JarURLConnectionImpl;-><init>(Ljava/net/URL;)V

    return-object v0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .registers 20
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "limit"    # I

    .prologue
    .line 58
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v9

    .line 59
    .local v9, "file":Ljava/lang/String;
    if-nez v9, :cond_8

    .line 60
    const-string v9, ""

    .line 62
    :cond_8
    move/from16 v0, p4

    move/from16 v1, p3

    if-le v0, v1, :cond_2e

    .line 63
    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 67
    :goto_12
    const-string v2, "!/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_31

    const-string v2, "!/"

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_31

    .line 68
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Cannot find \"!/\""

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_2e
    const-string p2, ""

    goto :goto_12

    .line 70
    :cond_31
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 71
    move-object/from16 v9, p2

    .line 82
    :goto_39
    :try_start_39
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/net/MalformedURLException; {:try_start_39 .. :try_end_3e} :catch_c0

    .line 86
    const-string v4, "jar"

    const-string v5, ""

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Llibcore/net/url/JarHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void

    .line 72
    :cond_4e
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_7a

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_39

    .line 75
    :cond_7a
    const/16 v2, 0x21

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 76
    .local v13, "idx":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v13, 0x1

    const/16 v4, 0x2f

    invoke-virtual {v9, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 77
    .local v14, "tmpFile":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {v14, v2}, Llibcore/net/url/UrlUtils;->canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_39

    .line 83
    .end local v13    # "idx":I
    .end local v14    # "tmpFile":Ljava/lang/String;
    :catch_c0
    move-exception v12

    .line 84
    .local v12, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v12}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected toExternalForm(Ljava/net/URL;)Ljava/lang/String;
    .registers 5
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "jar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "ref":Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
