.class public abstract Ljava/security/cert/CRL;
.super Ljava/lang/Object;
.source "CRL.java"


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Ljava/security/cert/CRL;->type:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Ljava/security/cert/CRL;->type:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isRevoked(Ljava/security/cert/Certificate;)Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
