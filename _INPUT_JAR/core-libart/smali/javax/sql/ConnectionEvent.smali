.class public Ljavax/sql/ConnectionEvent;
.super Ljava/util/EventObject;
.source "ConnectionEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x433690c9b56a83b2L


# instance fields
.field private ex:Ljava/sql/SQLException;


# direct methods
.method public constructor <init>(Ljavax/sql/PooledConnection;)V
    .registers 2
    .param p1, "theConnection"    # Ljavax/sql/PooledConnection;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljavax/sql/PooledConnection;Ljava/sql/SQLException;)V
    .registers 3
    .param p1, "theConnection"    # Ljavax/sql/PooledConnection;
    .param p2, "theException"    # Ljava/sql/SQLException;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 61
    iput-object p2, p0, Ljavax/sql/ConnectionEvent;->ex:Ljava/sql/SQLException;

    .line 62
    return-void
.end method


# virtual methods
.method public getSQLException()Ljava/sql/SQLException;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Ljavax/sql/ConnectionEvent;->ex:Ljava/sql/SQLException;

    return-object v0
.end method
