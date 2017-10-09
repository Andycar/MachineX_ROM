.class public abstract Ljava/net/URLStreamHandler;
.super Ljava/lang/Object;
.source "URLStreamHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static relativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 201
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 202
    invoke-static {p1, v4}, Llibcore/net/url/UrlUtils;->canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 207
    .end local p1    # "path":Ljava/lang/String;
    :cond_d
    :goto_d
    return-object p1

    .line 203
    .restart local p1    # "path":Ljava/lang/String;
    :cond_e
    if-eqz p0, :cond_d

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "combined":Ljava/lang/String;
    invoke-static {v0, v4}, Llibcore/net/url/UrlUtils;->canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_d
.end method


# virtual methods
.method protected equals(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 5
    .param p1, "a"    # Ljava/net/URL;
    .param p2, "b"    # Ljava/net/URL;

    .prologue
    .line 307
    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method protected getDefaultPort()I
    .registers 2

    .prologue
    .line 317
    const/4 v0, -0x1

    return v0
.end method

.method protected getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;
    .registers 6
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    const/4 v2, 0x0

    .line 325
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    .line 331
    .end local v1    # "host":Ljava/lang/String;
    :cond_d
    :goto_d
    return-object v2

    .line 329
    .restart local v1    # "host":Ljava/lang/String;
    :cond_e
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_11
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v2

    goto :goto_d

    .line 330
    .end local v1    # "host":Ljava/lang/String;
    :catch_13
    move-exception v0

    .line 331
    .local v0, "e":Ljava/net/UnknownHostException;
    goto :goto_d
.end method

.method protected hashCode(Ljava/net/URL;)I
    .registers 3
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 6
    .param p1, "a"    # Ljava/net/URL;
    .param p2, "b"    # Ljava/net/URL;

    .prologue
    .line 347
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "aHost":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "bHost":Ljava/lang/String;
    if-eq v0, v1, :cond_12

    if-eqz v0, :cond_14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_12
    const/4 v2, 0x1

    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method protected abstract openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 4
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .registers 29
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 86
    move-object/from16 v0, p1

    iget-object v3, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    move-object/from16 v0, p0

    if-eq v0, v3, :cond_10

    .line 87
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Only a URL\'s stream handler is permitted to mutate it"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_10
    move/from16 v0, p4

    move/from16 v1, p3

    if-ge v0, v1, :cond_22

    .line 90
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v4, p4, p3

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v3, v0, v1, v4}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v3

    .line 97
    :cond_22
    const/4 v7, -0x1

    .line 101
    .local v7, "port":I
    const-string v3, "//"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 103
    add-int/lit8 v13, p3, 0x2

    .line 104
    .local v13, "authorityStart":I
    const-string v3, "/?#"

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v3, v13, v1}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v15

    .line 105
    .local v15, "fileStart":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "authority":Ljava/lang/String;
    const-string v3, "@"

    move-object/from16 v0, p2

    invoke-static {v0, v3, v13, v15}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v23

    .line 108
    .local v23, "userInfoEnd":I
    move/from16 v0, v23

    if-eq v0, v15, :cond_9c

    .line 109
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v9, "userInfo":Ljava/lang/String;
    add-int/lit8 v18, v23, 0x1

    .line 121
    .local v18, "hostStart":I
    :goto_59
    move/from16 v14, v18

    .line 122
    .local v14, "colonSearchFrom":I
    const-string v3, "]"

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v3, v1, v15}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v19

    .line 123
    .local v19, "ipv6End":I
    move/from16 v0, v19

    if-eq v0, v15, :cond_a2

    .line 124
    const-string v3, ":"

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v3, v1, v2}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    move/from16 v0, v19

    if-ne v3, v0, :cond_a0

    .line 125
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected an IPv6 address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    .end local v9    # "userInfo":Ljava/lang/String;
    .end local v14    # "colonSearchFrom":I
    .end local v18    # "hostStart":I
    .end local v19    # "ipv6End":I
    :cond_9c
    const/4 v9, 0x0

    .line 113
    .restart local v9    # "userInfo":Ljava/lang/String;
    move/from16 v18, v13

    .restart local v18    # "hostStart":I
    goto :goto_59

    .line 128
    .restart local v14    # "colonSearchFrom":I
    .restart local v19    # "ipv6End":I
    :cond_a0
    move/from16 v14, v19

    .line 130
    :cond_a2
    const-string v3, ":"

    move-object/from16 v0, p2

    invoke-static {v0, v3, v14, v15}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v17

    .line 131
    .local v17, "hostEnd":I
    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "host":Ljava/lang/String;
    add-int/lit8 v21, v17, 0x1

    .line 133
    .local v21, "portStart":I
    move/from16 v0, v21

    if-ge v0, v15, :cond_da

    .line 134
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 135
    .local v16, "firstPortChar":C
    const/16 v3, 0x30

    move/from16 v0, v16

    if-lt v0, v3, :cond_10f

    const/16 v3, 0x39

    move/from16 v0, v16

    if-gt v0, v3, :cond_10f

    .line 136
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 141
    .end local v16    # "firstPortChar":C
    :cond_da
    const/4 v10, 0x0

    .line 142
    .local v10, "path":Ljava/lang/String;
    const/4 v11, 0x0

    .line 143
    .local v11, "query":Ljava/lang/String;
    const/4 v12, 0x0

    .line 165
    .end local v13    # "authorityStart":I
    .end local v14    # "colonSearchFrom":I
    .end local v17    # "hostEnd":I
    .end local v18    # "hostStart":I
    .end local v19    # "ipv6End":I
    .end local v21    # "portStart":I
    .end local v23    # "userInfoEnd":I
    .local v12, "ref":Ljava/lang/String;
    :goto_dd
    move/from16 v22, v15

    .line 166
    .local v22, "pos":I
    :goto_df
    move/from16 v0, v22

    move/from16 v1, p4

    if-ge v0, v1, :cond_170

    .line 168
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_184

    .line 179
    const-string v3, "?#"

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, p4

    invoke-static {v0, v3, v1, v2}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v20

    .line 180
    .local v20, "nextPos":I
    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Ljava/net/URLStreamHandler;->relativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 181
    const/4 v11, 0x0

    .line 182
    const/4 v12, 0x0

    .line 185
    :goto_10c
    move/from16 v22, v20

    .line 186
    goto :goto_df

    .line 138
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "query":Ljava/lang/String;
    .end local v12    # "ref":Ljava/lang/String;
    .end local v20    # "nextPos":I
    .end local v22    # "pos":I
    .restart local v13    # "authorityStart":I
    .restart local v14    # "colonSearchFrom":I
    .restart local v16    # "firstPortChar":C
    .restart local v17    # "hostEnd":I
    .restart local v18    # "hostStart":I
    .restart local v19    # "ipv6End":I
    .restart local v21    # "portStart":I
    .restart local v23    # "userInfoEnd":I
    :cond_10f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    .end local v6    # "host":Ljava/lang/String;
    .end local v8    # "authority":Ljava/lang/String;
    .end local v9    # "userInfo":Ljava/lang/String;
    .end local v13    # "authorityStart":I
    .end local v14    # "colonSearchFrom":I
    .end local v15    # "fileStart":I
    .end local v16    # "firstPortChar":C
    .end local v17    # "hostEnd":I
    .end local v18    # "hostStart":I
    .end local v19    # "ipv6End":I
    .end local v21    # "portStart":I
    .end local v23    # "userInfoEnd":I
    :cond_128
    move/from16 v15, p3

    .line 147
    .restart local v15    # "fileStart":I
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 148
    .restart local v8    # "authority":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    .line 149
    .restart local v9    # "userInfo":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 150
    .restart local v6    # "host":Ljava/lang/String;
    if-nez v6, :cond_13a

    .line 151
    const-string v6, ""

    .line 153
    :cond_13a
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPort()I

    move-result v7

    .line 154
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 155
    .restart local v10    # "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v11

    .line 156
    .restart local v11    # "query":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "ref":Ljava/lang/String;
    goto :goto_dd

    .line 170
    .restart local v22    # "pos":I
    :sswitch_14b
    move/from16 v20, p4

    .line 171
    .restart local v20    # "nextPos":I
    add-int/lit8 v3, v22, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 172
    goto :goto_10c

    .line 174
    .end local v20    # "nextPos":I
    :sswitch_158
    const-string v3, "#"

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, p4

    invoke-static {v0, v3, v1, v2}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v20

    .line 175
    .restart local v20    # "nextPos":I
    add-int/lit8 v3, v22, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 176
    const/4 v12, 0x0

    .line 177
    goto :goto_10c

    .line 188
    .end local v20    # "nextPos":I
    :cond_170
    if-nez v10, :cond_174

    .line 189
    const-string v10, ""

    .line 192
    :cond_174
    invoke-static {v8, v10}, Llibcore/net/url/UrlUtils;->authoritySafePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 194
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v12}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void

    .line 168
    :sswitch_data_184
    .sparse-switch
        0x23 -> :sswitch_14b
        0x3f -> :sswitch_158
    .end sparse-switch
.end method

.method protected sameFile(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 5
    .param p1, "a"    # Ljava/net/URL;
    .param p2, "b"    # Ljava/net/URL;

    .prologue
    .line 357
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Ljava/net/URL;->getEffectivePort()I

    move-result v0

    invoke-virtual {p2}, Ljava/net/URL;->getEffectivePort()I

    move-result v1

    if-ne v0, v1, :cond_2e

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "file"    # Ljava/lang/String;
    .param p6, "ref"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p1, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eq p0, v0, :cond_a

    .line 234
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 236
    :cond_a
    invoke-virtual/range {p1 .. p6}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "authority"    # Ljava/lang/String;
    .param p6, "userInfo"    # Ljava/lang/String;
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "query"    # Ljava/lang/String;
    .param p9, "ref"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v0, p1, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eq p0, v0, :cond_a

    .line 247
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 249
    :cond_a
    invoke-virtual/range {p1 .. p9}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method protected toExternalForm(Ljava/net/URL;)Ljava/lang/String;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toExternalForm(Ljava/net/URL;Z)Ljava/lang/String;
    .registers 8
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "escapeIllegalCharacters"    # Z

    .prologue
    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 272
    const-string v4, "//"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    if-eqz p2, :cond_47

    .line 274
    sget-object v4, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v4, v3, v0}, Llibcore/net/UriCodec;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 280
    :cond_23
    :goto_23
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "fileAndQuery":Ljava/lang/String;
    if-eqz v1, :cond_30

    .line 282
    if-eqz p2, :cond_4b

    .line 283
    sget-object v4, Ljava/net/URI;->FILE_AND_QUERY_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v4, v3, v1}, Llibcore/net/UriCodec;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 289
    :cond_30
    :goto_30
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "ref":Ljava/lang/String;
    if-eqz v2, :cond_42

    .line 291
    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    if-eqz p2, :cond_4f

    .line 293
    sget-object v4, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v4, v3, v2}, Llibcore/net/UriCodec;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 299
    :cond_42
    :goto_42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 276
    .end local v1    # "fileAndQuery":Ljava/lang/String;
    .end local v2    # "ref":Ljava/lang/String;
    :cond_47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 285
    .restart local v1    # "fileAndQuery":Ljava/lang/String;
    :cond_4b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 295
    .restart local v2    # "ref":Ljava/lang/String;
    :cond_4f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42
.end method
