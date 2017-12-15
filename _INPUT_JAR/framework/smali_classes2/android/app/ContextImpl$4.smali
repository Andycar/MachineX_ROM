.class final Landroid/app/ContextImpl$4;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 467
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 469
    new-instance v0, Landroid/view/accessibility/CaptioningManager;

    invoke-direct {v0, p1}, Landroid/view/accessibility/CaptioningManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
