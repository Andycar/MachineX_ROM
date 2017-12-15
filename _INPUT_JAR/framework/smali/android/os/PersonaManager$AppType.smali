.class public final enum Landroid/os/PersonaManager$AppType;
.super Ljava/lang/Enum;
.source "PersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/os/PersonaManager$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/PersonaManager$AppType;

.field public static final enum COM_DISABLED_OWNER_LAUNCHERS:Landroid/os/PersonaManager$AppType;

.field public static final enum DISABLED_LAUNCHERS:Landroid/os/PersonaManager$AppType;

.field public static final enum IME:Landroid/os/PersonaManager$AppType;

.field public static final enum INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 296
    new-instance v0, Landroid/os/PersonaManager$AppType;

    const-string v1, "IME"

    const-string v2, "TYPE_IME"

    invoke-direct {v0, v1, v3, v2}, Landroid/os/PersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/PersonaManager$AppType;->IME:Landroid/os/PersonaManager$AppType;

    .line 297
    new-instance v0, Landroid/os/PersonaManager$AppType;

    const-string v1, "INSTALLER_WHITELIST"

    const-string v2, "installerWhitelist"

    invoke-direct {v0, v1, v4, v2}, Landroid/os/PersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    .line 298
    new-instance v0, Landroid/os/PersonaManager$AppType;

    const-string v1, "DISABLED_LAUNCHERS"

    const-string v2, "disabledLaunchers"

    invoke-direct {v0, v1, v5, v2}, Landroid/os/PersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/PersonaManager$AppType;->DISABLED_LAUNCHERS:Landroid/os/PersonaManager$AppType;

    .line 299
    new-instance v0, Landroid/os/PersonaManager$AppType;

    const-string v1, "COM_DISABLED_OWNER_LAUNCHERS"

    const-string v2, "comDisabledOwnerLaunchers"

    invoke-direct {v0, v1, v6, v2}, Landroid/os/PersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/PersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Landroid/os/PersonaManager$AppType;

    .line 295
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/os/PersonaManager$AppType;

    sget-object v1, Landroid/os/PersonaManager$AppType;->IME:Landroid/os/PersonaManager$AppType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/PersonaManager$AppType;->DISABLED_LAUNCHERS:Landroid/os/PersonaManager$AppType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/os/PersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Landroid/os/PersonaManager$AppType;

    aput-object v1, v0, v6

    sput-object v0, Landroid/os/PersonaManager$AppType;->$VALUES:[Landroid/os/PersonaManager$AppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 305
    iput-object p3, p0, Landroid/os/PersonaManager$AppType;->mName:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/PersonaManager$AppType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 295
    const-class v0, Landroid/os/PersonaManager$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager$AppType;

    return-object v0
.end method

.method public static values()[Landroid/os/PersonaManager$AppType;
    .registers 1

    .prologue
    .line 295
    sget-object v0, Landroid/os/PersonaManager$AppType;->$VALUES:[Landroid/os/PersonaManager$AppType;

    invoke-virtual {v0}, [Landroid/os/PersonaManager$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/PersonaManager$AppType;

    return-object v0
.end method


# virtual methods
.method public fromName(Ljava/lang/String;)Landroid/os/PersonaManager$AppType;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-static {}, Landroid/os/PersonaManager$AppType;->values()[Landroid/os/PersonaManager$AppType;

    move-result-object v0

    .local v0, "arr$":[Landroid/os/PersonaManager$AppType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v2, :cond_16

    aget-object v3, v0, v1

    .line 316
    .local v3, "type":Landroid/os/PersonaManager$AppType;
    iget-object v4, v3, Landroid/os/PersonaManager$AppType;->mName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 320
    .end local v3    # "type":Landroid/os/PersonaManager$AppType;
    :goto_12
    return-object v3

    .line 315
    .restart local v3    # "type":Landroid/os/PersonaManager$AppType;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 320
    .end local v3    # "type":Landroid/os/PersonaManager$AppType;
    :cond_16
    const/4 v3, 0x0

    goto :goto_12
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Landroid/os/PersonaManager$AppType;->mName:Ljava/lang/String;

    return-object v0
.end method
