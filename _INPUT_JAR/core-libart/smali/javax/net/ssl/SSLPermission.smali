.class public final Ljavax/net/ssl/SSLPermission;
.super Ljava/security/BasicPermission;
.source "SSLPermission.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 3
    .param p1, "permission"    # Ljava/security/Permission;

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method
