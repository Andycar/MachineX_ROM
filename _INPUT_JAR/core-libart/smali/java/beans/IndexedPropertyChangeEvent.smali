.class public Ljava/beans/IndexedPropertyChangeEvent;
.super Ljava/beans/PropertyChangeEvent;
.source "IndexedPropertyChangeEvent.java"


# static fields
.field private static final serialVersionUID:J = -0x471ad2af2ec1996L


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 6
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;
    .param p5, "index"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    iput p5, p0, Ljava/beans/IndexedPropertyChangeEvent;->index:I

    .line 54
    return-void
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Ljava/beans/IndexedPropertyChangeEvent;->index:I

    return v0
.end method
