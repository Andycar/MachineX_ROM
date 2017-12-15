.class public final enum Lcom/samsung/wfd/WfdEnums$AudioCodec;
.super Ljava/lang/Enum;
.source "WfdEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioCodec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/wfd/WfdEnums$AudioCodec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/wfd/WfdEnums$AudioCodec;

.field public static final enum WFD_AUDIO_AAC:Lcom/samsung/wfd/WfdEnums$AudioCodec;

.field public static final enum WFD_AUDIO_DOLBY_DIGITAL:Lcom/samsung/wfd/WfdEnums$AudioCodec;

.field public static final enum WFD_AUDIO_INVALID:Lcom/samsung/wfd/WfdEnums$AudioCodec;

.field public static final enum WFD_AUDIO_LPCM:Lcom/samsung/wfd/WfdEnums$AudioCodec;

.field public static final enum WFD_AUDIO_UNK:Lcom/samsung/wfd/WfdEnums$AudioCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 470
    new-instance v0, Lcom/samsung/wfd/WfdEnums$AudioCodec;

    const-string v1, "WFD_AUDIO_UNK"

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$AudioCodec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$AudioCodec;->WFD_AUDIO_UNK:Lcom/samsung/wfd/WfdEnums$AudioCodec;

    .line 471
    new-instance v0, Lcom/samsung/wfd/WfdEnums$AudioCodec;

    const-string v1, "WFD_AUDIO_LPCM"

    invoke-direct {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums$AudioCodec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$AudioCodec;->WFD_AUDIO_LPCM:Lcom/samsung/wfd/WfdEnums$AudioCodec;

    .line 472
    new-instance v0, Lcom/samsung/wfd/WfdEnums$AudioCodec;

    const-string v1, "WFD_AUDIO_AAC"

    invoke-direct {v0, v1, v4}, Lcom/samsung/wfd/WfdEnums$AudioCodec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$AudioCodec;->WFD_AUDIO_AAC:Lcom/samsung/wfd/WfdEnums$AudioCodec;

    .line 473
    new-instance v0, Lcom/samsung/wfd/WfdEnums$AudioCodec;

    const-string v1, "WFD_AUDIO_DOLBY_DIGITAL"

    invoke-direct {v0, v1, v5}, Lcom/samsung/wfd/WfdEnums$AudioCodec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$AudioCodec;->WFD_AUDIO_DOLBY_DIGITAL:Lcom/samsung/wfd/WfdEnums$AudioCodec;

    .line 474
    new-instance v0, Lcom/samsung/wfd/WfdEnums$AudioCodec;

    const-string v1, "WFD_AUDIO_INVALID"

    invoke-direct {v0, v1, v6}, Lcom/samsung/wfd/WfdEnums$AudioCodec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$AudioCodec;->WFD_AUDIO_INVALID:Lcom/samsung/wfd/WfdEnums$AudioCodec;

    .line 469
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/wfd/WfdEnums$AudioCodec;

    sget-object v1, Lcom/samsung/wfd/WfdEnums$AudioCodec;->WFD_AUDIO_UNK:Lcom/samsung/wfd/WfdEnums$AudioCodec;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/wfd/WfdEnums$AudioCodec;->WFD_AUDIO_LPCM:Lcom/samsung/wfd/WfdEnums$AudioCodec;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/wfd/WfdEnums$AudioCodec;->WFD_AUDIO_AAC:Lcom/samsung/wfd/WfdEnums$AudioCodec;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/wfd/WfdEnums$AudioCodec;->WFD_AUDIO_DOLBY_DIGITAL:Lcom/samsung/wfd/WfdEnums$AudioCodec;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/wfd/WfdEnums$AudioCodec;->WFD_AUDIO_INVALID:Lcom/samsung/wfd/WfdEnums$AudioCodec;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/wfd/WfdEnums$AudioCodec;->$VALUES:[Lcom/samsung/wfd/WfdEnums$AudioCodec;

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
    .line 469
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/wfd/WfdEnums$AudioCodec;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 469
    const-class v0, Lcom/samsung/wfd/WfdEnums$AudioCodec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdEnums$AudioCodec;

    return-object v0
.end method

.method public static values()[Lcom/samsung/wfd/WfdEnums$AudioCodec;
    .registers 1

    .prologue
    .line 469
    sget-object v0, Lcom/samsung/wfd/WfdEnums$AudioCodec;->$VALUES:[Lcom/samsung/wfd/WfdEnums$AudioCodec;

    invoke-virtual {v0}, [Lcom/samsung/wfd/WfdEnums$AudioCodec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/wfd/WfdEnums$AudioCodec;

    return-object v0
.end method
