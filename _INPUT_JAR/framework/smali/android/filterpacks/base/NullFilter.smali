.class public Landroid/filterpacks/base/NullFilter;
.super Landroid/filterfw/core/Filter;
.source "NullFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 39
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/NullFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 40
    return-void
.end method

.method public setupPorts()V
    .registers 2

    .prologue
    .line 34
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/NullFilter;->addInputPort(Ljava/lang/String;)V

    .line 35
    return-void
.end method
