.class Ljava/lang/VMClassLoader;
.super Ljava/lang/Object;
.source "VMClassLoader.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native findLoadedClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
.end method

.method private static native getBootClassPathResource(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static native getBootClassPathSize()I
.end method

.method static getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/VMClassLoader;->getBootClassPathSize()I

    move-result v2

    .line 37
    .local v2, "numEntries":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_1a

    .line 38
    invoke-static {p0, v0}, Ljava/lang/VMClassLoader;->getBootClassPathResource(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "urlStr":Ljava/lang/String;
    if-eqz v3, :cond_17

    .line 41
    :try_start_d
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_12} :catch_13

    .line 48
    .end local v3    # "urlStr":Ljava/lang/String;
    :goto_12
    return-object v4

    .line 42
    .restart local v3    # "urlStr":Ljava/lang/String;
    :catch_13
    move-exception v1

    .line 43
    .local v1, "mue":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 37
    .end local v1    # "mue":Ljava/net/MalformedURLException;
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 48
    .end local v3    # "urlStr":Ljava/lang/String;
    :cond_1a
    const/4 v4, 0x0

    goto :goto_12
.end method

.method static getResources(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    invoke-static {}, Ljava/lang/VMClassLoader;->getBootClassPathSize()I

    move-result v3

    .line 57
    .local v3, "numEntries":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v3, :cond_22

    .line 58
    invoke-static {p0, v0}, Ljava/lang/VMClassLoader;->getBootClassPathResource(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "urlStr":Ljava/lang/String;
    if-eqz v4, :cond_1a

    .line 61
    :try_start_12
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_1a} :catch_1d

    .line 57
    :cond_1a
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 62
    :catch_1d
    move-exception v2

    .line 63
    .local v2, "mue":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1a

    .line 68
    .end local v2    # "mue":Ljava/net/MalformedURLException;
    .end local v4    # "urlStr":Ljava/lang/String;
    :cond_22
    return-object v1
.end method
