.class public Landroid/hardware/scontext/provider/miscprovider/MiscProvider;
.super Landroid/hardware/scontext/provider/Provider;
.source "MiscProvider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/Provider;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method public add()V
    .registers 1

    .prologue
    .line 47
    return-void
.end method

.method public handleDiedBinder()V
    .registers 1

    .prologue
    .line 126
    return-void
.end method

.method public onBinderDied()V
    .registers 1

    .prologue
    .line 92
    return-void
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method

.method public requestToUpdate()V
    .registers 1

    .prologue
    .line 103
    return-void
.end method

.method public setAttribute(ILandroid/hardware/scontext/SContextAttribute;)V
    .registers 3
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    .line 70
    return-void
.end method

.method public setReferenceData(I[B)Z
    .registers 4
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method
