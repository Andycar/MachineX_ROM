.class final enum Ljava/nio/IoVec$Direction;
.super Ljava/lang/Enum;
.source "IoVec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/IoVec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/nio/IoVec$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/nio/IoVec$Direction;

.field public static final enum READV:Ljava/nio/IoVec$Direction;

.field public static final enum WRITEV:Ljava/nio/IoVec$Direction;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Ljava/nio/IoVec$Direction;

    const-string v1, "READV"

    invoke-direct {v0, v1, v2}, Ljava/nio/IoVec$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/IoVec$Direction;->READV:Ljava/nio/IoVec$Direction;

    new-instance v0, Ljava/nio/IoVec$Direction;

    const-string v1, "WRITEV"

    invoke-direct {v0, v1, v3}, Ljava/nio/IoVec$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/IoVec$Direction;->WRITEV:Ljava/nio/IoVec$Direction;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/nio/IoVec$Direction;

    sget-object v1, Ljava/nio/IoVec$Direction;->READV:Ljava/nio/IoVec$Direction;

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/IoVec$Direction;->WRITEV:Ljava/nio/IoVec$Direction;

    aput-object v1, v0, v3

    sput-object v0, Ljava/nio/IoVec$Direction;->$VALUES:[Ljava/nio/IoVec$Direction;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/nio/IoVec$Direction;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Ljava/nio/IoVec$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/IoVec$Direction;

    return-object v0
.end method

.method public static values()[Ljava/nio/IoVec$Direction;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Ljava/nio/IoVec$Direction;->$VALUES:[Ljava/nio/IoVec$Direction;

    invoke-virtual {v0}, [Ljava/nio/IoVec$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/IoVec$Direction;

    return-object v0
.end method
