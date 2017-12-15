.class final Landroid/app/ContextImpl$85;
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
    .line 1054
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 1056
    const-string v2, "multiwindow_facade"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1057
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    move-result-object v1

    .line 1058
    .local v1, "service":Lcom/samsung/android/multiwindow/IMultiWindowFacade;
    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-direct {v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;-><init>(Lcom/samsung/android/multiwindow/IMultiWindowFacade;)V

    return-object v2
.end method
