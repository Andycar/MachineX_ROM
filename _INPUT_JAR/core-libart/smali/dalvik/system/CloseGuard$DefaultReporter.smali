.class final Ldalvik/system/CloseGuard$DefaultReporter;
.super Ljava/lang/Object;
.source "CloseGuard.java"

# interfaces
.implements Ldalvik/system/CloseGuard$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/CloseGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultReporter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldalvik/system/CloseGuard$1;)V
    .registers 2
    .param p1, "x0"    # Ldalvik/system/CloseGuard$1;

    .prologue
    .line 225
    invoke-direct {p0}, Ldalvik/system/CloseGuard$DefaultReporter;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "allocationSite"    # Ljava/lang/Throwable;

    .prologue
    .line 227
    invoke-static {p1, p2}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    return-void
.end method
