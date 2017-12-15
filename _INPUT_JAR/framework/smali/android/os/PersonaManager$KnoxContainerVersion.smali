.class public final enum Landroid/os/PersonaManager$KnoxContainerVersion;
.super Ljava/lang/Enum;
.source "PersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KnoxContainerVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/os/PersonaManager$KnoxContainerVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/PersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_1_0_0:Landroid/os/PersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_0_0:Landroid/os/PersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_1_0:Landroid/os/PersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_2_0:Landroid/os/PersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_3_0:Landroid/os/PersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_3_1:Landroid/os/PersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_NONE:Landroid/os/PersonaManager$KnoxContainerVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 891
    new-instance v0, Landroid/os/PersonaManager$KnoxContainerVersion;

    const-string v1, "KNOX_CONTAINER_VERSION_NONE"

    invoke-direct {v0, v1, v3}, Landroid/os/PersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Landroid/os/PersonaManager$KnoxContainerVersion;

    .line 892
    new-instance v0, Landroid/os/PersonaManager$KnoxContainerVersion;

    const-string v1, "KNOX_CONTAINER_VERSION_1_0_0"

    invoke-direct {v0, v1, v4}, Landroid/os/PersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_1_0_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    .line 893
    new-instance v0, Landroid/os/PersonaManager$KnoxContainerVersion;

    const-string v1, "KNOX_CONTAINER_VERSION_2_0_0"

    invoke-direct {v0, v1, v5}, Landroid/os/PersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_0_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    .line 894
    new-instance v0, Landroid/os/PersonaManager$KnoxContainerVersion;

    const-string v1, "KNOX_CONTAINER_VERSION_2_1_0"

    invoke-direct {v0, v1, v6}, Landroid/os/PersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_1_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    .line 895
    new-instance v0, Landroid/os/PersonaManager$KnoxContainerVersion;

    const-string v1, "KNOX_CONTAINER_VERSION_2_2_0"

    invoke-direct {v0, v1, v7}, Landroid/os/PersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    .line 896
    new-instance v0, Landroid/os/PersonaManager$KnoxContainerVersion;

    const-string v1, "KNOX_CONTAINER_VERSION_2_3_0"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    .line 897
    new-instance v0, Landroid/os/PersonaManager$KnoxContainerVersion;

    const-string v1, "KNOX_CONTAINER_VERSION_2_3_1"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    .line 898
    new-instance v0, Landroid/os/PersonaManager$KnoxContainerVersion;

    const-string v1, "KNOX_CONTAINER_VERSION_2_4_0"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    .line 890
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/os/PersonaManager$KnoxContainerVersion;

    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Landroid/os/PersonaManager$KnoxContainerVersion;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_1_0_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_0_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    aput-object v1, v0, v5

    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_1_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    aput-object v1, v0, v6

    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->$VALUES:[Landroid/os/PersonaManager$KnoxContainerVersion;

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
    .line 890
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/PersonaManager$KnoxContainerVersion;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 890
    const-class v0, Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager$KnoxContainerVersion;

    return-object v0
.end method

.method public static values()[Landroid/os/PersonaManager$KnoxContainerVersion;
    .registers 1

    .prologue
    .line 890
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->$VALUES:[Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v0}, [Landroid/os/PersonaManager$KnoxContainerVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/PersonaManager$KnoxContainerVersion;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 902
    sget-object v0, Landroid/os/PersonaManager$1;->$SwitchMap$android$os$PersonaManager$KnoxContainerVersion:[I

    invoke-virtual {p0}, Landroid/os/PersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 919
    const-string v0, "N/A"

    :goto_d
    return-object v0

    .line 904
    :pswitch_e
    const-string v0, "1.0.0"

    goto :goto_d

    .line 906
    :pswitch_11
    const-string v0, "2.0.0"

    goto :goto_d

    .line 908
    :pswitch_14
    const-string v0, "2.1.0"

    goto :goto_d

    .line 910
    :pswitch_17
    const-string v0, "2.2.0"

    goto :goto_d

    .line 912
    :pswitch_1a
    const-string v0, "2.3.0"

    goto :goto_d

    .line 914
    :pswitch_1d
    const-string v0, "2.3.1"

    goto :goto_d

    .line 916
    :pswitch_20
    const-string v0, "2.4.0"

    goto :goto_d

    .line 902
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method
