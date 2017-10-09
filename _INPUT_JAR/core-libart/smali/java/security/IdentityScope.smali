.class public abstract Ljava/security/IdentityScope;
.super Ljava/security/Identity;
.source "IdentityScope.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x206fec0f17658ffeL

.field private static systemScope:Ljava/security/IdentityScope;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/security/Identity;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/security/IdentityScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/security/Identity;-><init>(Ljava/lang/String;Ljava/security/IdentityScope;)V

    .line 68
    return-void
.end method

.method public static getSystemScope()Ljava/security/IdentityScope;
    .registers 3

    .prologue
    .line 81
    sget-object v2, Ljava/security/IdentityScope;->systemScope:Ljava/security/IdentityScope;

    if-nez v2, :cond_18

    .line 82
    const-string v2, "system.scope"

    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 85
    :try_start_c
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/IdentityScope;

    sput-object v2, Ljava/security/IdentityScope;->systemScope:Ljava/security/IdentityScope;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1b

    .line 91
    :cond_18
    :goto_18
    sget-object v2, Ljava/security/IdentityScope;->systemScope:Ljava/security/IdentityScope;

    return-object v2

    .line 86
    :catch_1b
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method protected static setSystemScope(Ljava/security/IdentityScope;)V
    .registers 1
    .param p0, "scope"    # Ljava/security/IdentityScope;

    .prologue
    .line 101
    sput-object p0, Ljava/security/IdentityScope;->systemScope:Ljava/security/IdentityScope;

    .line 102
    return-void
.end method


# virtual methods
.method public abstract addIdentity(Ljava/security/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method

.method public abstract getIdentity(Ljava/lang/String;)Ljava/security/Identity;
.end method

.method public getIdentity(Ljava/security/Principal;)Ljava/security/Identity;
    .registers 3
    .param p1, "principal"    # Ljava/security/Principal;

    .prologue
    .line 134
    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/IdentityScope;->getIdentity(Ljava/lang/String;)Ljava/security/Identity;

    move-result-object v0

    return-object v0
.end method

.method public abstract getIdentity(Ljava/security/PublicKey;)Ljava/security/Identity;
.end method

.method public abstract identities()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/security/Identity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeIdentity(Ljava/security/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/IdentityScope;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
