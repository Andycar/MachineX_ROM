.class final enum Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;
.super Ljava/lang/Enum;
.source "SViewCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PageIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

.field public static final enum CameraPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

.field public static final enum HomePage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

.field public static final enum NotiPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

.field public static final enum SettingPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

.field public static final enum ShortCutPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    const-string v1, "HomePage"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    const-string v1, "SettingPage"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->SettingPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    const-string v1, "NotiPage"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->NotiPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    const-string v1, "CameraPage"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->CameraPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    const-string v1, "ShortCutPage"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->ShortCutPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    .line 96
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->SettingPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->NotiPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->CameraPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->ShortCutPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->$VALUES:[Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

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
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    const-class v0, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->$VALUES:[Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {v0}, [Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    return-object v0
.end method
