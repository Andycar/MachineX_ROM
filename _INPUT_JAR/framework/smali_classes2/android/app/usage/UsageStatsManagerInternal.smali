.class public abstract Landroid/app/usage/UsageStatsManagerInternal;
.super Ljava/lang/Object;
.source "UsageStatsManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract prepareShutdown()V
.end method

.method public abstract reportConfigurationChange(Landroid/content/res/Configuration;I)V
.end method

.method public abstract reportEvent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
.end method
