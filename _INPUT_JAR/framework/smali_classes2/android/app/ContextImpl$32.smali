.class final Landroid/app/ContextImpl$32;
.super Landroid/app/ContextImpl$StaticServiceFetcher;
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
    .line 631
    invoke-direct {p0}, Landroid/app/ContextImpl$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createStaticService()Ljava/lang/Object;
    .registers 10

    .prologue
    .line 633
    const-string/jumbo v5, "sec_location"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 634
    .local v0, "b":Landroid/os/IBinder;
    const/4 v4, 0x0

    .line 636
    .local v4, "sLocationManager":Ljava/lang/Object;
    :try_start_8
    const-string v5, "com.samsung.location.SLocationLoader"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 637
    .local v3, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getSLocationManager"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 639
    .local v2, "getSLocationManager":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_26} :catch_28

    move-result-object v4

    .line 643
    .end local v2    # "getSLocationManager":Ljava/lang/reflect/Method;
    .end local v3    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "sLocationManager":Ljava/lang/Object;
    :goto_27
    return-object v4

    .line 640
    .restart local v4    # "sLocationManager":Ljava/lang/Object;
    :catch_28
    move-exception v1

    .line 641
    .local v1, "e":Ljava/lang/Throwable;
    const-string v5, "ContextImpl"

    const-string v6, "Getting SLocation has been failed, error or not support"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method
