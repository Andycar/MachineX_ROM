.class public Ljava/lang/TypeNotPresentException;
.super Ljava/lang/RuntimeException;
.source "TypeNotPresentException.java"


# static fields
.field private static final serialVersionUID:J = -0x46cb27489add30e0L


# instance fields
.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not present"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iput-object p1, p0, Ljava/lang/TypeNotPresentException;->typeName:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public typeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Ljava/lang/TypeNotPresentException;->typeName:Ljava/lang/String;

    return-object v0
.end method
