.class public final enum Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
.super Ljava/lang/Enum;
.source "WfdEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVPlaybackMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

.field public static final enum AUDIO_ONLY:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

.field public static final enum AUDIO_VIDEO:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

.field public static final enum NO_AUDIO_VIDEO:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

.field public static final enum VIDEO_ONLY:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 463
    new-instance v0, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    const-string v1, "NO_AUDIO_VIDEO"

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->NO_AUDIO_VIDEO:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    .line 464
    new-instance v0, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    const-string v1, "AUDIO_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->AUDIO_ONLY:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    .line 465
    new-instance v0, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    const-string v1, "VIDEO_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->VIDEO_ONLY:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    .line 466
    new-instance v0, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    const-string v1, "AUDIO_VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->AUDIO_VIDEO:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    .line 462
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    sget-object v1, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->NO_AUDIO_VIDEO:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->AUDIO_ONLY:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->VIDEO_ONLY:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->AUDIO_VIDEO:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->$VALUES:[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 462
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 462
    const-class v0, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .registers 1

    .prologue
    .line 462
    sget-object v0, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->$VALUES:[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    invoke-virtual {v0}, [Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    return-object v0
.end method
