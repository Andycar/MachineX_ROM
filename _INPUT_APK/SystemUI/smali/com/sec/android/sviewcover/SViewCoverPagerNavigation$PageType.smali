.class final enum Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;
.super Ljava/lang/Enum;
.source "SViewCoverPagerNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

.field public static final enum camera:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

.field public static final enum current_camera:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

.field public static final enum current_normal:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

.field public static final enum normal:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    const-string v1, "current_normal"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;->current_normal:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    const-string v1, "normal"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;->normal:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    const-string v1, "current_camera"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;->current_camera:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    const-string v1, "camera"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;->camera:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;->current_normal:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;->normal:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;->current_camera:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;->camera:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;->$VALUES:[Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;->$VALUES:[Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-virtual {v0}, [Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    return-object v0
.end method
