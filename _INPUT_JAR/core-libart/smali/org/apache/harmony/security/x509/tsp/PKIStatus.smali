.class public final enum Lorg/apache/harmony/security/x509/tsp/PKIStatus;
.super Ljava/lang/Enum;
.source "PKIStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/harmony/security/x509/tsp/PKIStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum GRANTED:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum GRANTED_WITH_MODS:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum REJECTION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum REVOCATION_NOTIFICATION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum REVOCATION_WARNING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum WAITING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;


# instance fields
.field private final status:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    const-string v1, "GRANTED"

    invoke-direct {v0, v1, v4, v4}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->GRANTED:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    .line 54
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    const-string v1, "GRANTED_WITH_MODS"

    invoke-direct {v0, v1, v5, v5}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->GRANTED_WITH_MODS:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    .line 58
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    const-string v1, "REJECTION"

    invoke-direct {v0, v1, v6, v6}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REJECTION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    .line 62
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v7, v7}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->WAITING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    .line 66
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    const-string v1, "REVOCATION_WARNING"

    invoke-direct {v0, v1, v8, v8}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REVOCATION_WARNING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    .line 70
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    const-string v1, "REVOCATION_NOTIFICATION"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REVOCATION_NOTIFICATION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->GRANTED:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->GRANTED_WITH_MODS:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REJECTION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->WAITING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REVOCATION_WARNING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REVOCATION_NOTIFICATION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->$VALUES:[Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->status:I

    .line 75
    return-void
.end method

.method public static getInstance(I)Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    .registers 7
    .param p0, "status"    # I

    .prologue
    .line 85
    invoke-static {}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->values()[Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    .line 86
    .local v1, "curStatus":Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    iget v4, v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->status:I

    if-ne p0, v4, :cond_f

    .line 87
    return-object v1

    .line 85
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 90
    .end local v1    # "curStatus":Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    :cond_12
    new-instance v4, Ljava/security/InvalidParameterException;

    const-string v5, "Unknown PKIStatus value"

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    return-object v0
.end method

.method public static values()[Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->$VALUES:[Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    invoke-virtual {v0}, [Lorg/apache/harmony/security/x509/tsp/PKIStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->status:I

    return v0
.end method
