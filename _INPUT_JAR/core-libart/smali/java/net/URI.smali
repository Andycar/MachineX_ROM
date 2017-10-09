.class public final Ljava/net/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URI$PartEncoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/net/URI;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

.field private static final ASCII_ONLY:Llibcore/net/UriCodec;

.field static final AUTHORITY_ENCODER:Llibcore/net/UriCodec;

.field static final FILE_AND_QUERY_ENCODER:Llibcore/net/UriCodec;

.field static final PATH_ENCODER:Llibcore/net/UriCodec;

.field static final PUNCTUATION:Ljava/lang/String; = ",;:$&+="

.field static final UNRESERVED:Ljava/lang/String; = "_-!.~\'()*"

.field static final USER_INFO_ENCODER:Llibcore/net/UriCodec;

.field private static final serialVersionUID:J = -0x53fe87d1bc61b655L


# instance fields
.field private transient absolute:Z

.field private transient authority:Ljava/lang/String;

.field private transient fragment:Ljava/lang/String;

.field private transient hash:I

.field private transient host:Ljava/lang/String;

.field private transient opaque:Z

.field private transient path:Ljava/lang/String;

.field private transient port:I

.field private transient query:Ljava/lang/String;

.field private transient scheme:Ljava/lang/String;

.field private transient schemeSpecificPart:Ljava/lang/String;

.field private transient serverAuthority:Z

.field private string:Ljava/lang/String;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 139
    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->USER_INFO_ENCODER:Llibcore/net/UriCodec;

    .line 140
    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, "/@"

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    .line 141
    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, "@[]"

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    .line 144
    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, "/@?"

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->FILE_AND_QUERY_ENCODER:Llibcore/net/UriCodec;

    .line 147
    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, "?/[]@"

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    .line 150
    new-instance v0, Ljava/net/URI$1;

    invoke-direct {v0}, Ljava/net/URI$1;-><init>()V

    sput-object v0, Ljava/net/URI;->ASCII_ONLY:Llibcore/net/UriCodec;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v1, p0, Ljava/net/URI;->port:I

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/URI;->serverAuthority:Z

    .line 194
    iput v1, p0, Ljava/net/URI;->hash:I

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v0, p0, Ljava/net/URI;->port:I

    .line 192
    iput-boolean v1, p0, Ljava/net/URI;->serverAuthority:Z

    .line 194
    iput v0, p0, Ljava/net/URI;->hash:I

    .line 204
    invoke-direct {p0, p1, v1}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "schemeSpecificPart"    # Ljava/lang/String;
    .param p3, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v1, p0, Ljava/net/URI;->port:I

    .line 192
    iput-boolean v2, p0, Ljava/net/URI;->serverAuthority:Z

    .line 194
    iput v1, p0, Ljava/net/URI;->hash:I

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v0, "uri":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1a

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :cond_1a
    if-eqz p2, :cond_21

    .line 220
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 222
    :cond_21
    if-eqz p3, :cond_2d

    .line 223
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p3}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 227
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "query"    # Ljava/lang/String;
    .param p7, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x3a

    const/4 v3, -0x1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v3, p0, Ljava/net/URI;->port:I

    .line 192
    iput-boolean v2, p0, Ljava/net/URI;->serverAuthority:Z

    .line 194
    iput v3, p0, Ljava/net/URI;->hash:I

    .line 237
    if-nez p1, :cond_1e

    if-nez p2, :cond_1e

    if-nez p3, :cond_1e

    if-nez p5, :cond_1e

    if-nez p6, :cond_1e

    if-nez p7, :cond_1e

    .line 239
    const-string v1, ""

    iput-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 290
    :goto_1d
    return-void

    .line 243
    :cond_1e
    if-eqz p1, :cond_38

    if-eqz p5, :cond_38

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {p5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_38

    .line 244
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Relative path"

    invoke-direct {v1, p5, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v0, "uri":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_45

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    :cond_45
    if-nez p2, :cond_4b

    if-nez p3, :cond_4b

    if-eq p4, v3, :cond_50

    .line 254
    :cond_4b
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_50
    if-eqz p2, :cond_5c

    .line 258
    sget-object v1, Ljava/net/URI;->USER_INFO_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 259
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    :cond_5c
    if-eqz p3, :cond_90

    .line 264
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_8d

    const/16 v1, 0x5d

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_8d

    const/16 v1, 0x5b

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_8d

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 267
    :cond_8d
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_90
    if-eq p4, v3, :cond_98

    .line 271
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    :cond_98
    if-eqz p5, :cond_9f

    .line 276
    sget-object v1, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p5}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 279
    :cond_9f
    if-eqz p6, :cond_ab

    .line 280
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p6}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 284
    :cond_ab
    if-eqz p7, :cond_b7

    .line 285
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p7}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 289
    :cond_b7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    goto/16 :goto_1d
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 298
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, v2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v1, p0, Ljava/net/URI;->port:I

    .line 192
    iput-boolean v3, p0, Ljava/net/URI;->serverAuthority:Z

    .line 194
    iput v1, p0, Ljava/net/URI;->hash:I

    .line 308
    if-eqz p1, :cond_25

    if-eqz p3, :cond_25

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_25

    .line 309
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Relative path"

    invoke-direct {v1, p3, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v0, "uri":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_34

    .line 314
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    :cond_34
    if-eqz p2, :cond_40

    .line 318
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    sget-object v1, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 322
    :cond_40
    if-eqz p3, :cond_47

    .line 323
    sget-object v1, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p3}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 325
    :cond_47
    if-eqz p4, :cond_53

    .line 326
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p4}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 329
    :cond_53
    if-eqz p5, :cond_5f

    .line 330
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p5}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 334
    :cond_5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    .line 335
    return-void
.end method

.method private convertHexToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x25

    const/4 v5, -0x1

    .line 756
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 757
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_11

    .line 768
    .end local p1    # "s":Ljava/lang/String;
    :goto_10
    return-object p1

    .line 761
    .restart local p1    # "s":Ljava/lang/String;
    :cond_11
    const/4 v1, 0x0

    .line 762
    .local v1, "prevIndex":I
    :goto_12
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, "index":I
    if-eq v0, v5, :cond_36

    .line 763
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    add-int/lit8 v0, v0, 0x3

    .line 766
    move v1, v0

    goto :goto_12

    .line 768
    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_10
.end method

.method public static create(Ljava/lang/String;)Ljava/net/URI;
    .registers 4
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 728
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 729
    :catch_6
    move-exception v0

    .line 730
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1264
    if-eqz p1, :cond_7

    invoke-static {p1}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private duplicate()Ljava/net/URI;
    .registers 3

    .prologue
    .line 735
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    .line 736
    .local v0, "clone":Ljava/net/URI;
    iget-boolean v1, p0, Ljava/net/URI;->absolute:Z

    iput-boolean v1, v0, Ljava/net/URI;->absolute:Z

    .line 737
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 738
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 739
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 740
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    iput-boolean v1, v0, Ljava/net/URI;->opaque:Z

    .line 741
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 742
    iget v1, p0, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 743
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 744
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 745
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 746
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 747
    iget-boolean v1, p0, Ljava/net/URI;->serverAuthority:Z

    iput-boolean v1, v0, Ljava/net/URI;->serverAuthority:Z

    .line 748
    return-object v0
.end method

.method private escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "second"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x25

    const/4 v9, 0x0

    .line 785
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_f

    move v0, v9

    .line 811
    :goto_e
    return v0

    .line 789
    :cond_f
    const/4 v8, 0x0

    .line 791
    .local v8, "prevIndex":I
    :goto_10
    invoke-virtual {p1, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 792
    .local v6, "index":I
    invoke-virtual {p2, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 793
    .local v7, "index1":I
    if-eq v6, v7, :cond_1c

    move v0, v9

    .line 794
    goto :goto_e

    .line 799
    :cond_1c
    const/4 v0, -0x1

    if-ne v6, v0, :cond_29

    .line 802
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {p1, v8, p2, v8, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    goto :goto_e

    .line 806
    :cond_29
    sub-int v0, v6, v8

    invoke-virtual {p1, v8, p2, v8, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_33

    move v0, v9

    .line 807
    goto :goto_e

    .line 810
    :cond_33
    const/4 v1, 0x1

    add-int/lit8 v2, v6, 0x1

    add-int/lit8 v4, v6, 0x1

    const/4 v5, 0x2

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_43

    move v0, v9

    .line 811
    goto :goto_e

    .line 814
    :cond_43
    add-int/lit8 v6, v6, 0x3

    .line 815
    move v8, v6

    .line 816
    goto :goto_10
.end method

.method public static getEffectivePort(Ljava/lang/String;I)I
    .registers 4
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "specifiedPort"    # I

    .prologue
    const/4 v0, -0x1

    .line 982
    if-eq p1, v0, :cond_4

    .line 991
    .end local p1    # "specifiedPort":I
    :goto_3
    return p1

    .line 986
    .restart local p1    # "specifiedPort":I
    :cond_4
    const-string v1, "http"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 987
    const/16 p1, 0x50

    goto :goto_3

    .line 988
    :cond_f
    const-string v1, "https"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 989
    const/16 p1, 0x1bb

    goto :goto_3

    :cond_1a
    move p1, v0

    .line 991
    goto :goto_3
.end method

.method private getHashString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1326
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 1327
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1330
    :cond_19
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_39

    .line 1331
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    :cond_22
    :goto_22
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 1359
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1360
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/net/URI;->convertHexToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1333
    :cond_39
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_4b

    .line 1334
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v1, :cond_63

    .line 1336
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    :cond_4b
    :goto_4b
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_54

    .line 1349
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    :cond_54
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 1353
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1354
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 1338
    :cond_63
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_7f

    .line 1339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    :cond_7f
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    iget v1, p0, Ljava/net/URI;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4b

    .line 1343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/URI;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b
.end method

.method private isValidDomainName(Ljava/lang/String;)Z
    .registers 11
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 574
    :try_start_1
    const-string v8, "-."

    invoke-static {p1, v8}, Llibcore/net/UriCodec;->validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_6} :catch_25

    .line 579
    const/4 v4, 0x0

    .line 580
    .local v4, "lastLabel":Ljava/lang/String;
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_f
    if-ge v3, v5, :cond_2a

    aget-object v6, v0, v3

    .line 581
    .local v6, "token":Ljava/lang/String;
    move-object v4, v6

    .line 582
    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_24

    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 597
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "lastLabel":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "token":Ljava/lang/String;
    :cond_24
    :goto_24
    return v7

    .line 575
    :catch_25
    move-exception v2

    .line 576
    .local v2, "e":Ljava/net/URISyntaxException;
    goto :goto_24

    .line 580
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "lastLabel":Ljava/lang/String;
    .restart local v5    # "len$":I
    .restart local v6    # "token":Ljava/lang/String;
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 587
    .end local v6    # "token":Ljava/lang/String;
    :cond_2a
    if-eqz v4, :cond_24

    .line 591
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e

    .line 592
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 593
    .local v1, "ch":C
    const/16 v8, 0x30

    if-lt v1, v8, :cond_3e

    const/16 v8, 0x39

    if-le v1, v8, :cond_24

    .line 597
    .end local v1    # "ch":C
    :cond_3e
    const/4 v7, 0x1

    goto :goto_24
.end method

.method private isValidHost(ZLjava/lang/String;)Z
    .registers 9
    .param p1, "forceServer"    # Z
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 524
    const-string v4, "["

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 526
    const-string v4, "]"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 527
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v4, "Expected a closing square bracket for IPv6 address"

    invoke-direct {v2, p2, v4, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 530
    :cond_1b
    invoke-static {p2}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 569
    :cond_21
    :goto_21
    return v2

    .line 535
    :cond_22
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Malformed IPv6 address"

    invoke-direct {v2, p2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 540
    :cond_2a
    const/16 v4, 0x5b

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_3a

    const/16 v4, 0x5d

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_42

    .line 541
    :cond_3a
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v4, "Illegal character in host name"

    invoke-direct {v2, p2, v4, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 544
    :cond_42
    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 545
    .local v1, "index":I
    if-ltz v1, :cond_5e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_5e

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_70

    .line 548
    :cond_5e
    invoke-direct {p0, p2}, Ljava/net/URI;->isValidDomainName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 551
    if-eqz p1, :cond_6e

    .line 552
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v4, "Illegal character in host name"

    invoke-direct {v2, p2, v4, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_6e
    move v2, v3

    .line 554
    goto :goto_21

    .line 559
    :cond_70
    :try_start_70
    invoke-static {p2}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 560
    .local v0, "ia":Ljava/net/InetAddress;
    instance-of v4, v0, Ljava/net/Inet4Address;
    :try_end_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_70 .. :try_end_76} :catch_84

    if-nez v4, :cond_21

    .line 566
    .end local v0    # "ia":Ljava/net/InetAddress;
    :goto_78
    if-eqz p1, :cond_82

    .line 567
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v4, "Malformed IPv4 address"

    invoke-direct {v2, p2, v4, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_82
    move v2, v3

    .line 569
    goto :goto_21

    .line 563
    :catch_84
    move-exception v2

    goto :goto_78
.end method

.method private normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "discardRelativePrefix"    # Z

    .prologue
    const/4 v3, -0x1

    .line 1068
    invoke-static {p1, p2}, Llibcore/net/url/UrlUtils;->canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 1074
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1075
    .local v0, "colon":I
    if-eq v0, v3, :cond_2a

    .line 1076
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1077
    .local v1, "slash":I
    if-eq v1, v3, :cond_17

    if-ge v0, v1, :cond_2a

    .line 1078
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "./"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1082
    .end local v1    # "slash":I
    :cond_2a
    return-object p1
.end method

.method private parseAuthority(Z)V
    .registers 15
    .param p1, "forceServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 437
    iget-object v9, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v9, :cond_7

    .line 504
    :cond_6
    :goto_6
    return-void

    .line 441
    :cond_7
    const/4 v8, 0x0

    .line 442
    .local v8, "tempUserInfo":Ljava/lang/String;
    iget-object v5, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 443
    .local v5, "temp":Ljava/lang/String;
    const/16 v9, 0x40

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 444
    .local v4, "index":I
    const/4 v3, 0x0

    .line 445
    .local v3, "hostIndex":I
    if-eq v4, v11, :cond_24

    .line 447
    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 448
    iget-object v9, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v9, v8, v10}, Ljava/net/URI;->validateUserInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 449
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 450
    add-int/lit8 v3, v4, 0x1

    .line 453
    :cond_24
    const/16 v9, 0x3a

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 454
    const/16 v9, 0x5d

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 457
    .local v1, "endIndex":I
    const/4 v7, -0x1

    .line 458
    .local v7, "tempPort":I
    if-eq v4, v11, :cond_8c

    if-ge v1, v4, :cond_8c

    .line 460
    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, "tempHost":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v4, v9, :cond_59

    .line 464
    add-int/lit8 v9, v4, 0x1

    :try_start_43
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 465
    .local v2, "firstPortChar":C
    const/16 v9, 0x30

    if-lt v2, v9, :cond_6b

    const/16 v9, 0x39

    if-gt v2, v9, :cond_6b

    .line 467
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_58} :catch_7b

    move-result v7

    .line 487
    .end local v2    # "firstPortChar":C
    :cond_59
    :goto_59
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 488
    if-eqz p1, :cond_6

    .line 489
    new-instance v9, Ljava/net/URISyntaxException;

    iget-object v10, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    const-string v11, "Expected host"

    invoke-direct {v9, v10, v11, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v9

    .line 469
    .restart local v2    # "firstPortChar":C
    :cond_6b
    if-eqz p1, :cond_6

    .line 470
    :try_start_6d
    new-instance v9, Ljava/net/URISyntaxException;

    iget-object v10, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    const-string v11, "Invalid port number"

    add-int v12, v3, v4

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v9
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_7b} :catch_7b

    .line 475
    .end local v2    # "firstPortChar":C
    :catch_7b
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/NumberFormatException;
    if-eqz p1, :cond_6

    .line 477
    new-instance v9, Ljava/net/URISyntaxException;

    iget-object v10, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    const-string v11, "Invalid port number"

    add-int v12, v3, v4

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v9

    .line 484
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "tempHost":Ljava/lang/String;
    :cond_8c
    move-object v6, v5

    .restart local v6    # "tempHost":Ljava/lang/String;
    goto :goto_59

    .line 494
    :cond_8e
    invoke-direct {p0, p1, v6}, Ljava/net/URI;->isValidHost(ZLjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 500
    iput-object v8, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 501
    iput-object v6, p0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 502
    iput v7, p0, Ljava/net/URI;->port:I

    .line 503
    const/4 v9, 0x1

    iput-boolean v9, p0, Ljava/net/URI;->serverAuthority:Z

    goto/16 :goto_6
.end method

.method private parseURI(Ljava/lang/String;Z)V
    .registers 15
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "forceServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 350
    iput-object p1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 353
    const-string v6, "#"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {p1, v6, v10, v7}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    .line 354
    .local v3, "fragmentStart":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_24

    .line 355
    sget-object v6, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "fragment"

    invoke-virtual {v6, p1, v7, v8, v9}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 360
    :cond_24
    const-string v6, ":"

    invoke-static {p1, v6, v10, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 361
    .local v1, "colon":I
    const-string v6, "/?#"

    invoke-static {p1, v6, v10, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v6

    if-ge v1, v6, :cond_5b

    .line 362
    iput-boolean v11, p0, Ljava/net/URI;->absolute:Z

    .line 363
    invoke-direct {p0, p1, v1}, Ljava/net/URI;->validateScheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 364
    add-int/lit8 v5, v1, 0x1

    .line 366
    .local v5, "start":I
    if-ne v5, v3, :cond_46

    .line 367
    new-instance v6, Ljava/net/URISyntaxException;

    const-string v7, "Scheme-specific part expected"

    invoke-direct {v6, p1, v7, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    .line 371
    :cond_46
    const-string v6, "/"

    invoke-virtual {p1, v5, v6, v10, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 372
    iput-boolean v11, p0, Ljava/net/URI;->opaque:Z

    .line 373
    sget-object v6, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    const-string v7, "scheme specific part"

    invoke-virtual {v6, p1, v5, v3, v7}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 410
    :goto_5a
    return-void

    .line 378
    .end local v5    # "start":I
    :cond_5b
    iput-boolean v10, p0, Ljava/net/URI;->absolute:Z

    .line 379
    const/4 v5, 0x0

    .line 382
    .restart local v5    # "start":I
    :cond_5e
    iput-boolean v10, p0, Ljava/net/URI;->opaque:Z

    .line 383
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 387
    const-string v6, "//"

    const/4 v7, 0x2

    invoke-virtual {p1, v5, v6, v10, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 388
    add-int/lit8 v0, v5, 0x2

    .line 389
    .local v0, "authorityStart":I
    const-string v6, "/?"

    invoke-static {p1, v6, v0, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    .line 390
    .local v2, "fileStart":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v0, v6, :cond_89

    .line 391
    new-instance v6, Ljava/net/URISyntaxException;

    const-string v7, "Authority expected"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v6, p1, v7, v8}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    .line 393
    :cond_89
    if-ge v0, v2, :cond_95

    .line 394
    sget-object v6, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    const-string v7, "authority"

    invoke-virtual {v6, p1, v0, v2, v7}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 401
    .end local v0    # "authorityStart":I
    :cond_95
    :goto_95
    const-string v6, "?"

    invoke-static {p1, v6, v2, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    .line 402
    .local v4, "queryStart":I
    sget-object v6, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    const-string v7, "path"

    invoke-virtual {v6, p1, v2, v4, v7}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 405
    if-ge v4, v3, :cond_b3

    .line 406
    sget-object v6, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    add-int/lit8 v7, v4, 0x1

    const-string v8, "query"

    invoke-virtual {v6, p1, v7, v3, v8}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 409
    :cond_b3
    invoke-direct {p0, p2}, Ljava/net/URI;->parseAuthority(Z)V

    goto :goto_5a

    .line 397
    .end local v2    # "fileStart":I
    .end local v4    # "queryStart":I
    :cond_b7
    move v2, v5

    .restart local v2    # "fileStart":I
    goto :goto_95
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1382
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1384
    :try_start_3
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_9} :catch_a

    .line 1388
    return-void

    .line 1385
    :catch_a
    move-exception v0

    .line 1386
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setSchemeSpecificPart()V
    .registers 4

    .prologue
    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1235
    .local v0, "ssp":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 1236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    :cond_21
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 1239
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    :cond_2a
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_46

    .line 1242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 1246
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1247
    return-void
.end method

.method private validateScheme(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 413
    if-nez p2, :cond_b

    .line 414
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Scheme expected"

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 417
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, p2, :cond_23

    .line 418
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Llibcore/net/url/UrlUtils;->isValidSchemeChar(IC)Z

    move-result v1

    if-nez v1, :cond_20

    .line 419
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Illegal character in scheme"

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 417
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 423
    :cond_23
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private validateUserInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 508
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 509
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 510
    .local v0, "ch":C
    const/16 v2, 0x5d

    if-eq v0, v2, :cond_13

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1d

    .line 511
    :cond_13
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Illegal character in userInfo"

    add-int v4, p3, v1

    invoke-direct {v2, p1, v3, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 508
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 514
    .end local v0    # "ch":C
    :cond_20
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1392
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 1393
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1394
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p1, Ljava/net/URI;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/net/URI;)I
    .registers 7
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 619
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_c

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_c

    move v0, v1

    .line 716
    :cond_b
    :goto_b
    return v0

    .line 621
    :cond_c
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_16

    move v0, v2

    .line 622
    goto :goto_b

    .line 623
    :cond_16
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_28

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_28

    .line 624
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 625
    .local v0, "ret":I
    if-nez v0, :cond_b

    .line 631
    .end local v0    # "ret":I
    :cond_28
    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_32

    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_32

    move v0, v1

    .line 632
    goto :goto_b

    .line 633
    :cond_32
    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_3c

    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_3c

    move v0, v2

    .line 634
    goto :goto_b

    .line 635
    :cond_3c
    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_58

    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_58

    .line 636
    iget-object v3, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 637
    .restart local v0    # "ret":I
    if-nez v0, :cond_b

    .line 704
    :cond_4e
    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_f9

    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v3, :cond_f9

    move v0, v2

    .line 705
    goto :goto_b

    .line 645
    .end local v0    # "ret":I
    :cond_58
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_62

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_62

    move v0, v2

    .line 646
    goto :goto_b

    .line 647
    :cond_62
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_6c

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_6c

    move v0, v1

    .line 648
    goto :goto_b

    .line 649
    :cond_6c
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_c5

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_c5

    .line 650
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_bb

    iget-object v3, p1, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_bb

    .line 652
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_86

    iget-object v3, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_86

    move v0, v2

    .line 653
    goto :goto_b

    .line 654
    :cond_86
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_91

    iget-object v3, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_91

    move v0, v1

    .line 655
    goto/16 :goto_b

    .line 656
    :cond_91
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_a3

    iget-object v3, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_a3

    .line 657
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 658
    .restart local v0    # "ret":I
    if-nez v0, :cond_b

    .line 664
    .end local v0    # "ret":I
    :cond_a3
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 665
    .restart local v0    # "ret":I
    if-nez v0, :cond_b

    .line 670
    iget v3, p0, Ljava/net/URI;->port:I

    iget v4, p1, Ljava/net/URI;->port:I

    if-eq v3, v4, :cond_c5

    .line 671
    iget v1, p0, Ljava/net/URI;->port:I

    iget v2, p1, Ljava/net/URI;->port:I

    sub-int v0, v1, v2

    goto/16 :goto_b

    .line 675
    .end local v0    # "ret":I
    :cond_bb
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 676
    .restart local v0    # "ret":I
    if-nez v0, :cond_b

    .line 684
    .end local v0    # "ret":I
    :cond_c5
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 685
    .restart local v0    # "ret":I
    if-nez v0, :cond_b

    .line 691
    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_da

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_da

    move v0, v2

    .line 692
    goto/16 :goto_b

    .line 693
    :cond_da
    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_e5

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_e5

    move v0, v1

    .line 694
    goto/16 :goto_b

    .line 695
    :cond_e5
    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_4e

    .line 696
    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 697
    if-eqz v0, :cond_4e

    goto/16 :goto_b

    .line 706
    :cond_f9
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v2, :cond_104

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_104

    move v0, v1

    .line 707
    goto/16 :goto_b

    .line 708
    :cond_104
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_116

    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_116

    .line 709
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 710
    if-nez v0, :cond_b

    .line 716
    :cond_116
    const/4 v0, 0x0

    goto/16 :goto_b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 820
    instance-of v3, p1, Ljava/net/URI;

    if-nez v3, :cond_7

    .line 895
    :cond_6
    :goto_6
    return v1

    :cond_7
    move-object v0, p1

    .line 823
    check-cast v0, Ljava/net/URI;

    .line 825
    .local v0, "uri":Ljava/net/URI;
    iget-object v3, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v3, :cond_12

    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v3, :cond_6

    :cond_12
    iget-object v3, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 828
    :cond_1a
    iget-object v3, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_2c

    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_2c

    .line 829
    iget-object v3, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v4, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 834
    :cond_2c
    iget-object v3, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_34

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_6

    :cond_34
    iget-object v3, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 837
    :cond_3c
    iget-object v3, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_4e

    .line 838
    iget-object v3, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 843
    :cond_4e
    iget-boolean v3, v0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_5f

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_5f

    .line 844
    iget-object v1, v0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_6

    .line 846
    :cond_5f
    iget-boolean v3, v0, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_6

    .line 847
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 851
    iget-object v3, v0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_79

    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_6

    :cond_79
    iget-object v3, v0, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_81

    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 854
    :cond_81
    iget-object v3, v0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_93

    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_93

    .line 855
    iget-object v3, v0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v4, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 860
    :cond_93
    iget-object v3, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_9b

    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_6

    :cond_9b
    iget-object v3, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_a3

    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 863
    :cond_a3
    iget-object v3, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_102

    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_102

    .line 864
    iget-object v3, v0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_b3

    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_6

    :cond_b3
    iget-object v3, v0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v3, :cond_bb

    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 867
    :cond_bb
    iget-object v3, v0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v3, :cond_cd

    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v3, :cond_cd

    .line 869
    iget-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_6

    .line 871
    :cond_cd
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 875
    iget v3, p0, Ljava/net/URI;->port:I

    iget v4, v0, Ljava/net/URI;->port:I

    if-ne v3, v4, :cond_6

    .line 879
    iget-object v3, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_e5

    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_6

    :cond_e5
    iget-object v3, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_ed

    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 882
    :cond_ed
    iget-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_ff

    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_ff

    .line 883
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_6

    :cond_ff
    move v1, v2

    .line 885
    goto/16 :goto_6

    :cond_102
    move v1, v2

    .line 890
    goto/16 :goto_6
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 928
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEffectivePort()I
    .registers 3

    .prologue
    .line 972
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget v1, p0, Ljava/net/URI;->port:I

    invoke-static {v0, v1}, Ljava/net/URI;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1028
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 959
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 999
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 967
    iget v0, p0, Ljava/net/URI;->port:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1013
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 936
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getRawFragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1036
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1006
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRawQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1020
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRawSchemeSpecificPart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 920
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    return-object v0
.end method

.method public getRawUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 952
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 904
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 912
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 944
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1040
    iget v0, p0, Ljava/net/URI;->hash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 1041
    invoke-direct {p0}, Ljava/net/URI;->getHashString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/net/URI;->hash:I

    .line 1043
    :cond_f
    iget v0, p0, Ljava/net/URI;->hash:I

    return v0
.end method

.method public isAbsolute()Z
    .registers 2

    .prologue
    .line 1052
    iget-boolean v0, p0, Ljava/net/URI;->absolute:Z

    return v0
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 1061
    iget-boolean v0, p0, Ljava/net/URI;->opaque:Z

    return v0
.end method

.method public normalize()Ljava/net/URI;
    .registers 5

    .prologue
    .line 1092
    iget-boolean v2, p0, Ljava/net/URI;->opaque:Z

    if-eqz v2, :cond_5

    .line 1105
    .end local p0    # "this":Ljava/net/URI;
    :cond_4
    :goto_4
    return-object p0

    .line 1095
    .restart local p0    # "this":Ljava/net/URI;
    :cond_5
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, "normalizedPath":Ljava/lang/String;
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1102
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v1

    .line 1103
    .local v1, "result":Ljava/net/URI;
    iput-object v0, v1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1104
    invoke-direct {v1}, Ljava/net/URI;->setSchemeSpecificPart()V

    move-object p0, v1

    .line 1105
    goto :goto_4
.end method

.method public parseServerAuthority()Ljava/net/URI;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 1119
    iget-boolean v0, p0, Ljava/net/URI;->serverAuthority:Z

    if-nez v0, :cond_8

    .line 1120
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/URI;->parseAuthority(Z)V

    .line 1122
    :cond_8
    return-object p0
.end method

.method public relativize(Ljava/net/URI;)Ljava/net/URI;
    .registers 8
    .param p1, "relative"    # Ljava/net/URI;

    .prologue
    const/4 v5, 0x0

    .line 1134
    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_a

    .line 1176
    .end local p1    # "relative":Ljava/net/URI;
    :cond_9
    :goto_9
    return-object p1

    .line 1138
    .restart local p1    # "relative":Ljava/net/URI;
    :cond_a
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_5a

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 1143
    :cond_12
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_65

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 1149
    :cond_1a
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1150
    .local v2, "thisPath":Ljava/lang/String;
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1156
    .local v0, "relativePath":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1158
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1165
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1170
    :cond_3e
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1}, Ljava/net/URI;-><init>()V

    .line 1171
    .local v1, "result":Ljava/net/URI;
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 1172
    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v3, v1, Ljava/net/URI;->query:Ljava/lang/String;

    .line 1174
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1175
    invoke-direct {v1}, Ljava/net/URI;->setSchemeSpecificPart()V

    move-object p1, v1

    .line 1176
    goto :goto_9

    .line 1138
    .end local v0    # "relativePath":Ljava/lang/String;
    .end local v1    # "result":Ljava/net/URI;
    .end local v2    # "thisPath":Ljava/lang/String;
    :cond_5a
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_9

    .line 1143
    :cond_65
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_9
.end method

.method public resolve(Ljava/lang/String;)Ljava/net/URI;
    .registers 3
    .param p1, "relative"    # Ljava/lang/String;

    .prologue
    .line 1260
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/net/URI;)Ljava/net/URI;
    .registers 8
    .param p1, "relative"    # Ljava/net/URI;

    .prologue
    .line 1188
    iget-boolean v3, p1, Ljava/net/URI;->absolute:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_a

    :cond_8
    move-object v2, p1

    .line 1225
    :goto_9
    return-object v2

    .line 1192
    :cond_a
    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_1b

    .line 1195
    invoke-direct {p1}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v2

    .line 1196
    .local v2, "result":Ljava/net/URI;
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 1197
    iget-boolean v3, p0, Ljava/net/URI;->absolute:Z

    iput-boolean v3, v2, Ljava/net/URI;->absolute:Z

    goto :goto_9

    .line 1201
    .end local v2    # "result":Ljava/net/URI;
    :cond_1b
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_34

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_34

    .line 1203
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v2

    .line 1204
    .restart local v2    # "result":Ljava/net/URI;
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->fragment:Ljava/lang/String;

    goto :goto_9

    .line 1208
    .end local v2    # "result":Ljava/net/URI;
    :cond_34
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v2

    .line 1209
    .restart local v2    # "result":Ljava/net/URI;
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 1210
    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->query:Ljava/lang/String;

    .line 1212
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1214
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1223
    .local v1, "resolvedPath":Ljava/lang/String;
    :goto_4c
    iget-object v3, v2, Ljava/net/URI;->authority:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Llibcore/net/url/UrlUtils;->authoritySafePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1224
    invoke-direct {v2}, Ljava/net/URI;->setSchemeSpecificPart()V

    goto :goto_9

    .line 1215
    .end local v1    # "resolvedPath":Ljava/lang/String;
    :cond_5d
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1217
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    .restart local v1    # "resolvedPath":Ljava/lang/String;
    goto :goto_4c

    .line 1220
    .end local v1    # "resolvedPath":Ljava/lang/String;
    :cond_68
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 1221
    .local v0, "endIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljava/net/URI;->path:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "resolvedPath":Ljava/lang/String;
    goto :goto_4c
.end method

.method public toASCIIString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1275
    .local v0, "result":Ljava/lang/StringBuilder;
    sget-object v1, Ljava/net/URI;->ASCII_ONLY:Llibcore/net/UriCodec;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1283
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1284
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1316
    :goto_6
    return-object v1

    .line 1287
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1288
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 1289
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1292
    :cond_1a
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_3a

    .line 1293
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    :cond_23
    :goto_23
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 1311
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1312
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1316
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    goto :goto_6

    .line 1295
    :cond_3a
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 1296
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    :cond_48
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_51

    .line 1301
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    :cond_51
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 1305
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1306
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23
.end method

.method public toURL()Ljava/net/URL;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1375
    iget-boolean v0, p0, Ljava/net/URI;->absolute:Z

    if-nez v0, :cond_21

    .line 1376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI is not absolute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1378
    :cond_21
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
