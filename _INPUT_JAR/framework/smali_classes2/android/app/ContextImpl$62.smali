.class final Landroid/app/ContextImpl$62;
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
    .line 874
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 876
    const-string v2, "ABTPersistenceService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 877
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPersistence;

    move-result-object v1

    .line 878
    .local v1, "service":Lcom/absolute/android/persistence/IABTPersistence;
    new-instance v2, Lcom/absolute/android/persistence/ABTPersistenceManager;

    invoke-direct {v2, v1}, Lcom/absolute/android/persistence/ABTPersistenceManager;-><init>(Lcom/absolute/android/persistence/IABTPersistence;)V

    return-object v2
.end method
