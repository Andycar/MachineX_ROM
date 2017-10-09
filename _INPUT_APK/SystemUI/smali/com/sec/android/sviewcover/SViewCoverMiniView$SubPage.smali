.class public final enum Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;
.super Ljava/lang/Enum;
.source "SViewCoverMiniView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverMiniView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubPage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

.field public static final enum MUSIC_PAGE:Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

.field public static final enum SETTING_PAGE:Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

    const-string v1, "SETTING_PAGE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;->SETTING_PAGE:Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

    .line 155
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

    const-string v1, "MUSIC_PAGE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;->MUSIC_PAGE:Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

    .line 153
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;->SETTING_PAGE:Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;->MUSIC_PAGE:Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;->$VALUES:[Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

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
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    const-class v0, Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;->$VALUES:[Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

    invoke-virtual {v0}, [Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

    return-object v0
.end method
