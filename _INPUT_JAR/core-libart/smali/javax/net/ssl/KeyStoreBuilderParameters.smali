.class public Ljavax/net/ssl/KeyStoreBuilderParameters;
.super Ljava/lang/Object;
.source "KeyStoreBuilderParameters.java"

# interfaces
.implements Ljavax/net/ssl/ManagerFactoryParameters;


# instance fields
.field private final ksbuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/KeyStore$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/KeyStore$Builder;)V
    .registers 4
    .param p1, "builder"    # Ljava/security/KeyStore$Builder;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_d

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_d
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/KeyStoreBuilderParameters;->ksbuilders:Ljava/util/List;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/KeyStore$Builder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyStore$Builder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-nez p1, :cond_d

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parameters == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parameters.isEmpty()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/KeyStoreBuilderParameters;->ksbuilders:Ljava/util/List;

    .line 67
    return-void
.end method


# virtual methods
.method public getParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/KeyStore$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Ljavax/net/ssl/KeyStoreBuilderParameters;->ksbuilders:Ljava/util/List;

    return-object v0
.end method
