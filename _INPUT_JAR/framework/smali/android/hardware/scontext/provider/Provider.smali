.class public abstract Landroid/hardware/scontext/provider/Provider;
.super Ljava/lang/Object;
.source "Provider.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public abstract add()V
.end method

.method public abstract handleDiedBinder()V
.end method

.method public abstract onBinderDied()V
.end method

.method public abstract parse(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract remove()V
.end method

.method public abstract requestToUpdate()V
.end method

.method public abstract setAttribute(ILandroid/hardware/scontext/SContextAttribute;)V
.end method

.method public abstract setReferenceData(I[B)Z
.end method
