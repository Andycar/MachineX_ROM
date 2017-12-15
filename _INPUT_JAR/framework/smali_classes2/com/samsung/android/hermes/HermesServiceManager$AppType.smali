.class final enum Lcom/samsung/android/hermes/HermesServiceManager$AppType;
.super Ljava/lang/Enum;
.source "HermesServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hermes/HermesServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/hermes/HermesServiceManager$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hermes/HermesServiceManager$AppType;

.field public static final enum browser:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

.field public static final enum contact:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

.field public static final enum email:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

.field public static final enum map:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

.field public static final enum news:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

.field public static final enum pim:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

.field public static final enum recommand_tag:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

.field public static final enum recommand_text:Lcom/samsung/android/hermes/HermesServiceManager$AppType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    const-string v1, "contact"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/hermes/HermesServiceManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->contact:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    const-string/jumbo v1, "pim"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/hermes/HermesServiceManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->pim:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    const-string v1, "email"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/hermes/HermesServiceManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->email:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    const-string v1, "browser"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/hermes/HermesServiceManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->browser:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    const-string v1, "map"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/hermes/HermesServiceManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->map:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    const-string v1, "news"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->news:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    const-string/jumbo v1, "recommand_tag"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->recommand_tag:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    const-string/jumbo v1, "recommand_text"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->recommand_text:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    .line 78
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->contact:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->pim:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->email:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->browser:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->map:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->news:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->recommand_tag:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->recommand_text:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->$VALUES:[Lcom/samsung/android/hermes/HermesServiceManager$AppType;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hermes/HermesServiceManager$AppType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hermes/HermesServiceManager$AppType;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->$VALUES:[Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    invoke-virtual {v0}, [Lcom/samsung/android/hermes/HermesServiceManager$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    return-object v0
.end method
