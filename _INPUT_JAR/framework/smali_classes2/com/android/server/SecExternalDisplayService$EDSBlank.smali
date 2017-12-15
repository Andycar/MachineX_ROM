.class public final enum Lcom/android/server/SecExternalDisplayService$EDSBlank;
.super Ljava/lang/Enum;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EDSBlank"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/SecExternalDisplayService$EDSBlank;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/SecExternalDisplayService$EDSBlank;

.field public static final enum EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

.field public static final enum EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;

    const-string v1, "EDS_POWER_MODE_OFF"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/SecExternalDisplayService$EDSBlank;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    .line 110
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;

    const-string v1, "EDS_POWER_MODE_ON"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/SecExternalDisplayService$EDSBlank;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    .line 108
    new-array v0, v4, [Lcom/android/server/SecExternalDisplayService$EDSBlank;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->$VALUES:[Lcom/android/server/SecExternalDisplayService$EDSBlank;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    iput p3, p0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->value:I

    .line 115
    return-void
.end method

.method public static toStatus(I)Lcom/android/server/SecExternalDisplayService$EDSBlank;
    .registers 7
    .param p0, "value"    # I

    .prologue
    .line 120
    const/4 v3, 0x0

    .line 121
    .local v3, "retStatus":Lcom/android/server/SecExternalDisplayService$EDSBlank;
    invoke-static {}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->values()[Lcom/android/server/SecExternalDisplayService$EDSBlank;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/server/SecExternalDisplayService$EDSBlank;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_12

    aget-object v4, v0, v1

    .line 122
    .local v4, "tempVal":Lcom/android/server/SecExternalDisplayService$EDSBlank;
    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->getValue()I

    move-result v5

    if-ne v5, p0, :cond_13

    .line 123
    move-object v3, v4

    .line 127
    .end local v4    # "tempVal":Lcom/android/server/SecExternalDisplayService$EDSBlank;
    :cond_12
    return-object v3

    .line 121
    .restart local v4    # "tempVal":Lcom/android/server/SecExternalDisplayService$EDSBlank;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/SecExternalDisplayService$EDSBlank;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    const-class v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;

    return-object v0
.end method

.method public static values()[Lcom/android/server/SecExternalDisplayService$EDSBlank;
    .registers 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->$VALUES:[Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, [Lcom/android/server/SecExternalDisplayService$EDSBlank;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/SecExternalDisplayService$EDSBlank;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->value:I

    return v0
.end method
