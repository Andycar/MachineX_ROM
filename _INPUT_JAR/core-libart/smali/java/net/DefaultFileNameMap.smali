.class Ljava/net/DefaultFileNameMap;
.super Ljava/lang/Object;
.source "DefaultFileNameMap.java"

# interfaces
.implements Ljava/net/FileNameMap;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 29
    const-string v3, "html"

    invoke-static {v3}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    :goto_e
    return-object v3

    .line 31
    :cond_f
    const/16 v3, 0x23

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 32
    .local v2, "lastCharInExtension":I
    if-gez v2, :cond_1b

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 35
    :cond_1b
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 36
    .local v1, "firstCharInExtension":I
    const-string v0, ""

    .line 37
    .local v0, "ext":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v1, v3, :cond_31

    .line 38
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_31
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_e
.end method
