.class final Landroid/app/ContextImpl$88;
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
    .line 1102
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 15
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 1104
    const-string v9, "mDNIe"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1106
    .local v1, "b":Landroid/os/IBinder;
    const/4 v6, 0x0

    .line 1107
    .local v6, "mDNIeManager":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1108
    .local v3, "imDNIeManager":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 1109
    .local v0, "asInterface":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 1112
    .local v8, "mDNIeManagerConstructor":Ljava/lang/reflect/Constructor;
    :try_start_a
    const-string v9, "ContextImpl"

    const-string v10, "load MdnieManager"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const-string v9, "com.samsung.android.mdnie.MdnieManager"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 1114
    .local v7, "mDNIeManagerClass":Ljava/lang/Class;
    const-string v9, "com.samsung.android.mdnie.IMdnieManager"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1115
    .local v4, "imDNIeManagerClass":Ljava/lang/Class;
    const-string v9, "com.samsung.android.mdnie.IMdnieManager$Stub"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1117
    .local v5, "imDNIeManagerStubClass":Ljava/lang/Class;
    const-string v9, "asInterface"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/os/IBinder;

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1118
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-virtual {v0, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1120
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 1122
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4e} :catch_50

    move-result-object v6

    .line 1125
    .end local v3    # "imDNIeManager":Ljava/lang/Object;
    .end local v4    # "imDNIeManagerClass":Ljava/lang/Class;
    .end local v5    # "imDNIeManagerStubClass":Ljava/lang/Class;
    .end local v6    # "mDNIeManager":Ljava/lang/Object;
    .end local v7    # "mDNIeManagerClass":Ljava/lang/Class;
    :goto_4f
    return-object v6

    .line 1123
    .restart local v6    # "mDNIeManager":Ljava/lang/Object;
    :catch_50
    move-exception v2

    .line 1124
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "ContextImpl"

    const-string v10, "Could not load MdnieManager"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1125
    const/4 v6, 0x0

    goto :goto_4f
.end method
