.class final Ljava/util/concurrent/Executors$2;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/Executors;->callable(Ljava/security/PrivilegedExceptionAction;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Ljava/security/PrivilegedExceptionAction;


# direct methods
.method constructor <init>(Ljava/security/PrivilegedExceptionAction;)V
    .registers 2

    .prologue
    .line 387
    iput-object p1, p0, Ljava/util/concurrent/Executors$2;->val$action:Ljava/security/PrivilegedExceptionAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Ljava/util/concurrent/Executors$2;->val$action:Ljava/security/PrivilegedExceptionAction;

    invoke-interface {v0}, Ljava/security/PrivilegedExceptionAction;->run()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
