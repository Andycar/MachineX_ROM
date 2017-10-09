.class public interface abstract Lcom/samsung/appdisabler/IAppDisablerService;
.super Ljava/lang/Object;
.source "IAppDisablerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/appdisabler/IAppDisablerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract checkPackages()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
