.class public Ljavax/net/ssl/CertPathTrustManagerParameters;
.super Ljava/lang/Object;
.source "CertPathTrustManagerParameters.java"

# interfaces
.implements Ljavax/net/ssl/ManagerFactoryParameters;


# instance fields
.field private final param:Ljava/security/cert/CertPathParameters;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertPathParameters;)V
    .registers 3
    .param p1, "parameters"    # Ljava/security/cert/CertPathParameters;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-interface {p1}, Ljava/security/cert/CertPathParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertPathParameters;

    iput-object v0, p0, Ljavax/net/ssl/CertPathTrustManagerParameters;->param:Ljava/security/cert/CertPathParameters;

    .line 41
    return-void
.end method


# virtual methods
.method public getParameters()Ljava/security/cert/CertPathParameters;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Ljavax/net/ssl/CertPathTrustManagerParameters;->param:Ljava/security/cert/CertPathParameters;

    invoke-interface {v0}, Ljava/security/cert/CertPathParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertPathParameters;

    return-object v0
.end method
