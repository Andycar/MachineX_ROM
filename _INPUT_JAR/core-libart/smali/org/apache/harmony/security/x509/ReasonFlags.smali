.class public final Lorg/apache/harmony/security/x509/ReasonFlags;
.super Ljava/lang/Object;
.source "ReasonFlags.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1BitString;

.field static final REASONS:[Ljava/lang/String;


# instance fields
.field private final flags:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unused"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "keyCompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cACompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "affiliationChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cessationOfOperation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificateHold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "privilegeWithdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "aACompromise"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/harmony/security/x509/ReasonFlags;->REASONS:[Ljava/lang/String;

    .line 94
    new-instance v0, Lorg/apache/harmony/security/x509/ReasonFlags$1;

    sget-object v1, Lorg/apache/harmony/security/x509/ReasonFlags;->REASONS:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ReasonFlags$1;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/x509/ReasonFlags;->ASN1:Lorg/apache/harmony/security/asn1/ASN1BitString;

    return-void
.end method

.method public constructor <init>([Z)V
    .registers 2
    .param p1, "flags"    # [Z

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/apache/harmony/security/x509/ReasonFlags;->flags:[Z

    .line 77
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/ReasonFlags;)[Z
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/ReasonFlags;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ReasonFlags;->flags:[Z

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "ReasonFlags [\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lorg/apache/harmony/security/x509/ReasonFlags;->flags:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_2e

    .line 83
    iget-object v1, p0, Lorg/apache/harmony/security/x509/ReasonFlags;->flags:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2b

    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/harmony/security/x509/ReasonFlags;->REASONS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 87
    :cond_2e
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "]\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    return-void
.end method
