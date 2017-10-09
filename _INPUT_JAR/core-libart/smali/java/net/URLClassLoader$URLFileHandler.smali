.class Ljava/net/URLClassLoader$URLFileHandler;
.super Ljava/net/URLClassLoader$URLHandler;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "URLFileHandler"
.end annotation


# instance fields
.field private prefix:Ljava/lang/String;

.field final synthetic this$0:Ljava/net/URLClassLoader;


# direct methods
.method public constructor <init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V
    .registers 9
    .param p2, "url"    # Ljava/net/URL;

    .prologue
    .line 456
    iput-object p1, p0, Ljava/net/URLClassLoader$URLFileHandler;->this$0:Ljava/net/URLClassLoader;

    .line 457
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader$URLHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    .line 458
    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "baseFile":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "host":Ljava/lang/String;
    const/4 v3, 0x0

    .line 461
    .local v3, "hostLength":I
    if-eqz v2, :cond_14

    .line 462
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 464
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 466
    .local v1, "buf":Ljava/lang/StringBuilder;
    if-lez v3, :cond_2b

    .line 467
    const-string v4, "//"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_2b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/net/URLClassLoader$URLFileHandler;->prefix:Ljava/lang/String;

    .line 472
    return-void
.end method


# virtual methods
.method findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "origName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 476
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ljava/net/URLClassLoader$URLFileHandler;->prefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "filename":Ljava/lang/String;
    :try_start_14
    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_19} :catch_2f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_19} :catch_31

    move-result-object v2

    .line 485
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 488
    :try_start_25
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 489
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v3, p1, p3}, Ljava/net/URLClassLoader$URLFileHandler;->createClass(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2d} :catch_33

    move-result-object v4

    .line 493
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_2e
    :goto_2e
    return-object v4

    .line 479
    :catch_2f
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2e

    .line 481
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_31
    move-exception v0

    .line 482
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_2e

    .line 490
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "file":Ljava/io/File;
    :catch_33
    move-exception v5

    goto :goto_2e
.end method

.method findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 498
    const/4 v2, 0x0

    .line 502
    .local v2, "idx":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1b

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_18

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_1b

    .line 504
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 507
    :cond_1b
    if-lez v2, :cond_21

    .line 508
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 512
    :cond_21
    :try_start_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljava/net/URLClassLoader$URLFileHandler;->prefix:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 515
    iget-object v4, p0, Ljava/net/URLClassLoader$URLFileHandler;->url:Ljava/net/URL;

    invoke-virtual {p0, v4, p1}, Ljava/net/URLClassLoader$URLFileHandler;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_4a} :catch_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_21 .. :try_end_4a} :catch_4e

    move-result-object v3

    .line 519
    .end local v1    # "filename":Ljava/lang/String;
    :cond_4b
    :goto_4b
    return-object v3

    .line 518
    :catch_4c
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_4b

    .line 520
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4e
    move-exception v0

    .line 522
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
