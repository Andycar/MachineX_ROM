.class public Ljava/util/Properties;
.super Ljava/util/Hashtable;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final NONE:I = 0x0

.field private static final PROP_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <!ELEMENT properties (comment?, entry*) >    <!ATTLIST properties version CDATA #FIXED \"1.0\" >    <!ELEMENT comment (#PCDATA) >    <!ELEMENT entry (#PCDATA) >    <!ATTLIST entry key CDATA #REQUIRED >"

.field private static final PROP_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/properties.dtd"

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2

.field private static final serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field private transient builder:Ljavax/xml/parsers/DocumentBuilder;

.field protected defaults:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .registers 3
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 103
    iput-object p1, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    .line 104
    return-void
.end method

.method private dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "key"    # Z

    .prologue
    const/16 v5, 0x20

    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, "i":I
    if-nez p3, :cond_18

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_18

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_18

    .line 109
    const-string v4, "\\ "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 113
    :cond_18
    :goto_18
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_78

    .line 114
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 115
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_7a

    .line 129
    :pswitch_25
    const-string v4, "\\#!=:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_31

    if-eqz p3, :cond_36

    if-ne v0, v5, :cond_36

    .line 130
    :cond_31
    const/16 v4, 0x5c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    :cond_36
    if-lt v0, v5, :cond_5a

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_5a

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 117
    :pswitch_42
    const-string v4, "\\t"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 120
    :pswitch_48
    const-string v4, "\\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 123
    :pswitch_4e
    const-string v4, "\\f"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 126
    :pswitch_54
    const-string v4, "\\r"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 135
    :cond_5a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "hex":Ljava/lang/String;
    const-string v4, "\\u"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_64
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_74

    .line 138
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 140
    :cond_74
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 144
    .end local v0    # "ch":C
    .end local v1    # "hex":Ljava/lang/String;
    .end local v3    # "j":I
    :cond_78
    return-void

    .line 115
    nop

    :pswitch_data_7a
    .packed-switch 0x9
        :pswitch_42
        :pswitch_48
        :pswitch_25
        :pswitch_4e
        :pswitch_54
    .end packed-switch
.end method

.method private listToAppendable(Ljava/lang/Appendable;)V
    .registers 10
    .param p1, "out"    # Ljava/lang/Appendable;

    .prologue
    .line 206
    if-nez p1, :cond_11

    .line 207
    :try_start_2
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "out == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_a

    .line 231
    :catch_a
    move-exception v1

    .line 233
    .local v1, "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 209
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_11
    :try_start_11
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x50

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 211
    .local v3, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_1c
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 212
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    invoke-super {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 216
    .local v4, "property":Ljava/lang/String;
    iget-object v0, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    .line 217
    .local v0, "def":Ljava/util/Properties;
    :goto_38
    if-nez v4, :cond_43

    .line 218
    invoke-virtual {v0, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "property":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 219
    .restart local v4    # "property":Ljava/lang/String;
    iget-object v0, v0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    goto :goto_38

    .line 221
    :cond_43
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x28

    if-le v6, v7, :cond_6d

    .line 222
    const/4 v6, 0x0

    const/16 v7, 0x25

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :goto_5a
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 229
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1c

    .line 225
    :cond_6d
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_70} :catch_a

    goto :goto_5a

    .line 235
    .end local v0    # "def":Ljava/util/Properties;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "property":Ljava/lang/String;
    :cond_71
    return-void
.end method

.method private selectProperties(Ljava/util/Hashtable;Z)V
    .registers 7
    .param p2, "isStringOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Hashtable",
            "<TK;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, "selectProperties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;Ljava/lang/Object;>;"
    iget-object v3, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v3, :cond_9

    .line 463
    iget-object v3, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-direct {v3, p1, p2}, Ljava/util/Properties;->selectProperties(Ljava/util/Hashtable;Z)V

    .line 465
    :cond_9
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 466
    .local v1, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 468
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 469
    .local v0, "key":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_1d

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 473
    :cond_1d
    invoke-virtual {p0, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 474
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 476
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "value":Ljava/lang/Object;
    :cond_25
    return-void
.end method

.method private substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 753
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 754
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 755
    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 756
    const-string v0, "\'"

    const-string v1, "&apos;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 757
    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 758
    return-object p1
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 157
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_18

    check-cast v1, Ljava/lang/String;

    .end local v1    # "result":Ljava/lang/Object;
    move-object v0, v1

    .line 158
    .local v0, "property":Ljava/lang/String;
    :goto_b
    if-nez v0, :cond_17

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v2, :cond_17

    .line 159
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_17
    return-object v0

    .line 157
    .end local v0    # "property":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_18
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 178
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1a

    check-cast v1, Ljava/lang/String;

    .end local v1    # "result":Ljava/lang/Object;
    move-object v0, v1

    .line 179
    .local v0, "property":Ljava/lang/String;
    :goto_b
    if-nez v0, :cond_17

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v2, :cond_17

    .line 180
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_17
    if-nez v0, :cond_1c

    .line 185
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_19
    return-object p2

    .line 178
    .end local v0    # "property":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/Object;
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_1a
    const/4 v0, 0x0

    goto :goto_b

    .end local v1    # "result":Ljava/lang/Object;
    .restart local v0    # "property":Ljava/lang/String;
    :cond_1c
    move-object p2, v0

    .line 185
    goto :goto_19
.end method

.method public list(Ljava/io/PrintStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Ljava/util/Properties;->listToAppendable(Ljava/lang/Appendable;)V

    .line 194
    return-void
.end method

.method public list(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Ljava/util/Properties;->listToAppendable(Ljava/lang/Appendable;)V

    .line 202
    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    monitor-enter p0

    if-nez p1, :cond_e

    .line 246
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 245
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 248
    :cond_e
    :try_start_e
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_b

    .line 249
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized load(Ljava/io/Reader;)V
    .registers 23
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    monitor-enter p0

    if-nez p1, :cond_e

    .line 279
    :try_start_3
    new-instance v19, Ljava/lang/NullPointerException;

    const-string v20, "in == null"

    invoke-direct/range {v19 .. v20}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 278
    :catchall_b
    move-exception v19

    monitor-exit p0

    throw v19

    .line 281
    :cond_e
    const/4 v11, 0x0

    .local v11, "mode":I
    const/16 v17, 0x0

    .local v17, "unicode":I
    const/4 v5, 0x0

    .line 282
    .local v5, "count":I
    const/16 v19, 0x28

    :try_start_14
    move/from16 v0, v19

    new-array v4, v0, [C

    .line 283
    .local v4, "buf":[C
    const/4 v14, 0x0

    .local v14, "offset":I
    const/4 v10, -0x1

    .line 284
    .local v10, "keyLength":I
    const/4 v7, 0x1

    .line 286
    .local v7, "firstChar":Z
    new-instance v3, Ljava/io/BufferedReader;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v3, "br":Ljava/io/BufferedReader;
    move v15, v14

    .line 289
    .end local v14    # "offset":I
    .local v15, "offset":I
    :cond_23
    :goto_23
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v8

    .line 290
    .local v8, "intVal":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_41

    .line 422
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_172

    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v5, v0, :cond_172

    .line 423
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Invalid Unicode sequence: expected format \\uxxxx"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 293
    :cond_41
    int-to-char v13, v8

    .line 295
    .local v13, "nextChar":C
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_5e

    .line 296
    array-length v0, v4

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [C

    .line 297
    .local v12, "newBuf":[C
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v12, v1, v15}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 298
    move-object v4, v12

    .line 300
    .end local v12    # "newBuf":[C
    :cond_5e
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_9b

    .line 301
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 302
    .local v6, "digit":I
    if-ltz v6, :cond_8c

    .line 303
    shl-int/lit8 v19, v17, 0x4

    add-int v17, v19, v6

    .line 304
    add-int/lit8 v5, v5, 0x1

    const/16 v19, 0x4

    move/from16 v0, v19

    if-lt v5, v0, :cond_23

    .line 310
    :cond_7a
    const/4 v11, 0x0

    .line 311
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v19, v0

    aput-char v19, v4, v15

    .line 312
    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v13, v0, :cond_9a

    move v15, v14

    .line 313
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_23

    .line 307
    :cond_8c
    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v5, v0, :cond_7a

    .line 308
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Invalid Unicode sequence: illegal character"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    :cond_9a
    move v15, v14

    .line 316
    .end local v6    # "digit":I
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_9b
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_d0

    .line 317
    const/4 v11, 0x0

    .line 318
    sparse-switch v13, :sswitch_data_1be

    .line 415
    :cond_a5
    :goto_a5
    const/4 v7, 0x0

    .line 416
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v11, v0, :cond_ae

    .line 417
    move v10, v15

    .line 418
    const/4 v11, 0x0

    .line 420
    :cond_ae
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    aput-char v13, v4, v15

    move v15, v14

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_23

    .line 320
    :sswitch_b5
    const/4 v11, 0x3

    .line 321
    goto/16 :goto_23

    .line 323
    :sswitch_b8
    const/4 v11, 0x5

    .line 324
    goto/16 :goto_23

    .line 326
    :sswitch_bb
    const/16 v13, 0x8

    .line 327
    goto :goto_a5

    .line 329
    :sswitch_be
    const/16 v13, 0xc

    .line 330
    goto :goto_a5

    .line 332
    :sswitch_c1
    const/16 v13, 0xa

    .line 333
    goto :goto_a5

    .line 335
    :sswitch_c4
    const/16 v13, 0xd

    .line 336
    goto :goto_a5

    .line 338
    :sswitch_c7
    const/16 v13, 0x9

    .line 339
    goto :goto_a5

    .line 341
    :sswitch_ca
    const/4 v11, 0x2

    .line 342
    const/4 v5, 0x0

    move/from16 v17, v5

    .line 343
    goto/16 :goto_23

    .line 346
    :cond_d0
    sparse-switch v13, :sswitch_data_1e0

    .line 398
    :cond_d3
    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_163

    .line 399
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_e0

    .line 400
    const/4 v11, 0x5

    .line 403
    :cond_e0
    if-eqz v15, :cond_23

    if-eq v15, v10, :cond_23

    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v11, v0, :cond_23

    .line 406
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_163

    .line 407
    const/4 v11, 0x4

    .line 408
    goto/16 :goto_23

    .line 349
    :sswitch_f3
    if-eqz v7, :cond_d3

    .line 351
    :cond_f5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v8

    .line 352
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_23

    .line 355
    int-to-char v13, v8

    .line 356
    const/16 v19, 0xd

    move/from16 v0, v19

    if-eq v13, v0, :cond_23

    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v13, v0, :cond_f5

    goto/16 :goto_23

    .line 364
    :sswitch_10e
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_117

    .line 365
    const/4 v11, 0x5

    .line 366
    goto/16 :goto_23

    .line 370
    :cond_117
    :sswitch_117
    const/4 v11, 0x0

    .line 371
    const/4 v7, 0x1

    .line 372
    if-gtz v15, :cond_11f

    if-nez v15, :cond_14a

    if-nez v10, :cond_14a

    .line 373
    :cond_11f
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_126

    .line 374
    move v10, v15

    .line 376
    :cond_126
    new-instance v16, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v15}, Ljava/lang/String;-><init>([CII)V

    .line 377
    .local v16, "temp":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v16    # "temp":Ljava/lang/String;
    :cond_14a
    const/4 v10, -0x1

    .line 381
    const/4 v14, 0x0

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    move v15, v14

    .line 382
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_23

    .line 384
    :sswitch_14f
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v11, v0, :cond_156

    .line 385
    move v10, v15

    .line 387
    :cond_156
    const/4 v11, 0x1

    .line 388
    goto/16 :goto_23

    .line 391
    :sswitch_159
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_d3

    .line 392
    const/4 v11, 0x0

    .line 393
    move v10, v15

    .line 394
    goto/16 :goto_23

    .line 411
    :cond_163
    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v11, v0, :cond_16f

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_a5

    .line 412
    :cond_16f
    const/4 v11, 0x0

    goto/16 :goto_a5

    .line 425
    .end local v13    # "nextChar":C
    :cond_172
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_17b

    if-lez v15, :cond_17b

    .line 426
    move v10, v15

    .line 428
    :cond_17b
    if-ltz v10, :cond_1bc

    .line 429
    new-instance v16, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v15}, Ljava/lang/String;-><init>([CII)V

    .line 430
    .restart local v16    # "temp":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 431
    .local v9, "key":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 432
    .local v18, "value":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_1b5

    .line 433
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u0000"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 435
    :cond_1b5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1bc
    .catchall {:try_start_14 .. :try_end_1bc} :catchall_b

    .line 437
    .end local v9    # "key":Ljava/lang/String;
    .end local v16    # "temp":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :cond_1bc
    monitor-exit p0

    return-void

    .line 318
    :sswitch_data_1be
    .sparse-switch
        0xa -> :sswitch_b8
        0xd -> :sswitch_b5
        0x62 -> :sswitch_bb
        0x66 -> :sswitch_be
        0x6e -> :sswitch_c1
        0x72 -> :sswitch_c4
        0x74 -> :sswitch_c7
        0x75 -> :sswitch_ca
    .end sparse-switch

    .line 346
    :sswitch_data_1e0
    .sparse-switch
        0xa -> :sswitch_10e
        0xd -> :sswitch_117
        0x21 -> :sswitch_f3
        0x23 -> :sswitch_f3
        0x3a -> :sswitch_159
        0x3d -> :sswitch_159
        0x5c -> :sswitch_14f
    .end sparse-switch
.end method

.method public declared-synchronized loadFromXML(Ljava/io/InputStream;)V
    .registers 13
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/InvalidPropertiesFormatException;
        }
    .end annotation

    .prologue
    .line 580
    monitor-enter p0

    if-nez p1, :cond_e

    .line 581
    :try_start_3
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "in == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 580
    :catchall_b
    move-exception v9

    monitor-exit p0

    throw v9

    .line 584
    :cond_e
    :try_start_e
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    if-nez v9, :cond_30

    .line 585
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_b

    move-result-object v5

    .line 591
    .local v5, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_16
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v9

    iput-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_1c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_16 .. :try_end_1c} :catch_40
    .catchall {:try_start_16 .. :try_end_1c} :catchall_b

    .line 596
    :try_start_1c
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v10, Ljava/util/Properties$1;

    invoke-direct {v10, p0}, Ljava/util/Properties$1;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v9, v10}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 610
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v10, Ljava/util/Properties$2;

    invoke-direct {v10, p0}, Ljava/util/Properties$2;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v9, v10}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_b

    .line 626
    .end local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_30
    :try_start_30
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v9, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 627
    .local v0, "doc":Lorg/w3c/dom/Document;
    const-string v9, "entry"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3b} :catch_64
    .catch Lorg/xml/sax/SAXException; {:try_start_30 .. :try_end_3b} :catch_66
    .catchall {:try_start_30 .. :try_end_3b} :catchall_b

    move-result-object v2

    .line 628
    .local v2, "entries":Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_47

    .line 649
    :cond_3e
    monitor-exit p0

    return-void

    .line 592
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "entries":Lorg/w3c/dom/NodeList;
    .restart local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_40
    move-exception v1

    .line 593
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_41
    new-instance v9, Ljava/lang/Error;

    invoke-direct {v9, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_b

    .line 631
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    .restart local v2    # "entries":Lorg/w3c/dom/NodeList;
    :cond_47
    :try_start_47
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 633
    .local v3, "entriesListLength":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4c
    if-ge v6, v3, :cond_3e

    .line 634
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 635
    .local v4, "entry":Lorg/w3c/dom/Element;
    const-string v9, "key"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 636
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 642
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {p0, v7, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_61} :catch_64
    .catch Lorg/xml/sax/SAXException; {:try_start_47 .. :try_end_61} :catch_66
    .catchall {:try_start_47 .. :try_end_61} :catchall_b

    .line 633
    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    .line 644
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "entries":Lorg/w3c/dom/NodeList;
    .end local v3    # "entriesListLength":I
    .end local v4    # "entry":Lorg/w3c/dom/Element;
    .end local v6    # "i":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :catch_64
    move-exception v1

    .line 645
    .local v1, "e":Ljava/io/IOException;
    :try_start_65
    throw v1

    .line 646
    .end local v1    # "e":Ljava/io/IOException;
    :catch_66
    move-exception v1

    .line 647
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v9, Ljava/util/InvalidPropertiesFormatException;

    invoke-direct {v9, v1}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_b
.end method

.method public propertyNames()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 443
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 444
    .local v0, "selected":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Properties;->selectProperties(Ljava/util/Hashtable;Z)V

    .line 445
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 495
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 498
    :goto_3
    return-void

    .line 496
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 511
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 525
    monitor-exit p0

    return-void

    .line 524
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized store(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 9
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    monitor-enter p0

    if-eqz p2, :cond_12

    .line 539
    :try_start_3
    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 541
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 543
    :cond_12
    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 544
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 545
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 548
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 549
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 550
    .local v2, "key":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v2, v4}, Ljava/util/Properties;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 551
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Ljava/util/Properties;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 553
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 555
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_71

    goto :goto_39

    .line 538
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catchall_71
    move-exception v4

    monitor-exit p0

    throw v4

    .line 557
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_74
    :try_start_74
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_71

    .line 558
    monitor-exit p0

    return-void
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public declared-synchronized storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    monitor-enter p0

    if-nez p1, :cond_e

    .line 694
    :try_start_3
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "os == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 693
    :catchall_b
    move-exception v7

    monitor-exit p0

    throw v7

    .line 695
    :cond_e
    if-nez p3, :cond_18

    .line 696
    :try_start_10
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "encoding == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_b

    .line 708
    :cond_18
    :try_start_18
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_18 .. :try_end_1f} :catch_98
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_18 .. :try_end_1f} :catch_bb
    .catchall {:try_start_18 .. :try_end_1f} :catchall_b

    move-result-object v1

    .line 719
    .local v1, "encodingCanonicalName":Ljava/lang/String;
    :goto_20
    :try_start_20
    new-instance v6, Ljava/io/PrintStream;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v7, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 722
    .local v6, "printStream":Ljava/io/PrintStream;
    const-string v7, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 724
    const-string v7, "\"?>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 726
    const-string v7, "<!DOCTYPE properties SYSTEM \""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 727
    const-string v7, "http://java.sun.com/dtd/properties.dtd"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 728
    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 730
    const-string v7, "<properties>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 732
    if-eqz p2, :cond_5a

    .line 733
    const-string v7, "<comment>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 734
    invoke-direct {p0, p2}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 735
    const-string v7, "</comment>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 738
    :cond_5a
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_62
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_de

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 739
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 740
    .local v5, "keyValue":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 741
    .local v3, "entryValue":Ljava/lang/String;
    const-string v7, "<entry key=\""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 742
    invoke-direct {p0, v5}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 743
    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 744
    invoke-direct {p0, v3}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 745
    const-string v7, "</entry>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_62

    .line 709
    .end local v1    # "encodingCanonicalName":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "entryValue":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "keyValue":Ljava/lang/String;
    .end local v6    # "printStream":Ljava/io/PrintStream;
    :catch_98
    move-exception v0

    .line 710
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: encoding name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is illegal, using UTF-8 as default encoding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 712
    const-string v1, "UTF-8"

    .line 717
    .restart local v1    # "encodingCanonicalName":Ljava/lang/String;
    goto/16 :goto_20

    .line 713
    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    .end local v1    # "encodingCanonicalName":Ljava/lang/String;
    :catch_bb
    move-exception v0

    .line 714
    .local v0, "e":Ljava/nio/charset/UnsupportedCharsetException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: encoding "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not supported, using UTF-8 as default encoding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 716
    const-string v1, "UTF-8"

    .restart local v1    # "encodingCanonicalName":Ljava/lang/String;
    goto/16 :goto_20

    .line 747
    .end local v0    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "printStream":Ljava/io/PrintStream;
    :cond_de
    const-string v7, "</properties>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v6}, Ljava/io/PrintStream;->flush()V
    :try_end_e6
    .catchall {:try_start_20 .. :try_end_e6} :catchall_b

    .line 749
    monitor-exit p0

    return-void
.end method

.method public stringPropertyNames()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 457
    .local v0, "stringProperties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/Properties;->selectProperties(Ljava/util/Hashtable;Z)V

    .line 458
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
