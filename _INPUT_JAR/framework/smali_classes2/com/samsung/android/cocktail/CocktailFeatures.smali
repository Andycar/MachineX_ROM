.class public Lcom/samsung/android/cocktail/CocktailFeatures;
.super Ljava/lang/Object;
.source "CocktailFeatures.java"


# static fields
.field public static final CATEGORY_NIGHT_MODE:Ljava/lang/String; = "night_mode"

.field public static final CATEGORY_NORMAL:Ljava/lang/String; = "normal"

.field public static final COCKTAIL_ENABLED:Z = false

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_OVERLAY_BAR:I = 0x0

.field public static final TYPE_SYSTEM_BAR:I = 0x1

.field private static mCategoryFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCocktailBarType:I

.field private static sQueriedTypeCocktail:Z

.field private static sSupportCocktail:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lcom/samsung/android/cocktail/CocktailFeatures;->sQueriedTypeCocktail:Z

    .line 44
    sput-boolean v0, Lcom/samsung/android/cocktail/CocktailFeatures;->sSupportCocktail:Z

    .line 46
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/cocktail/CocktailFeatures;->sCocktailBarType:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCocktailFeature(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-boolean v1, Lcom/samsung/android/cocktail/CocktailFeatures;->sQueriedTypeCocktail:Z

    if-nez v1, :cond_18

    .line 56
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/cocktail/CocktailFeatures;->sQueriedTypeCocktail:Z

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_e

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 63
    :cond_e
    if-eqz v0, :cond_19

    .line 64
    :try_start_10
    const-string v1, "com.sec.feature.cocktailbar"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/cocktail/CocktailFeatures;->sSupportCocktail:Z

    .line 72
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_18
    :goto_18
    return-void

    .line 67
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_19
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system/etc/permissions/com.sec.feature.cocktailbar.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/cocktail/CocktailFeatures;->sSupportCocktail:Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_27} :catch_28

    goto :goto_18

    .line 69
    :catch_28
    move-exception v1

    goto :goto_18
.end method

.method public static getCategroyFilters(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lcom/samsung/android/cocktail/CocktailFeatures;->mCategoryFilter:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static isSupportCategory(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportCocktail(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-static {p0}, Lcom/samsung/android/cocktail/CocktailFeatures;->checkCocktailFeature(Landroid/content/Context;)V

    .line 82
    sget-boolean v0, Lcom/samsung/android/cocktail/CocktailFeatures;->sSupportCocktail:Z

    return v0
.end method

.method public static isSystemBarType(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 98
    sget v1, Lcom/samsung/android/cocktail/CocktailFeatures;->sCocktailBarType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
