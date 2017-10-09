.class Ljava/util/jar/ManifestReader;
.super Ljava/lang/Object;
.source "ManifestReader.java"


# instance fields
.field private final attributeNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes$Name;",
            ">;"
        }
    .end annotation
.end field

.field private final buf:[B

.field private consecutiveLineBreaks:I

.field private final endOfMainSection:I

.field private name:Ljava/util/jar/Attributes$Name;

.field private pos:I

.field private value:Ljava/lang/String;

.field private final valueBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>([BLjava/util/jar/Attributes;)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "main"    # Ljava/util/jar/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/ManifestReader;->attributeNameCache:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/ManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    .line 50
    iput-object p1, p0, Ljava/util/jar/ManifestReader;->buf:[B

    .line 51
    :goto_18
    invoke-direct {p0}, Ljava/util/jar/ManifestReader;->readHeader()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 52
    iget-object v0, p0, Ljava/util/jar/ManifestReader;->name:Ljava/util/jar/Attributes$Name;

    iget-object v1, p0, Ljava/util/jar/ManifestReader;->value:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 54
    :cond_26
    iget v0, p0, Ljava/util/jar/ManifestReader;->pos:I

    iput v0, p0, Ljava/util/jar/ManifestReader;->endOfMainSection:I

    .line 55
    return-void
.end method

.method private readHeader()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    iget v2, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    if-le v2, v0, :cond_9

    .line 102
    iput v1, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    .line 110
    :goto_8
    return v1

    .line 105
    :cond_9
    invoke-direct {p0}, Ljava/util/jar/ManifestReader;->readName()V

    .line 106
    iput v1, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    .line 107
    invoke-direct {p0}, Ljava/util/jar/ManifestReader;->readValue()V

    .line 110
    iget v2, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    if-lez v2, :cond_17

    :goto_15
    move v1, v0

    goto :goto_8

    :cond_17
    move v0, v1

    goto :goto_15
.end method

.method private readName()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget v1, p0, Ljava/util/jar/ManifestReader;->pos:I

    .line 116
    .local v1, "mark":I
    :cond_2
    iget v3, p0, Ljava/util/jar/ManifestReader;->pos:I

    iget-object v4, p0, Ljava/util/jar/ManifestReader;->buf:[B

    array-length v4, v4

    if-ge v3, v4, :cond_61

    .line 117
    iget-object v3, p0, Ljava/util/jar/ManifestReader;->buf:[B

    iget v4, p0, Ljava/util/jar/ManifestReader;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/jar/ManifestReader;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_2

    .line 121
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ljava/util/jar/ManifestReader;->buf:[B

    iget v4, p0, Ljava/util/jar/ManifestReader;->pos:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 123
    .local v2, "nameString":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/jar/ManifestReader;->buf:[B

    iget v4, p0, Ljava/util/jar/ManifestReader;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/jar/ManifestReader;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0x20

    if-eq v3, v4, :cond_45

    .line 124
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid value for attribute \'%s\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_45
    :try_start_45
    iget-object v3, p0, Ljava/util/jar/ManifestReader;->attributeNameCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/Attributes$Name;

    iput-object v3, p0, Ljava/util/jar/ManifestReader;->name:Ljava/util/jar/Attributes$Name;

    .line 129
    iget-object v3, p0, Ljava/util/jar/ManifestReader;->name:Ljava/util/jar/Attributes$Name;

    if-nez v3, :cond_61

    .line 130
    new-instance v3, Ljava/util/jar/Attributes$Name;

    invoke-direct {v3, v2}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ljava/util/jar/ManifestReader;->name:Ljava/util/jar/Attributes$Name;

    .line 131
    iget-object v3, p0, Ljava/util/jar/ManifestReader;->attributeNameCache:Ljava/util/HashMap;

    iget-object v4, p0, Ljava/util/jar/ManifestReader;->name:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_61} :catch_62

    .line 139
    .end local v2    # "nameString":Ljava/lang/String;
    :cond_61
    return-void

    .line 133
    .restart local v2    # "nameString":Ljava/lang/String;
    :catch_62
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private readValue()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "lastCr":Z
    iget v2, p0, Ljava/util/jar/ManifestReader;->pos:I

    .line 144
    .local v2, "mark":I
    iget v0, p0, Ljava/util/jar/ManifestReader;->pos:I

    .line 145
    .local v0, "last":I
    iget-object v4, p0, Ljava/util/jar/ManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 146
    :goto_b
    iget v4, p0, Ljava/util/jar/ManifestReader;->pos:I

    iget-object v5, p0, Ljava/util/jar/ManifestReader;->buf:[B

    array-length v5, v5

    if-ge v4, v5, :cond_29

    .line 147
    iget-object v4, p0, Ljava/util/jar/ManifestReader;->buf:[B

    iget v5, p0, Ljava/util/jar/ManifestReader;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/util/jar/ManifestReader;->pos:I

    aget-byte v3, v4, v5

    .line 148
    .local v3, "next":B
    sparse-switch v3, :sswitch_data_72

    .line 171
    :cond_1f
    iget v4, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    if-lt v4, v7, :cond_6f

    .line 172
    iget v4, p0, Ljava/util/jar/ManifestReader;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljava/util/jar/ManifestReader;->pos:I

    .line 178
    .end local v3    # "next":B
    :cond_29
    iget-object v4, p0, Ljava/util/jar/ManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Ljava/util/jar/ManifestReader;->buf:[B

    sub-int v6, v0, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 181
    iget-object v4, p0, Ljava/util/jar/ManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/util/jar/ManifestReader;->value:Ljava/lang/String;

    .line 182
    return-void

    .line 150
    .restart local v3    # "next":B
    :sswitch_41
    new-instance v4, Ljava/io/IOException;

    const-string v5, "NUL character in a manifest"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    :sswitch_49
    if-eqz v1, :cond_4d

    .line 153
    const/4 v1, 0x0

    goto :goto_b

    .line 155
    :cond_4d
    iget v4, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    goto :goto_b

    .line 159
    :sswitch_54
    const/4 v1, 0x1

    .line 160
    iget v4, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    goto :goto_b

    .line 163
    :sswitch_5c
    iget v4, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    if-ne v4, v7, :cond_1f

    .line 164
    iget-object v4, p0, Ljava/util/jar/ManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Ljava/util/jar/ManifestReader;->buf:[B

    sub-int v6, v0, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 165
    iget v2, p0, Ljava/util/jar/ManifestReader;->pos:I

    .line 166
    const/4 v4, 0x0

    iput v4, p0, Ljava/util/jar/ManifestReader;->consecutiveLineBreaks:I

    goto :goto_b

    .line 175
    :cond_6f
    iget v0, p0, Ljava/util/jar/ManifestReader;->pos:I

    .line 176
    goto :goto_b

    .line 148
    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_41
        0xa -> :sswitch_49
        0xd -> :sswitch_54
        0x20 -> :sswitch_5c
    .end sparse-switch
.end method


# virtual methods
.method public getEndOfMainSection()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Ljava/util/jar/ManifestReader;->endOfMainSection:I

    return v0
.end method

.method public readEntries(Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Manifest$Chunk;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .local p2, "chunks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Manifest$Chunk;>;"
    iget v2, p0, Ljava/util/jar/ManifestReader;->pos:I

    .line 59
    .local v2, "mark":I
    :goto_2
    invoke-direct {p0}, Ljava/util/jar/ManifestReader;->readHeader()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 60
    sget-object v3, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    iget-object v4, p0, Ljava/util/jar/ManifestReader;->name:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 61
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Entry is not named"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_1a
    iget-object v1, p0, Ljava/util/jar/ManifestReader;->value:Ljava/lang/String;

    .line 65
    .local v1, "entryNameValue":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    .line 66
    .local v0, "entry":Ljava/util/jar/Attributes;
    if-nez v0, :cond_2b

    .line 67
    new-instance v0, Ljava/util/jar/Attributes;

    .end local v0    # "entry":Ljava/util/jar/Attributes;
    const/16 v3, 0xc

    invoke-direct {v0, v3}, Ljava/util/jar/Attributes;-><init>(I)V

    .line 70
    .restart local v0    # "entry":Ljava/util/jar/Attributes;
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Ljava/util/jar/ManifestReader;->readHeader()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 71
    iget-object v3, p0, Ljava/util/jar/ManifestReader;->name:Ljava/util/jar/Attributes$Name;

    iget-object v4, p0, Ljava/util/jar/ManifestReader;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 74
    :cond_39
    if-eqz p2, :cond_55

    .line 75
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 82
    new-instance v3, Ljava/io/IOException;

    const-string v4, "A jar verifier does not support more than one entry with the same name"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    :cond_49
    new-instance v3, Ljava/util/jar/Manifest$Chunk;

    iget v4, p0, Ljava/util/jar/ManifestReader;->pos:I

    invoke-direct {v3, v2, v4}, Ljava/util/jar/Manifest$Chunk;-><init>(II)V

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget v2, p0, Ljava/util/jar/ManifestReader;->pos:I

    .line 88
    :cond_55
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 90
    .end local v0    # "entry":Ljava/util/jar/Attributes;
    .end local v1    # "entryNameValue":Ljava/lang/String;
    :cond_59
    return-void
.end method
