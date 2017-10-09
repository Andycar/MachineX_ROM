.class public Ljavax/xml/transform/TransformerFactoryConfigurationError;
.super Ljava/lang/Error;
.source "TransformerFactoryConfigurationError.java"


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    .line 55
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_10

    iget-object v1, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_10

    .line 98
    iget-object v1, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 101
    .end local v0    # "message":Ljava/lang/String;
    :cond_10
    return-object v0
.end method
