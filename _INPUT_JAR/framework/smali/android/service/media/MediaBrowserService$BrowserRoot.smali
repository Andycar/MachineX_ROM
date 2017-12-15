.class public final Landroid/service/media/MediaBrowserService$BrowserRoot;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrowserRoot"
.end annotation


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mRootId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    if-nez p1, :cond_d

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_d
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$BrowserRoot;->mRootId:Ljava/lang/String;

    .line 459
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$BrowserRoot;->mExtras:Landroid/os/Bundle;

    .line 460
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$BrowserRoot;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRootId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$BrowserRoot;->mRootId:Ljava/lang/String;

    return-object v0
.end method
