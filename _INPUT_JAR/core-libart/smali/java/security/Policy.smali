.class public abstract Ljava/security/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Policy$Parameters;
    }
.end annotation


# static fields
.field public static final UNSUPPORTED_EMPTY_COLLECTION:Ljava/security/PermissionCollection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Ljava/security/AllPermissionCollection;

    invoke-direct {v0}, Ljava/security/AllPermissionCollection;-><init>()V

    sput-object v0, Ljava/security/Policy;->UNSUPPORTED_EMPTY_COLLECTION:Ljava/security/PermissionCollection;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Policy$Parameters;)Ljava/security/Policy;
    .registers 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/security/Policy$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Policy$Parameters;Ljava/lang/String;)Ljava/security/Policy;
    .registers 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/security/Policy$Parameters;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Policy$Parameters;Ljava/security/Provider;)Ljava/security/Policy;
    .registers 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/security/Policy$Parameters;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPolicy()Ljava/security/Policy;
    .registers 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setPolicy(Ljava/security/Policy;)V
    .registers 1
    .param p0, "policy"    # Ljava/security/Policy;

    .prologue
    .line 57
    return-void
.end method


# virtual methods
.method public getParameters()Ljava/security/Policy$Parameters;
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .registers 3
    .param p1, "cs"    # Ljava/security/CodeSource;

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermissions(Ljava/security/ProtectionDomain;)Ljava/security/PermissionCollection;
    .registers 3
    .param p1, "domain"    # Ljava/security/ProtectionDomain;

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public implies(Ljava/security/ProtectionDomain;Ljava/security/Permission;)Z
    .registers 4
    .param p1, "domain"    # Ljava/security/ProtectionDomain;
    .param p2, "permission"    # Ljava/security/Permission;

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public refresh()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method
