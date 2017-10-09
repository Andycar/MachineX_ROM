.class Ljava/util/prefs/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# static fields
.field static final DOCTYPE:Ljava/lang/String; = "<!DOCTYPE preferences SYSTEM"

.field private static final FILE_PREFS:Ljava/lang/String; = "<!DOCTYPE map SYSTEM \'http://java.sun.com/dtd/preferences.dtd\'>"

.field static final HEADER:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

.field static final PREFS_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <!ELEMENT preferences (root)>    <!ATTLIST preferences EXTERNAL_XML_VERSION CDATA \"0.0\" >    <!ELEMENT root (map, node*) >    <!ATTLIST root type (system|user) #REQUIRED >    <!ELEMENT node (map, node*) >    <!ATTLIST node name CDATA #REQUIRED >    <!ELEMENT map (entry*) >    <!ELEMENT entry EMPTY >    <!ATTLIST entry key   CDATA #REQUIRED value CDATA #REQUIRED >"

.field static final PREFS_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/preferences.dtd"

.field private static final XML_VERSION:F = 1.0f

.field private static final builder:Ljavax/xml/parsers/DocumentBuilder;

.field private static indent:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 101
    const/4 v2, -0x1

    sput v2, Ljava/util/prefs/XMLParser;->indent:I

    .line 107
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 108
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 110
    :try_start_b
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    sput-object v2, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_11
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_11} :catch_26

    .line 114
    sget-object v2, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v3, Ljava/util/prefs/XMLParser$1;

    invoke-direct {v3}, Ljava/util/prefs/XMLParser$1;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 126
    sget-object v2, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v3, Ljava/util/prefs/XMLParser$2;

    invoke-direct {v3}, Ljava/util/prefs/XMLParser$2;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 139
    return-void

    .line 111
    :catch_26
    move-exception v0

    .line 112
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method

.method private static exportEntries(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V
    .registers 7
    .param p0, "prefs"    # Ljava/util/prefs/Preferences;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "keys":[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [Ljava/lang/String;

    .line 214
    .local v2, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v3, v1

    if-ge v0, v3, :cond_17

    .line 215
    aget-object v3, v1, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 217
    :cond_17
    invoke-static {v1, v2, p1}, Ljava/util/prefs/XMLParser;->exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 218
    return-void
.end method

.method private static exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 11
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/String;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 222
    array-length v1, p0

    if-nez v1, :cond_c

    .line 223
    const-string v1, "map"

    invoke-static {v1, p2}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 234
    :goto_b
    return-void

    .line 226
    :cond_c
    const-string v1, "map"

    invoke-static {v1, p2}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v1, p0

    if-ge v0, v1, :cond_35

    .line 228
    aget-object v1, p1, v0

    if-eqz v1, :cond_32

    .line 229
    const-string v1, "entry"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "key"

    aput-object v3, v2, v5

    const-string v3, "value"

    aput-object v3, v2, v6

    new-array v3, v7, [Ljava/lang/String;

    aget-object v4, p0, v0

    aput-object v4, v3, v5

    aget-object v4, p1, v0

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3, p2}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 227
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 233
    :cond_35
    const-string v1, "map"

    invoke-static {v1, p2}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto :goto_b
.end method

.method private static exportNode(Ljava/util/StringTokenizer;Ljava/util/prefs/Preferences;ZLjava/io/BufferedWriter;)V
    .registers 10
    .param p0, "ancestors"    # Ljava/util/StringTokenizer;
    .param p1, "prefs"    # Ljava/util/prefs/Preferences;
    .param p2, "withSubTree"    # Z
    .param p3, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 181
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "name":Ljava/lang/String;
    const-string v1, "node"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3, p3}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 183
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 184
    const-string v1, "map"

    invoke-static {v1, p3}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 185
    invoke-static {p0, p1, p2, p3}, Ljava/util/prefs/XMLParser;->exportNode(Ljava/util/StringTokenizer;Ljava/util/prefs/Preferences;ZLjava/io/BufferedWriter;)V

    .line 192
    :cond_29
    :goto_29
    const-string v1, "node"

    invoke-static {v1, p3}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 194
    .end local v0    # "name":Ljava/lang/String;
    :cond_2e
    return-void

    .line 187
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2f
    invoke-static {p1, p3}, Ljava/util/prefs/XMLParser;->exportEntries(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    .line 188
    if-eqz p2, :cond_29

    .line 189
    invoke-static {p1, p3}, Ljava/util/prefs/XMLParser;->exportSubTree(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    goto :goto_29
.end method

.method static exportPrefs(Ljava/util/prefs/Preferences;Ljava/io/OutputStream;Z)V
    .registers 11
    .param p0, "prefs"    # Ljava/util/prefs/Preferences;
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "withSubTree"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 149
    const/4 v2, -0x1

    sput v2, Ljava/util/prefs/XMLParser;->indent:I

    .line 150
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 151
    .local v1, "out":Ljava/io/BufferedWriter;
    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 153
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 155
    const-string v2, "<!DOCTYPE preferences SYSTEM"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 156
    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 157
    const-string v2, "http://java.sun.com/dtd/preferences.dtd"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 158
    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 160
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 162
    const-string v2, "preferences"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "EXTERNAL_XML_VERSION"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4, v1}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 164
    const-string v3, "root"

    new-array v4, v7, [Ljava/lang/String;

    const-string v2, "type"

    aput-object v2, v4, v6

    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->isUserNode()Z

    move-result v2

    if-eqz v2, :cond_84

    const-string v2, "user"

    :goto_5d
    aput-object v2, v5, v6

    invoke-static {v3, v4, v5, v1}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 166
    const-string v2, "map"

    invoke-static {v2, v1}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 168
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->absolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-direct {v0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v0, "ancestors":Ljava/util/StringTokenizer;
    invoke-static {v0, p0, p2, v1}, Ljava/util/prefs/XMLParser;->exportNode(Ljava/util/StringTokenizer;Ljava/util/prefs/Preferences;ZLjava/io/BufferedWriter;)V

    .line 171
    const-string v2, "root"

    invoke-static {v2, v1}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 172
    const-string v2, "preferences"

    invoke-static {v2, v1}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 173
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 174
    const/4 v1, 0x0

    .line 175
    return-void

    .line 164
    .end local v0    # "ancestors":Ljava/util/StringTokenizer;
    :cond_84
    const-string v2, "system"

    goto :goto_5d
.end method

.method private static exportSubTree(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V
    .registers 11
    .param p0, "prefs"    # Ljava/util/prefs/Preferences;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 198
    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->childrenNames()[Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "names":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_32

    .line 200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v3, v2

    if-ge v1, v3, :cond_32

    .line 201
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    .line 202
    .local v0, "child":Ljava/util/prefs/Preferences;
    const-string v3, "node"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "name"

    aput-object v5, v4, v7

    new-array v5, v8, [Ljava/lang/String;

    aget-object v6, v2, v1

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5, p1}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 203
    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->exportEntries(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    .line 204
    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->exportSubTree(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    .line 205
    const-string v3, "node"

    invoke-static {v3, p1}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 208
    .end local v0    # "child":Ljava/util/prefs/Preferences;
    .end local v1    # "i":I
    :cond_32
    return-void
.end method

.method private static flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 3
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    .line 248
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 250
    const-string v0, " />"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 252
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    .line 253
    return-void
.end method

.method private static flushEmptyElement(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 5
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "attrKeys"    # [Ljava/lang/String;
    .param p2, "attrValues"    # [Ljava/lang/String;
    .param p3, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p3}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    .line 258
    const-string v0, "<"

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p3, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 260
    invoke-static {p1, p2, p3}, Ljava/util/prefs/XMLParser;->flushPairs([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 261
    const-string v0, " />"

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->newLine()V

    .line 263
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    .line 264
    return-void
.end method

.method private static flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 4
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    .line 239
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 241
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 243
    return-void
.end method

.method private static flushIndent(ILjava/io/BufferedWriter;)V
    .registers 4
    .param p0, "ind"    # I
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_b

    .line 280
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    :cond_b
    return-void
.end method

.method private static flushPairs([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 5
    .param p0, "attrKeys"    # [Ljava/lang/String;
    .param p1, "attrValues"    # [Ljava/lang/String;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_24

    .line 269
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 270
    aget-object v1, p0, v0

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 271
    const-string v1, "=\""

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 272
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/util/prefs/XMLParser;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 273
    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    :cond_24
    return-void
.end method

.method private static flushStartTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 3
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    .line 297
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 299
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 301
    return-void
.end method

.method private static flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 5
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "attrKeys"    # [Ljava/lang/String;
    .param p2, "attrValues"    # [Ljava/lang/String;
    .param p3, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p3}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    .line 287
    const-string v0, "<"

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p3, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 289
    invoke-static {p1, p2, p3}, Ljava/util/prefs/XMLParser;->flushPairs([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 290
    const-string v0, ">"

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->newLine()V

    .line 292
    return-void
.end method

.method private static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_31

    .line 306
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 307
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_36

    .line 321
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 309
    :sswitch_19
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 312
    :sswitch_1f
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 315
    :sswitch_25
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 318
    :sswitch_2b
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 324
    .end local v0    # "c":C
    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 307
    :sswitch_data_36
    .sparse-switch
        0x22 -> :sswitch_2b
        0x26 -> :sswitch_25
        0x3c -> :sswitch_19
        0x3e -> :sswitch_1f
    .end sparse-switch
.end method

.method static importPrefs(Ljava/io/InputStream;)V
    .registers 11
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/InvalidPreferencesFormatException;
        }
    .end annotation

    .prologue
    .line 333
    :try_start_0
    sget-object v7, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 337
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 338
    .local v2, "preferences":Lorg/w3c/dom/Element;
    const-string v7, "EXTERNAL_XML_VERSION"

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, "version":Ljava/lang/String;
    if-eqz v6, :cond_47

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_47

    .line 340
    new-instance v7, Ljava/util/prefs/InvalidPreferencesFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Preferences version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not supported"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_40
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_40} :catch_40
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_40} :catch_70

    .line 357
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "preferences":Lorg/w3c/dom/Element;
    .end local v6    # "version":Ljava/lang/String;
    :catch_40
    move-exception v1

    .line 358
    .local v1, "e":Ljavax/xml/parsers/FactoryConfigurationError;
    new-instance v7, Ljava/util/prefs/InvalidPreferencesFormatException;

    invoke-direct {v7, v1}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 345
    .end local v1    # "e":Ljavax/xml/parsers/FactoryConfigurationError;
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    .restart local v2    # "preferences":Lorg/w3c/dom/Element;
    .restart local v6    # "version":Ljava/lang/String;
    :cond_47
    :try_start_47
    const-string v7, "root"

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 347
    .local v4, "root":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 348
    .local v3, "prefsRoot":Ljava/util/prefs/Preferences;
    const-string v7, "type"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "type":Ljava/lang/String;
    const-string v7, "user"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 350
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v3

    .line 356
    :goto_67
    invoke-static {v3, v4}, Ljava/util/prefs/XMLParser;->loadNode(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    .line 362
    return-void

    .line 352
    :cond_6b
    invoke-static {}, Ljava/util/prefs/Preferences;->systemRoot()Ljava/util/prefs/Preferences;
    :try_end_6e
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_47 .. :try_end_6e} :catch_40
    .catch Lorg/xml/sax/SAXException; {:try_start_47 .. :try_end_6e} :catch_70

    move-result-object v3

    goto :goto_67

    .line 359
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "preferences":Lorg/w3c/dom/Element;
    .end local v3    # "prefsRoot":Ljava/util/prefs/Preferences;
    .end local v4    # "root":Lorg/w3c/dom/Element;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :catch_70
    move-exception v1

    .line 360
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v7, Ljava/util/prefs/InvalidPreferencesFormatException;

    invoke-direct {v7, v1}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static loadNode(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V
    .registers 16
    .param p0, "prefs"    # Ljava/util/prefs/Preferences;
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 366
    const-string v12, "node"

    invoke-static {p1, v12}, Ljava/util/prefs/XMLParser;->selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 367
    .local v3, "children":Lorg/w3c/dom/NodeList;
    const-string v12, "map/entry"

    invoke-static {p1, v12}, Ljava/util/prefs/XMLParser;->selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 368
    .local v4, "entries":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 369
    .local v2, "childNumber":I
    new-array v10, v2, [Ljava/util/prefs/Preferences;

    .line 370
    .local v10, "prefChildren":[Ljava/util/prefs/Preferences;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .local v6, "entryNumber":I
    move-object v12, p0

    .line 371
    check-cast v12, Ljava/util/prefs/AbstractPreferences;

    iget-object v13, v12, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v13

    .line 372
    :try_start_1c
    move-object v0, p0

    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    move-result v12

    if-eqz v12, :cond_28

    .line 373
    monitor-exit v13

    .line 393
    :cond_27
    return-void

    .line 375
    :cond_28
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_29
    if-ge v7, v6, :cond_43

    .line 376
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 377
    .local v5, "entry":Lorg/w3c/dom/Element;
    const-string v12, "key"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 378
    .local v8, "key":Ljava/lang/String;
    const-string v12, "value"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 379
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {p0, v8, v11}, Ljava/util/prefs/Preferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 382
    .end local v5    # "entry":Lorg/w3c/dom/Element;
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_43
    const/4 v7, 0x0

    :goto_44
    if-ge v7, v2, :cond_5b

    .line 383
    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 384
    .local v1, "child":Lorg/w3c/dom/Element;
    const-string v12, "name"

    invoke-interface {v1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 385
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {p0, v9}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v12

    aput-object v12, v10, v7

    .line 382
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 387
    .end local v1    # "child":Lorg/w3c/dom/Element;
    .end local v9    # "name":Ljava/lang/String;
    :cond_5b
    monitor-exit v13
    :try_end_5c
    .catchall {:try_start_1c .. :try_end_5c} :catchall_6d

    .line 390
    const/4 v7, 0x0

    :goto_5d
    if-ge v7, v2, :cond_27

    .line 391
    aget-object v13, v10, v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    invoke-static {v13, v12}, Ljava/util/prefs/XMLParser;->loadNode(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    .line 390
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    .line 387
    .end local v7    # "i":I
    :catchall_6d
    move-exception v12

    :try_start_6e
    monitor-exit v13
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v12
.end method

.method static readXmlPreferences(Ljava/io/File;)Ljava/util/Properties;
    .registers 13
    .param p0, "xmlFile"    # Ljava/io/File;

    .prologue
    .line 445
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    .line 446
    .local v8, "result":Ljava/util/Properties;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_13

    .line 447
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 470
    :goto_12
    return-object v8

    .line 448
    :cond_13
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_6e

    .line 449
    const/4 v6, 0x0

    .line 451
    .local v6, "reader":Ljava/io/Reader;
    :try_start_1a
    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v11, "UTF-8"

    invoke-direct {v7, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_26} :catch_5f
    .catch Lorg/xml/sax/SAXException; {:try_start_1a .. :try_end_26} :catch_64
    .catchall {:try_start_1a .. :try_end_26} :catchall_69

    .line 452
    .end local v6    # "reader":Ljava/io/Reader;
    .local v7, "reader":Ljava/io/Reader;
    :try_start_26
    sget-object v10, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v11, Lorg/xml/sax/InputSource;

    invoke-direct {v11, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v10, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 453
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    const-string v11, "entry"

    invoke-static {v10, v11}, Ljava/util/prefs/XMLParser;->selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 454
    .local v1, "entries":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 455
    .local v4, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_40
    if-ge v2, v4, :cond_5a

    .line 456
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 457
    .local v5, "node":Lorg/w3c/dom/Element;
    const-string v10, "key"

    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "key":Ljava/lang/String;
    const-string v10, "value"

    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 459
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v8, v3, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_57} :catch_78
    .catch Lorg/xml/sax/SAXException; {:try_start_26 .. :try_end_57} :catch_75
    .catchall {:try_start_26 .. :try_end_57} :catchall_72

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 464
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "node":Lorg/w3c/dom/Element;
    .end local v9    # "value":Ljava/lang/String;
    :cond_5a
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v6, v7

    .line 465
    .end local v7    # "reader":Ljava/io/Reader;
    .restart local v6    # "reader":Ljava/io/Reader;
    goto :goto_12

    .line 461
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v1    # "entries":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    .end local v4    # "length":I
    :catch_5f
    move-exception v10

    .line 464
    :goto_60
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_12

    .line 462
    :catch_64
    move-exception v10

    .line 464
    :goto_65
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_12

    :catchall_69
    move-exception v10

    :goto_6a
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v10

    .line 468
    .end local v6    # "reader":Ljava/io/Reader;
    :cond_6e
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_12

    .line 464
    .restart local v7    # "reader":Ljava/io/Reader;
    :catchall_72
    move-exception v10

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/Reader;
    .restart local v6    # "reader":Ljava/io/Reader;
    goto :goto_6a

    .line 462
    .end local v6    # "reader":Ljava/io/Reader;
    .restart local v7    # "reader":Ljava/io/Reader;
    :catch_75
    move-exception v10

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/Reader;
    .restart local v6    # "reader":Ljava/io/Reader;
    goto :goto_65

    .line 461
    .end local v6    # "reader":Ljava/io/Reader;
    .restart local v7    # "reader":Ljava/io/Reader;
    :catch_78
    move-exception v10

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/Reader;
    .restart local v6    # "reader":Ljava/io/Reader;
    goto :goto_60
.end method

.method private static selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 15
    .param p0, "documentElement"    # Lorg/w3c/dom/Element;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 399
    const/4 v7, 0x0

    .line 401
    .local v7, "result":Lorg/w3c/dom/NodeList;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v2, "input":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, "path":[Ljava/lang/String;
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 407
    .local v0, "childNodes":Lorg/w3c/dom/NodeList;
    aget-object v9, v6, v11

    const-string v10, "entry"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_26

    aget-object v9, v6, v11

    const-string v10, "node"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4c

    .line 408
    :cond_26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v1, v9, :cond_ad

    .line 409
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 410
    .local v4, "next":Lorg/w3c/dom/Node;
    instance-of v9, v4, Lorg/w3c/dom/Element;

    if-eqz v9, :cond_49

    move-object v9, v4

    .line 411
    check-cast v9, Lorg/w3c/dom/Element;

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v6, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 412
    check-cast v4, Lorg/w3c/dom/Node;

    .end local v4    # "next":Lorg/w3c/dom/Node;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 416
    .end local v1    # "i":I
    :cond_4c
    aget-object v9, v6, v11

    const-string v10, "map"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad

    aget-object v9, v6, v12

    const-string v10, "entry"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad

    .line 417
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_61
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v1, v9, :cond_ad

    .line 418
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 419
    .restart local v4    # "next":Lorg/w3c/dom/Node;
    instance-of v9, v4, Lorg/w3c/dom/Element;

    if-eqz v9, :cond_aa

    move-object v9, v4

    .line 420
    check-cast v9, Lorg/w3c/dom/Element;

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v6, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_aa

    .line 421
    check-cast v4, Lorg/w3c/dom/Node;

    .end local v4    # "next":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 422
    .local v5, "nextChildNodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_85
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v3, v9, :cond_aa

    .line 423
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 424
    .local v8, "subnext":Lorg/w3c/dom/Node;
    instance-of v9, v8, Lorg/w3c/dom/Element;

    if-eqz v9, :cond_a7

    move-object v9, v8

    .line 425
    check-cast v9, Lorg/w3c/dom/Element;

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v6, v12

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a7

    .line 426
    check-cast v8, Lorg/w3c/dom/Node;

    .end local v8    # "subnext":Lorg/w3c/dom/Node;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_a7
    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    .line 417
    .end local v3    # "j":I
    .end local v5    # "nextChildNodes":Lorg/w3c/dom/NodeList;
    :cond_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 435
    .end local v1    # "i":I
    :cond_ad
    new-instance v7, Ljava/util/prefs/NodeSet;

    .end local v7    # "result":Lorg/w3c/dom/NodeList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/prefs/NodeSet;-><init>(Ljava/util/Iterator;)V

    .line 437
    .restart local v7    # "result":Lorg/w3c/dom/NodeList;
    return-object v7
.end method

.method static writeXmlPreferences(Ljava/io/File;Ljava/util/Properties;)V
    .registers 13
    .param p0, "xmlFile"    # Ljava/io/File;
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 478
    .local v5, "parent":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prefs-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".xml.tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 480
    .local v6, "temporaryForWriting":Ljava/io/File;
    const/4 v3, 0x0

    .line 482
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_27
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_9e

    .line 484
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_38
    const-string v8, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v4, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 486
    const-string v8, "<!DOCTYPE map SYSTEM \'http://java.sun.com/dtd/preferences.dtd\'>"

    invoke-virtual {v4, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 488
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 489
    .local v1, "keys":[Ljava/lang/String;
    array-length v2, v1

    .line 490
    .local v2, "length":I
    new-array v7, v2, [Ljava/lang/String;

    .line 491
    .local v7, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5c
    if-ge v0, v2, :cond_69

    .line 492
    aget-object v8, v1, v0

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 494
    :cond_69
    invoke-static {v1, v7, v4}, Ljava/util/prefs/XMLParser;->exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 495
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 496
    invoke-virtual {v6, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_97

    .line 497
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to write preferences to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_8e
    .catchall {:try_start_38 .. :try_end_8e} :catchall_8e

    .line 500
    .end local v0    # "i":I
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "length":I
    .end local v7    # "values":[Ljava/lang/String;
    :catchall_8e
    move-exception v8

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_90
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 501
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v8

    .line 500
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "i":I
    .restart local v1    # "keys":[Ljava/lang/String;
    .restart local v2    # "length":I
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v7    # "values":[Ljava/lang/String;
    :cond_97
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 501
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 503
    return-void

    .line 500
    .end local v0    # "i":I
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "length":I
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .end local v7    # "values":[Ljava/lang/String;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catchall_9e
    move-exception v8

    goto :goto_90
.end method
