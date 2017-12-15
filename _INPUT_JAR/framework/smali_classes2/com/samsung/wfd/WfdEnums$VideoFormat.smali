.class public final enum Lcom/samsung/wfd/WfdEnums$VideoFormat;
.super Ljava/lang/Enum;
.source "WfdEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/wfd/WfdEnums$VideoFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/wfd/WfdEnums$VideoFormat;

.field public static final enum WFD_VIDEO_3D:Lcom/samsung/wfd/WfdEnums$VideoFormat;

.field public static final enum WFD_VIDEO_H264:Lcom/samsung/wfd/WfdEnums$VideoFormat;

.field public static final enum WFD_VIDEO_INVALID:Lcom/samsung/wfd/WfdEnums$VideoFormat;

.field public static final enum WFD_VIDEO_UNK:Lcom/samsung/wfd/WfdEnums$VideoFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 478
    new-instance v0, Lcom/samsung/wfd/WfdEnums$VideoFormat;

    const-string v1, "WFD_VIDEO_UNK"

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$VideoFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$VideoFormat;->WFD_VIDEO_UNK:Lcom/samsung/wfd/WfdEnums$VideoFormat;

    .line 479
    new-instance v0, Lcom/samsung/wfd/WfdEnums$VideoFormat;

    const-string v1, "WFD_VIDEO_H264"

    invoke-direct {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums$VideoFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$VideoFormat;->WFD_VIDEO_H264:Lcom/samsung/wfd/WfdEnums$VideoFormat;

    .line 480
    new-instance v0, Lcom/samsung/wfd/WfdEnums$VideoFormat;

    const-string v1, "WFD_VIDEO_3D"

    invoke-direct {v0, v1, v4}, Lcom/samsung/wfd/WfdEnums$VideoFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$VideoFormat;->WFD_VIDEO_3D:Lcom/samsung/wfd/WfdEnums$VideoFormat;

    .line 481
    new-instance v0, Lcom/samsung/wfd/WfdEnums$VideoFormat;

    const-string v1, "WFD_VIDEO_INVALID"

    invoke-direct {v0, v1, v5}, Lcom/samsung/wfd/WfdEnums$VideoFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$VideoFormat;->WFD_VIDEO_INVALID:Lcom/samsung/wfd/WfdEnums$VideoFormat;

    .line 477
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/wfd/WfdEnums$VideoFormat;

    sget-object v1, Lcom/samsung/wfd/WfdEnums$VideoFormat;->WFD_VIDEO_UNK:Lcom/samsung/wfd/WfdEnums$VideoFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/wfd/WfdEnums$VideoFormat;->WFD_VIDEO_H264:Lcom/samsung/wfd/WfdEnums$VideoFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/wfd/WfdEnums$VideoFormat;->WFD_VIDEO_3D:Lcom/samsung/wfd/WfdEnums$VideoFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/wfd/WfdEnums$VideoFormat;->WFD_VIDEO_INVALID:Lcom/samsung/wfd/WfdEnums$VideoFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/wfd/WfdEnums$VideoFormat;->$VALUES:[Lcom/samsung/wfd/WfdEnums$VideoFormat;

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
    .line 477
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/wfd/WfdEnums$VideoFormat;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 477
    const-class v0, Lcom/samsung/wfd/WfdEnums$VideoFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdEnums$VideoFormat;

    return-object v0
.end method

.method public static values()[Lcom/samsung/wfd/WfdEnums$VideoFormat;
    .registers 1

    .prologue
    .line 477
    sget-object v0, Lcom/samsung/wfd/WfdEnums$VideoFormat;->$VALUES:[Lcom/samsung/wfd/WfdEnums$VideoFormat;

    invoke-virtual {v0}, [Lcom/samsung/wfd/WfdEnums$VideoFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/wfd/WfdEnums$VideoFormat;

    return-object v0
.end method
