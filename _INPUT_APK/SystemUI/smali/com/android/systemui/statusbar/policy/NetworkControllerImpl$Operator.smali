.class public final enum Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;
.super Ljava/lang/Enum;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum AIO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum ATT:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum BMC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum CHC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum CMCC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum CTC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum CU:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum DCM:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum KDDI:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum KT:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum LGT:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum LHS:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum LRA:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum OPEN:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum SKT:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum SPR:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum TLS:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum VMU:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum VZW:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum ZIG:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum ZTM:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

.field public static final enum ZVV:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3609
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->OPEN:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3610
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "ATT"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ATT:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3611
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "AIO"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->AIO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3612
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "ZIG"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ZIG:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3613
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "TMO"

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3614
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "VZW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3615
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "SPR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->SPR:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3616
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "BMC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->BMC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3617
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "TLS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TLS:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3618
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "SKT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->SKT:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3619
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "KT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->KT:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3620
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "LGT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->LGT:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3621
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "CMCC"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->CMCC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3622
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "CHC"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->CHC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3623
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "LHS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->LHS:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3624
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "CU"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->CU:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3625
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "CTC"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->CTC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3626
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "DCM"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->DCM:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3627
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "KDDI"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->KDDI:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3628
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "ZVV"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ZVV:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3629
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "ZTM"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ZTM:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3630
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "LRA"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->LRA:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3631
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    const-string v1, "VMU"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->VMU:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    .line 3608
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->OPEN:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ATT:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->AIO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ZIG:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->SPR:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->BMC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TLS:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->SKT:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->KT:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->LGT:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->CMCC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->CHC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->LHS:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->CU:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->CTC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->DCM:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->KDDI:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ZVV:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ZTM:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->LRA:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->VMU:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->$VALUES:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

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
    .line 3608
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;
    .locals 2
    .param p0, "Str"    # Ljava/lang/String;

    .prologue
    .line 3643
    :try_start_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3645
    :goto_0
    return-object v1

    .line 3644
    :catch_0
    move-exception v0

    .line 3645
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->OPEN:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3608
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;
    .locals 1

    .prologue
    .line 3608
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->$VALUES:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    return-object v0
.end method


# virtual methods
.method public isKoreanOperator()Z
    .locals 1

    .prologue
    .line 3638
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->SKT:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->KT:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->LGT:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNorthAmericanOperator()Z
    .locals 1

    .prologue
    .line 3634
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ATT:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->SPR:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->VMU:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
