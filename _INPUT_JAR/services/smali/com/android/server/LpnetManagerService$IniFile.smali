.class Lcom/android/server/LpnetManagerService$IniFile;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LpnetManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IniFile"
.end annotation


# instance fields
.field private _keyValue:Ljava/util/regex/Pattern;

.field private _section:Ljava/util/regex/Pattern;

.field private sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2347
    const-string v0, "\\s*\\[([^]]*)\\]\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LpnetManagerService$IniFile;->_section:Ljava/util/regex/Pattern;

    .line 2348
    const-string v0, "\\s*([^=]*)=(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LpnetManagerService$IniFile;->_keyValue:Ljava/util/regex/Pattern;

    .line 2349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService$IniFile;->sections:Ljava/util/Map;

    .line 2352
    invoke-virtual {p0, p1}, Lcom/android/server/LpnetManagerService$IniFile;->load(Ljava/lang/String;)V

    .line 2353
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultvalue"    # Z

    .prologue
    .line 2424
    iget-object v3, p0, Lcom/android/server/LpnetManagerService$IniFile;->sections:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 2425
    .local v2, "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move v0, p3

    .line 2426
    .local v0, "booleanVal":Z
    if-nez v2, :cond_d

    move v1, v0

    .line 2432
    .end local v0    # "booleanVal":Z
    .local v1, "booleanVal":Z
    :goto_c
    return v1

    .line 2429
    .end local v1    # "booleanVal":Z
    .restart local v0    # "booleanVal":Z
    :cond_d
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 2430
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_25
    move v1, v0

    .line 2432
    .end local v0    # "booleanVal":Z
    .restart local v1    # "booleanVal":Z
    goto :goto_c
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultvalue"    # I

    .prologue
    .line 2389
    iget-object v3, p0, Lcom/android/server/LpnetManagerService$IniFile;->sections:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2390
    .local v0, "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move v1, p3

    .line 2391
    .local v1, "retVal":I
    if-nez v0, :cond_d

    move v2, v1

    .line 2401
    .end local v1    # "retVal":I
    .local v2, "retVal":I
    :goto_c
    return v2

    .line 2395
    .end local v2    # "retVal":I
    .restart local v1    # "retVal":I
    :cond_d
    :try_start_d
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 2396
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_20} :catch_23

    move-result v1

    :cond_21
    :goto_21
    move v2, v1

    .line 2401
    .end local v1    # "retVal":I
    .restart local v2    # "retVal":I
    goto :goto_c

    .line 2399
    .end local v2    # "retVal":I
    .restart local v1    # "retVal":I
    :catch_23
    move-exception v3

    goto :goto_21
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 12
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultvalue"    # J

    .prologue
    .line 2405
    iget-object v6, p0, Lcom/android/server/LpnetManagerService$IniFile;->sections:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2406
    .local v0, "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-wide v2, p3

    .line 2407
    .local v2, "retVal":J
    if-nez v0, :cond_d

    move-wide v4, v2

    .line 2420
    .end local v2    # "retVal":J
    .local v4, "retVal":J
    :goto_c
    return-wide v4

    .line 2411
    .end local v4    # "retVal":J
    .restart local v2    # "retVal":J
    :cond_d
    :try_start_d
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2412
    .local v1, "strKey":Ljava/lang/String;
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2f

    .line 2413
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_2f

    .line 2414
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_2e} :catch_31

    move-result-wide v2

    .end local v1    # "strKey":Ljava/lang/String;
    :cond_2f
    :goto_2f
    move-wide v4, v2

    .line 2420
    .end local v2    # "retVal":J
    .restart local v4    # "retVal":J
    goto :goto_c

    .line 2418
    .end local v4    # "retVal":J
    .restart local v2    # "retVal":J
    :catch_31
    move-exception v6

    goto :goto_2f
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultvalue"    # Ljava/lang/String;

    .prologue
    .line 2381
    iget-object v1, p0, Lcom/android/server/LpnetManagerService$IniFile;->sections:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2382
    .local v0, "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_b

    .line 2385
    .end local p3    # "defaultvalue":Ljava/lang/String;
    :goto_a
    return-object p3

    .restart local p3    # "defaultvalue":Ljava/lang/String;
    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object p3, v1

    goto :goto_a
.end method

.method public load(Ljava/lang/String;)V
    .registers 13
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2357
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_7a

    .line 2356
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 2359
    const/4 v5, 0x0

    .line 2360
    .local v5, "section":Ljava/lang/String;
    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_7c

    .line 2361
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$IniFile;->_section:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2362
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_28

    .line 2363
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    .line 2364
    :cond_28
    if-eqz v5, :cond_c

    .line 2365
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$IniFile;->_keyValue:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2366
    const-string v8, "APPFREEZER_INIT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2367
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2368
    .local v1, "key":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2369
    .local v6, "value":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$IniFile;->sections:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 2370
    .local v2, "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_64

    .line 2371
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$IniFile;->sections:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .restart local v2    # "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2373
    :cond_64
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_6b} :catch_6c
    .catchall {:try_start_c .. :try_end_6b} :catchall_96

    goto :goto_c

    .line 2356
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "value":Ljava/lang/String;
    :catch_6c
    move-exception v8

    :try_start_6d
    throw v8
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 2377
    :catchall_6e
    move-exception v9

    move-object v10, v9

    move-object v9, v8

    move-object v8, v10

    :goto_72
    if-eqz v0, :cond_79

    if-eqz v9, :cond_92

    :try_start_76
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_79} :catch_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_76 .. :try_end_79} :catch_7a

    :cond_79
    :goto_79
    :try_start_79
    throw v8
    :try_end_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_79 .. :try_end_7a} :catch_7a

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "section":Ljava/lang/String;
    :catch_7a
    move-exception v8

    .line 2379
    :cond_7b
    :goto_7b
    return-void

    .line 2377
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "section":Ljava/lang/String;
    :cond_7c
    if-eqz v0, :cond_7b

    if-eqz v9, :cond_89

    :try_start_80
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_83} :catch_84
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_83} :catch_7a

    goto :goto_7b

    :catch_84
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    :try_start_85
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7b

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_89
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_7b

    .end local v3    # "line":Ljava/lang/String;
    :catch_8d
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_79

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_92
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_95
    .catch Ljava/io/FileNotFoundException; {:try_start_85 .. :try_end_95} :catch_7a

    goto :goto_79

    :catchall_96
    move-exception v8

    goto :goto_72
.end method
