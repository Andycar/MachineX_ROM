.class public interface abstract Landroid/location/IExerciseLocationProvider;
.super Ljava/lang/Object;
.source "IExerciseLocationProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IExerciseLocationProvider$Stub;
    }
.end annotation


# virtual methods
.method public abstract addExerciseLocationListener(Landroid/location/IExerciseLocationListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeExerciseLocationListener(Landroid/location/IExerciseLocationListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
