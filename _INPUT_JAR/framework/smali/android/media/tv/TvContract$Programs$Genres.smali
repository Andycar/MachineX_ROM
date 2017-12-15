.class public final Landroid/media/tv/TvContract$Programs$Genres;
.super Ljava/lang/Object;
.source "TvContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvContract$Programs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Genres"
.end annotation


# static fields
.field public static final ANIMAL_WILDLIFE:Ljava/lang/String; = "ANIMAL_WILDLIFE"

.field private static final CANONICAL_GENRES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMEDY:Ljava/lang/String; = "COMEDY"

.field public static final DRAMA:Ljava/lang/String; = "DRAMA"

.field public static final EDUCATION:Ljava/lang/String; = "EDUCATION"

.field public static final FAMILY_KIDS:Ljava/lang/String; = "FAMILY_KIDS"

.field public static final GAMING:Ljava/lang/String; = "GAMING"

.field public static final MOVIES:Ljava/lang/String; = "MOVIES"

.field public static final NEWS:Ljava/lang/String; = "NEWS"

.field public static final SHOPPING:Ljava/lang/String; = "SHOPPING"

.field public static final SPORTS:Ljava/lang/String; = "SPORTS"

.field public static final TRAVEL:Ljava/lang/String; = "TRAVEL"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1055
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    .line 1057
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "FAMILY_KIDS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1058
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "SPORTS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1059
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "SHOPPING"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1060
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "MOVIES"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1061
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "COMEDY"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1062
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "TRAVEL"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1063
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "DRAMA"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1064
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "EDUCATION"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1065
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "ANIMAL_WILDLIFE"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1066
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "NEWS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1067
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "GAMING"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1068
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "genres"    # Ljava/lang/String;

    .prologue
    .line 1097
    const-string v0, "\\s*,\\s*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs encode([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "genres"    # [Ljava/lang/String;

    .prologue
    .line 1080
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1081
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, ""

    .line 1082
    .local v5, "separator":Ljava/lang/String;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_a
    if-ge v2, v3, :cond_1a

    aget-object v1, v0, v2

    .line 1083
    .local v1, "genre":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    const-string v5, ","

    .line 1082
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1086
    .end local v1    # "genre":Ljava/lang/String;
    :cond_1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static isCanonical(Ljava/lang/String;)Z
    .registers 2
    .param p0, "genre"    # Ljava/lang/String;

    .prologue
    .line 1109
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
