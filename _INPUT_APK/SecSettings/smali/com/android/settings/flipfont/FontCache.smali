.class public Lcom/android/settings/flipfont/FontCache;
.super Ljava/lang/Object;
.source "FontCache.java"


# static fields
.field private static fontCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/settings/flipfont/FontCache;->fontCache:Ljava/util/Hashtable;

    return-void
.end method

.method public static get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "assetmanager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 14
    sget-object v2, Lcom/android/settings/flipfont/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 15
    .local v1, "tf":Landroid/graphics/Typeface;
    if-nez v1, :cond_0

    .line 17
    :try_start_0
    invoke-static {p1, p0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 22
    sget-object v2, Lcom/android/settings/flipfont/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v2, v1

    .line 24
    :goto_0
    return-object v2

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method
