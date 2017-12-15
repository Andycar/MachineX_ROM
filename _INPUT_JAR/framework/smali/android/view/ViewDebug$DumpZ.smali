.class Landroid/view/ViewDebug$DumpZ;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DumpZ"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static WriteProperty(Ljava/lang/String;FLjava/io/BufferedWriter;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # F
    .param p2, "out"    # Ljava/io/BufferedWriter;

    .prologue
    .line 2297
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2298
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2299
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2300
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2301
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_36} :catch_37

    .line 2306
    :goto_36
    return-void

    .line 2302
    :catch_37
    move-exception v0

    goto :goto_36
.end method

.method private static WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "out"    # Ljava/io/BufferedWriter;

    .prologue
    .line 2283
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2284
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2285
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2286
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2287
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_36} :catch_37

    .line 2292
    :goto_36
    return-void

    .line 2288
    :catch_37
    move-exception v0

    goto :goto_36
.end method

.method private static WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/BufferedWriter;

    .prologue
    .line 2265
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2266
    const/16 v0, 0xa

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 2267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2268
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2269
    invoke-virtual {p2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2270
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_35} :catch_36

    .line 2275
    :goto_35
    return-void

    .line 2271
    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method private static WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Z
    .param p2, "out"    # Ljava/io/BufferedWriter;

    .prologue
    .line 2314
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2316
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    .line 2318
    const-string v0, "4,true "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2328
    :goto_1e
    return-void

    .line 2322
    :cond_1f
    const-string v0, "5,false "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_1e

    .line 2324
    :catch_25
    move-exception v0

    goto :goto_1e
.end method

.method static synthetic access$000(Landroid/view/View;Ljava/io/OutputStream;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1713
    invoke-static {p0, p1}, Landroid/view/ViewDebug$DumpZ;->dump(Landroid/view/View;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static dump(Landroid/view/View;Ljava/io/OutputStream;)V
    .registers 10
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1718
    const/4 v3, 0x0

    .line 1720
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v7, 0x8000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_53
    .catchall {:try_start_1 .. :try_end_e} :catchall_49

    .line 1721
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_e
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 1722
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_31

    .line 1723
    move-object v0, v5

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 1724
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v7}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1730
    .end local v2    # "group":Landroid/view/ViewGroup;
    :goto_22
    const-string v6, "DONE."

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1731
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2a} :catch_3a
    .catchall {:try_start_e .. :try_end_2a} :catchall_50

    .line 1735
    if-eqz v4, :cond_55

    .line 1736
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    move-object v3, v4

    .line 1739
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .end local v5    # "view":Landroid/view/View;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :cond_30
    :goto_30
    return-void

    .line 1728
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "view":Landroid/view/View;
    :cond_31
    :try_start_31
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v5, v4, v7}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_3a
    .catchall {:try_start_31 .. :try_end_39} :catchall_50

    goto :goto_22

    .line 1732
    .end local v5    # "view":Landroid/view/View;
    :catch_3a
    move-exception v1

    move-object v3, v4

    .line 1733
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_3c
    :try_start_3c
    const-string v6, "View"

    const-string v7, "Problem dumping the view:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_49

    .line 1735
    if-eqz v3, :cond_30

    .line 1736
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_30

    .line 1735
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_49
    move-exception v6

    :goto_4a
    if-eqz v3, :cond_4f

    .line 1736
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_4f
    throw v6

    .line 1735
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catchall_50
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_4a

    .line 1732
    :catch_53
    move-exception v1

    goto :goto_3c

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "view":Landroid/view/View;
    :cond_55
    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_30
.end method

.method private static dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/IGLViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I

    .prologue
    .line 1778
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1789
    :cond_6
    return-void

    .line 1782
    :cond_7
    invoke-interface {p1}, Landroid/view/IGLViewGroup;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1783
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/IGLViewGroup;

    if-eqz v2, :cond_25

    .line 1784
    check-cast v1, Landroid/view/IGLViewGroup;

    .end local v1    # "obj":Ljava/lang/Object;
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v1, p2, v2}, Landroid/view/ViewDebug$DumpZ;->dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;I)V

    goto :goto_f

    .line 1785
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_25
    instance-of v2, v1, Landroid/view/IGLView;

    if-eqz v2, :cond_f

    .line 1786
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v1, p2, v2}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    goto :goto_f
.end method

.method private static dumpGLSurfaceView(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Ljava/io/BufferedWriter;I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I

    .prologue
    .line 1765
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1774
    :cond_6
    :goto_6
    return-void

    .line 1769
    :cond_7
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v1

    .line 1770
    .local v1, "renderer":Landroid/opengl/GLSurfaceView$Renderer;
    if-eqz v1, :cond_6

    instance-of v2, v1, Landroid/view/IGLContext;

    if-eqz v2, :cond_6

    .line 1771
    check-cast v1, Landroid/view/IGLContext;

    .end local v1    # "renderer":Landroid/opengl/GLSurfaceView$Renderer;
    invoke-interface {v1}, Landroid/view/IGLContext;->getGLRootView()Landroid/view/IGLViewGroup;

    move-result-object v0

    .line 1772
    .local v0, "group":Landroid/view/IGLViewGroup;
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v2}, Landroid/view/ViewDebug$DumpZ;->dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;I)V

    goto :goto_6
.end method

.method private static dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    .registers 7
    .param p0, "view"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    .prologue
    .line 2374
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_b

    .line 2375
    const/16 v2, 0x20

    :try_start_5
    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 2374
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2377
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2378
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 2379
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_29} :catch_2b

    .line 2385
    const/4 v2, 0x1

    :goto_2a
    return v2

    .line 2381
    :catch_2b
    move-exception v0

    .line 2382
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "View"

    const-string v3, "Error while dumping hierarchy tree"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method private static dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .registers 7
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    .prologue
    .line 2354
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug$DumpZ;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2367
    :cond_6
    return-void

    .line 2358
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2359
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_6

    .line 2360
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2361
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_20

    .line 2362
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 2359
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2364
    .restart local v2    # "view":Landroid/view/View;
    :cond_20
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug$DumpZ;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    goto :goto_1d
.end method

.method private static dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I

    .prologue
    .line 1746
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1761
    :cond_6
    return-void

    .line 1750
    :cond_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1751
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_6

    .line 1752
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1753
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_20

    .line 1754
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1751
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1755
    .restart local v2    # "view":Landroid/view/View;
    :cond_20
    instance-of v3, v2, Landroid/opengl/GLSurfaceView;

    if-eqz v3, :cond_2c

    .line 1756
    check-cast v2, Landroid/opengl/GLSurfaceView;

    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug$DumpZ;->dumpGLSurfaceView(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Ljava/io/BufferedWriter;I)V

    goto :goto_1d

    .line 1758
    .restart local v2    # "view":Landroid/view/View;
    :cond_2c
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    goto :goto_1d
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .registers 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1838
    const-string v16, ""

    .line 1840
    .local v16, "strValue":Ljava/lang/String;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/View;

    move/from16 v19, v0

    if-eqz v19, :cond_189

    move-object/from16 v18, p1

    .line 1842
    check-cast v18, Landroid/view/View;

    .line 1844
    .local v18, "tempView":Landroid/view/View;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v11, v0, [I

    .line 1845
    .local v11, "location":[I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1848
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/ViewDebug$DumpZ;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "strValue":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1849
    .restart local v16    # "strValue":Ljava/lang/String;
    const-string v19, "id"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1852
    const-string/jumbo v19, "x"

    const/16 v20, 0x0

    aget v20, v11, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1855
    const-string/jumbo v19, "y"

    const/16 v20, 0x1

    aget v20, v11, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1858
    const-string/jumbo v19, "width"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1861
    const-string v19, "height"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1864
    const-string/jumbo v19, "scrollx"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getScrollX()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1867
    const-string/jumbo v19, "scrolly"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getScrollY()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1870
    const-string v19, "enable"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isEnabled()Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1872
    const-string v19, "longclickable"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isLongClickable()Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1874
    const-string v19, "clickable"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isClickable()Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1876
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isFocusable()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d9

    .line 1878
    const-string v19, "hasfocus"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasFocus()Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1882
    :cond_d9
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1883
    .local v3, "TalkBack_value":Ljava/lang/CharSequence;
    if-eqz v3, :cond_f3

    .line 1885
    const-string/jumbo v19, "talkback"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1889
    :cond_f3
    const-string v19, "isselected"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isSelected()Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1892
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_210

    .line 1894
    const-string/jumbo v19, "visibility"

    const-string v20, "VISIBLE"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1914
    :cond_116
    :goto_116
    :try_start_116
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager$LayoutParams;

    .line 1916
    .local v12, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_248

    .line 1918
    const-string v19, "layouttype"

    const-string v20, "TYPE_BASE_APPLICATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_135} :catch_263

    .line 2054
    .end local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_135
    :goto_135
    :try_start_135
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2056
    .local v15, "mp":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v19, "bottommargin"

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2057
    const-string v19, "leftmargin"

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2058
    const-string/jumbo v19, "rightmargin"

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2059
    const-string/jumbo v19, "topmargin"

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_179} :catch_8e6

    .line 2064
    .end local v15    # "mp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_179
    const-string/jumbo v19, "willnotdraw"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->willNotDraw()Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 2069
    .end local v3    # "TalkBack_value":Ljava/lang/CharSequence;
    .end local v11    # "location":[I
    .end local v18    # "tempView":Landroid/view/View;
    :cond_189
    :try_start_189
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 2071
    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    .line 2073
    .local v14, "methods":[Ljava/lang/reflect/Method;
    move-object v4, v14

    .local v4, "arr$":[Ljava/lang/reflect/Method;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_194
    if-ge v9, v10, :cond_5ac

    aget-object v13, v4, v9

    .line 2074
    .local v13, "method":Ljava/lang/reflect/Method;
    const-string v19, "isFillViewport"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1bf

    .line 2075
    const-string v20, "fillviewport"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 2078
    :cond_1bf
    const-string v19, "getFirstVisiblePosition"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e6

    .line 2079
    const-string v20, "firstposition"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2082
    :cond_1e6
    const-string v19, "getCount"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20d

    .line 2083
    const-string v20, "itemcount"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_20d} :catch_5ab

    .line 2073
    :cond_20d
    add-int/lit8 v9, v9, 0x1

    goto :goto_194

    .line 1896
    .end local v4    # "arr$":[Ljava/lang/reflect/Method;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "methods":[Ljava/lang/reflect/Method;
    .restart local v3    # "TalkBack_value":Ljava/lang/CharSequence;
    .restart local v11    # "location":[I
    .restart local v18    # "tempView":Landroid/view/View;
    :cond_210
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_22c

    .line 1898
    const-string/jumbo v19, "visibility"

    const-string v20, "INVISIBLE"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_116

    .line 1900
    :cond_22c
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_116

    .line 1902
    const-string/jumbo v19, "visibility"

    const-string v20, "GONE"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_116

    .line 1920
    .restart local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_248
    :try_start_248
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_266

    .line 1922
    const-string v19, "layouttype"

    const-string v20, "TYPE_APPLICATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 2049
    .end local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_263
    move-exception v19

    goto/16 :goto_135

    .line 1924
    .restart local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_266
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_281

    .line 1926
    const-string v19, "layouttype"

    const-string v20, "TYPE_APPLICATION_STARTING"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1928
    :cond_281
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x3e8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_29c

    .line 1930
    const-string v19, "layouttype"

    const-string v20, "TYPE_APPLICATION_PANEL"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1932
    :cond_29c
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x3e9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2b7

    .line 1934
    const-string v19, "layouttype"

    const-string v20, "TYPE_APPLICATION_MEDIA"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1936
    :cond_2b7
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x3ea

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d2

    .line 1938
    const-string v19, "layouttype"

    const-string v20, "TYPE_APPLICATION_SUB_PANEL"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1940
    :cond_2d2
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x3eb

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2ed

    .line 1942
    const-string v19, "layouttype"

    const-string v20, "TYPE_APPLICATION_ATTACHED_DIALOG"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1944
    :cond_2ed
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_308

    .line 1946
    const-string v19, "layouttype"

    const-string v20, "TYPE_STATUS_BAR"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1948
    :cond_308
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_323

    .line 1950
    const-string v19, "layouttype"

    const-string v20, "TYPE_SEARCH_BAR"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1952
    :cond_323
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_33e

    .line 1954
    const-string v19, "layouttype"

    const-string v20, "TYPE_PHONE"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1956
    :cond_33e
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_359

    .line 1958
    const-string v19, "layouttype"

    const-string v20, "TYPE_SYSTEM_ALERT"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1960
    :cond_359
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_374

    .line 1962
    const-string v19, "layouttype"

    const-string v20, "TYPE_KEYGUARD"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1964
    :cond_374
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_38f

    .line 1966
    const-string v19, "layouttype"

    const-string v20, "TYPE_TOAST"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1968
    :cond_38f
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3aa

    .line 1970
    const-string v19, "layouttype"

    const-string v20, "TYPE_SYSTEM_OVERLAY"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1972
    :cond_3aa
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3c5

    .line 1974
    const-string v19, "layouttype"

    const-string v20, "TYPE_PRIORITY_PHONE"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1976
    :cond_3c5
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7de

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3e0

    .line 1978
    const-string v19, "layouttype"

    const-string v20, "TYPE_STATUS_BAR_PANEL"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1980
    :cond_3e0
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x830

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3fb

    .line 1982
    const-string v19, "layouttype"

    const-string v20, "TYPE_STATUS_BAR_PANEL_USER"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1984
    :cond_3fb
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_416

    .line 1986
    const-string v19, "layouttype"

    const-string v20, "TYPE_STATUS_BAR_SUB_PANEL"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1988
    :cond_416
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_431

    .line 1990
    const-string v19, "layouttype"

    const-string v20, "TYPE_SYSTEM_DIALOG"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1992
    :cond_431
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_44c

    .line 1994
    const-string v19, "layouttype"

    const-string v20, "TYPE_KEYGUARD_DIALOG"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 1996
    :cond_44c
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7da

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_467

    .line 1998
    const-string v19, "layouttype"

    const-string v20, "TYPE_SYSTEM_ERROR"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 2000
    :cond_467
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7db

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_482

    .line 2002
    const-string v19, "layouttype"

    const-string v20, "TYPE_INPUT_METHOD"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 2004
    :cond_482
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7dc

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_49d

    .line 2006
    const-string v19, "layouttype"

    const-string v20, "TYPE_INPUT_METHOD_DIALOG"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 2008
    :cond_49d
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7dd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4b8

    .line 2010
    const-string v19, "layouttype"

    const-string v20, "TYPE_WALLPAPER"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 2012
    :cond_4b8
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7de

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d3

    .line 2014
    const-string v19, "layouttype"

    const-string v20, "TYPE_STATUS_BAR_PANEL"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 2016
    :cond_4d3
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7df

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4ee

    .line 2018
    const-string v19, "layouttype"

    const-string v20, "TYPE_SECURE_SYSTEM_OVERLAY"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 2020
    :cond_4ee
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_509

    .line 2022
    const-string v19, "layouttype"

    const-string v20, "TYPE_DRAG"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 2024
    :cond_509
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_524

    .line 2026
    const-string v19, "layouttype"

    const-string v20, "TYPE_STATUS_BAR_SUB_PANEL"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 2028
    :cond_524
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_53f

    .line 2030
    const-string v19, "layouttype"

    const-string v20, "TYPE_POINTER"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 2032
    :cond_53f
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_55a

    .line 2034
    const-string v19, "layouttype"

    const-string v20, "TYPE_NAVIGATION_BAR"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 2036
    :cond_55a
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_575

    .line 2038
    const-string v19, "layouttype"

    const-string v20, "TYPE_VOLUME_OVERLAY"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 2040
    :cond_575
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_590

    .line 2042
    const-string v19, "layouttype"

    const-string v20, "TYPE_BOOT_PROGRESS"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_135

    .line 2044
    :cond_590
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x831

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_135

    .line 2046
    const-string v19, "layouttype"

    const-string v20, "TYPE_STATUS_BAR_OVERLAY"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_5a9
    .catch Ljava/lang/Exception; {:try_start_248 .. :try_end_5a9} :catch_263

    goto/16 :goto_135

    .line 2087
    .end local v3    # "TalkBack_value":Ljava/lang/CharSequence;
    .end local v11    # "location":[I
    .end local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "tempView":Landroid/view/View;
    :catch_5ab
    move-exception v19

    .line 2090
    :cond_5ac
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v19, v0

    if-eqz v19, :cond_5e0

    move-object/from16 v8, p1

    .line 2092
    check-cast v8, Landroid/view/ViewGroup;

    .line 2093
    .local v8, "group":Landroid/view/ViewGroup;
    const-string v19, "childcount"

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2095
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v19

    const/high16 v20, 0x20000

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_86d

    .line 2097
    const-string v19, "focusability"

    const-string v20, "FOCUS_BEFORE_DESCENDANTS"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 2109
    .end local v8    # "group":Landroid/view/ViewGroup;
    :cond_5e0
    :goto_5e0
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v19, v0

    if-eqz v19, :cond_647

    move-object/from16 v18, p1

    .line 2111
    check-cast v18, Landroid/widget/TextView;

    .line 2112
    .local v18, "tempView":Landroid/widget/TextView;
    const-string/jumbo v19, "text"

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 2115
    :try_start_600
    const-string/jumbo v19, "stringname"

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getStringName()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_614
    .catch Ljava/lang/Exception; {:try_start_600 .. :try_end_614} :catch_8e3

    .line 2121
    :goto_614
    :try_start_614
    const-string v19, "hint"

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_627
    .catch Ljava/lang/Exception; {:try_start_614 .. :try_end_627} :catch_8e0

    .line 2126
    :goto_627
    const-string/jumbo v19, "selectionstart"

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2128
    const-string/jumbo v19, "selectionend"

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2131
    .end local v18    # "tempView":Landroid/widget/TextView;
    :cond_647
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_662

    move-object/from16 v6, p1

    .line 2133
    check-cast v6, Landroid/widget/Checkable;

    .line 2134
    .local v6, "checkable":Landroid/widget/Checkable;
    const-string v19, "ischecked"

    invoke-interface {v6}, Landroid/widget/Checkable;->isChecked()Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 2137
    .end local v6    # "checkable":Landroid/widget/Checkable;
    :cond_662
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/IGLView;

    move/from16 v19, v0

    if-eqz v19, :cond_8df

    move-object/from16 v7, p1

    .line 2139
    check-cast v7, Landroid/view/IGLView;

    .line 2142
    .local v7, "glview":Landroid/view/IGLView;
    :try_start_66e
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 2144
    .restart local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    .line 2146
    .restart local v14    # "methods":[Ljava/lang/reflect/Method;
    move-object v4, v14

    .restart local v4    # "arr$":[Ljava/lang/reflect/Method;
    array-length v10, v4

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_679
    if-ge v9, v10, :cond_8a4

    aget-object v13, v4, v9

    .line 2148
    .restart local v13    # "method":Ljava/lang/reflect/Method;
    const-string v19, "getObjectTag"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6a0

    .line 2149
    const-string v20, "glTag"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 2152
    :cond_6a0
    const-string/jumbo v19, "mLeft"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6c8

    .line 2153
    const-string v20, "glleft"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;FLjava/io/BufferedWriter;)V

    .line 2156
    :cond_6c8
    const-string v19, "mBottom"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6ef

    .line 2157
    const-string v20, "glbottom"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;FLjava/io/BufferedWriter;)V

    .line 2160
    :cond_6ef
    const-string/jumbo v19, "mRight"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_717

    .line 2161
    const-string v20, "glright"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;FLjava/io/BufferedWriter;)V

    .line 2164
    :cond_717
    const-string v19, "getOrientation"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_73e

    .line 2165
    const-string v20, "glorientation"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2168
    :cond_73e
    const-string v19, "getText"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_771

    const-string v19, "TwGLText"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_771

    .line 2169
    const-string v20, "gltext"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 2172
    :cond_771
    const-string/jumbo v19, "mText"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7a5

    const-string v19, "TwGLButton"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7a5

    .line 2173
    const-string v20, "gltext"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 2176
    :cond_7a5
    const-string v19, "getStringName"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7cc

    .line 2177
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    .line 2178
    .local v17, "tempString":Ljava/lang/CharSequence;
    const-string v19, "glstringname"

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 2181
    .end local v17    # "tempString":Ljava/lang/CharSequence;
    :cond_7cc
    const-string/jumbo v19, "mStringName"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7f4

    .line 2182
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    .line 2183
    .restart local v17    # "tempString":Ljava/lang/CharSequence;
    const-string v19, "glstringname"

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 2186
    .end local v17    # "tempString":Ljava/lang/CharSequence;
    :cond_7f4
    const-string v19, "getAlpha"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_81b

    .line 2187
    const-string v20, "glalpha"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;FLjava/io/BufferedWriter;)V

    .line 2190
    :cond_81b
    const-string v19, "getVisibility"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_842

    .line 2191
    const-string v20, "gl_getVisibility"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2194
    :cond_842
    const-string v19, "isVisible"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_869

    .line 2195
    const-string v20, "gl_isvisible"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    :try_end_869
    .catch Ljava/lang/Exception; {:try_start_66e .. :try_end_869} :catch_8a3

    .line 2146
    :cond_869
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_679

    .line 2099
    .end local v4    # "arr$":[Ljava/lang/reflect/Method;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "glview":Landroid/view/IGLView;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "methods":[Ljava/lang/reflect/Method;
    .restart local v8    # "group":Landroid/view/ViewGroup;
    :cond_86d
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v19

    const/high16 v20, 0x40000

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_888

    .line 2101
    const-string v19, "focusability"

    const-string v20, "FOCUS_AFTER_DESCENDANTS"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_5e0

    .line 2103
    :cond_888
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v19

    const/high16 v20, 0x60000

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5e0

    .line 2105
    const-string v19, "focusability"

    const-string v20, "FOCUS_BLOCK_DESCENDANTS"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_5e0

    .line 2199
    .end local v8    # "group":Landroid/view/ViewGroup;
    .restart local v7    # "glview":Landroid/view/IGLView;
    :catch_8a3
    move-exception v19

    .line 2203
    :cond_8a4
    :try_start_8a4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 2205
    .restart local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    .line 2207
    .restart local v14    # "methods":[Ljava/lang/reflect/Method;
    move-object v4, v14

    .restart local v4    # "arr$":[Ljava/lang/reflect/Method;
    array-length v10, v4

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_8af
    if-ge v9, v10, :cond_8df

    aget-object v13, v4, v9

    .line 2208
    .restart local v13    # "method":Ljava/lang/reflect/Method;
    const-string/jumbo v19, "mTop"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8db

    .line 2209
    const-string v20, "gltop"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;FLjava/io/BufferedWriter;)V
    :try_end_8db
    .catch Ljava/lang/Exception; {:try_start_8a4 .. :try_end_8db} :catch_8de

    .line 2207
    :cond_8db
    add-int/lit8 v9, v9, 0x1

    goto :goto_8af

    .line 2213
    .end local v4    # "arr$":[Ljava/lang/reflect/Method;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "methods":[Ljava/lang/reflect/Method;
    :catch_8de
    move-exception v19

    .line 2257
    .end local v7    # "glview":Landroid/view/IGLView;
    :cond_8df
    return-void

    .line 2123
    .restart local v18    # "tempView":Landroid/widget/TextView;
    :catch_8e0
    move-exception v19

    goto/16 :goto_627

    .line 2117
    :catch_8e3
    move-exception v19

    goto/16 :goto_614

    .line 2061
    .restart local v3    # "TalkBack_value":Ljava/lang/CharSequence;
    .restart local v11    # "location":[I
    .local v18, "tempView":Landroid/view/View;
    :catch_8e6
    move-exception v19

    goto/16 :goto_179
.end method

.method private static dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I

    .prologue
    const/4 v5, 0x0

    .line 1797
    :try_start_1
    instance-of v6, p1, Landroid/view/View;

    if-eqz v6, :cond_10

    .line 1799
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    move-object v4, v0

    .line 1800
    .local v4, "tempView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_10

    .line 1828
    .end local v4    # "tempView":Landroid/view/View;
    :goto_f
    return v5

    .line 1806
    :cond_10
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, p3, :cond_1b

    .line 1807
    const/16 v6, 0x20

    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 1806
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1810
    :cond_1b
    const-string v6, ""

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1812
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1813
    .local v1, "arr_str":[Ljava/lang/String;
    const-string v6, "class"

    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v1, v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1820
    .end local v1    # "arr_str":[Ljava/lang/String;
    :goto_43
    const-string v6, "hash"

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1821
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug$DumpZ;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 1822
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1828
    const/4 v5, 0x1

    goto :goto_f

    .line 1817
    :cond_58
    const-string v6, "class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_65} :catch_66

    goto :goto_43

    .line 1823
    .end local v3    # "i":I
    :catch_66
    move-exception v2

    .line 1824
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "View"

    const-string v7, "Error while dumping hierarchy tree"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 2335
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2336
    .local v2, "resources":Landroid/content/res/Resources;
    if-ltz p1, :cond_24

    .line 2338
    :try_start_6
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v1

    .line 2347
    .local v1, "fieldValue":Ljava/lang/String;
    :goto_a
    return-object v1

    .line 2341
    .end local v1    # "fieldValue":Ljava/lang/String;
    :catch_b
    move-exception v0

    .line 2342
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2343
    .restart local v1    # "fieldValue":Ljava/lang/String;
    goto :goto_a

    .line 2345
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "fieldValue":Ljava/lang/String;
    :cond_24
    const-string v1, "NO_ID"

    .restart local v1    # "fieldValue":Ljava/lang/String;
    goto :goto_a
.end method
