.class public final Ljavax/security/auth/PrivateCredentialPermission;
.super Ljava/security/Permission;
.source "PrivateCredentialPermission.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCredentialClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrincipals()[[Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 3
    .param p1, "permission"    # Ljava/security/Permission;

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method
