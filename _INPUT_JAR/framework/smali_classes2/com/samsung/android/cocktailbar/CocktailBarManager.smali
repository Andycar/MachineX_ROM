.class public Lcom/samsung/android/cocktailbar/CocktailBarManager;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarShowDelegate;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$States;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$WindowTypes;
    }
.end annotation


# static fields
.field public static final ACTION_COCKTAIL_BAR_COCKTAIL_UNINSTALLED:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_COCKTAIL_UNINSTALLED"

.field public static final ACTION_COCKTAIL_BAR_WAKE_UP_STATE:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_WAKE_UP_STATE"

.field public static final ACTION_COCKTAIL_DISABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

.field public static final ACTION_COCKTAIL_DROPED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DROPED"

.field public static final ACTION_COCKTAIL_ENABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

.field public static final ACTION_COCKTAIL_UPDATE:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

.field public static final ACTION_COCKTAIL_VISIBILITY_CHANGED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x10000

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_CALLING:I = 0x10002

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_COMMAND:I = 0x10007

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_HEADSET:I = 0x10005

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_INCOMING_CALL:I = 0x10001

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_NOTIFICATION:I = 0x10004

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_SPEN:I = 0x10006

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_TICKER:I = 0x10003

.field public static final COCKTAIL_CATEGORY_GLOBAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_ALL:I = 0x9f

.field public static final COCKTAIL_DISPLAY_POLICY_GENERAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_INDEX_MODE:I = 0x10

.field public static final COCKTAIL_DISPLAY_POLICY_LOCKSCREEN:I = 0x2

.field public static final COCKTAIL_DISPLAY_POLICY_NOT_PROVISION:I = 0x80

.field public static final COCKTAIL_DISPLAY_POLICY_SCOVER:I = 0x4

.field public static final COCKTAIL_DISPLAY_POLICY_TABLE_MODE:I = 0x8

.field public static final COCKTAIL_VISIBILITY_HIDE:I = 0x2

.field public static final COCKTAIL_VISIBILITY_SHOW:I = 0x1

.field public static final EXTRA_COCKTAIL_BAR_WAKE_UP_STATE:Ljava/lang/String; = "cocktailbarWakeupState"

.field public static final EXTRA_COCKTAIL_ID:Ljava/lang/String; = "cocktailId"

.field public static final EXTRA_COCKTAIL_IDS:Ljava/lang/String; = "cocktailIds"

.field public static final EXTRA_COCKTAIL_PROVIDER:Ljava/lang/String; = "cocktailProvider"

.field public static final EXTRA_COCKTAIL_VISIBILITY:Ljava/lang/String; = "cocktailVisibility"

.field public static final EXTRA_DRAG_EVENT:Ljava/lang/String; = "com.samsung.android.intent.extra.DRAG_EVENT"

.field public static final INVALID_COCKTAIL_ID:I = 0x0

.field public static final META_DATA_COCKTAIL_PROVIDER:Ljava/lang/String; = "com.samsung.android.cocktail.provider"

.field static final TAG:Ljava/lang/String; = "CocktailBarManager"

.field public static final TYPE_WAKEUP_GESTURE_PICKUP:I = 0x1

.field public static final TYPE_WAKEUP_GESTURE_RUB:I = 0x2

.field static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarManager;",
            ">;>;"
        }
    .end annotation
.end field

.field static sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;


# instance fields
.field private final mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 220
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sManagerCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 253
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    .line 254
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sManagerCache:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 234
    :try_start_3
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v3, :cond_13

    .line 235
    const-string v3, "CocktailBarService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 236
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .line 239
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_13
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sManagerCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 240
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/cocktailbar/CocktailBarManager;>;"
    const/4 v2, 0x0

    .line 241
    .local v2, "result":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v1, :cond_24

    .line 242
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    check-cast v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .line 244
    .restart local v2    # "result":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :cond_24
    if-nez v2, :cond_35

    .line 245
    new-instance v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .end local v2    # "result":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    invoke-direct {v2, p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;-><init>(Landroid/content/Context;)V

    .line 246
    .restart local v2    # "result":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sManagerCache:Ljava/util/WeakHashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_35
    monitor-exit v4

    return-object v2

    .line 249
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/cocktailbar/CocktailBarManager;>;"
    .end local v2    # "result":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v3
.end method


# virtual methods
.method public activateCocktailBar()V
    .registers 4

    .prologue
    .line 854
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 862
    :goto_4
    return-void

    .line 858
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->activateCocktailBar()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 859
    :catch_b
    move-exception v0

    .line 860
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "connection"    # Landroid/os/IBinder;

    .prologue
    .line 546
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 554
    :goto_4
    return-void

    .line 550
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 551
    :catch_b
    move-exception v0

    .line 552
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public closeCocktail(II)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "catetory"    # I

    .prologue
    .line 365
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 373
    :goto_4
    return-void

    .line 369
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->closeCocktail(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 370
    :catch_b
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cocktailBarreboot()V
    .registers 4

    .prologue
    .line 810
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 818
    :goto_4
    return-void

    .line 814
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->cocktailBarreboot()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 815
    :catch_b
    move-exception v0

    .line 816
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cocktailBarshutdown()V
    .registers 4

    .prologue
    .line 799
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 807
    :goto_4
    return-void

    .line 803
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->cocktailBarshutdown()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 804
    :catch_b
    move-exception v0

    .line 805
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deactivateCocktailBar()V
    .registers 4

    .prologue
    .line 865
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 873
    :goto_4
    return-void

    .line 869
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->deactivateCocktailBar()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 870
    :catch_b
    move-exception v0

    .line 871
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAllCocktailIds()[I
    .registers 4

    .prologue
    .line 387
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_6

    .line 388
    const/4 v1, 0x0

    .line 391
    :goto_5
    return-object v1

    :cond_6
    :try_start_6
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getAllCocktailIds()[I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 392
    :catch_d
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktaiBarWakeUpState()Z
    .registers 4

    .prologue
    .line 696
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_6

    .line 697
    const/4 v1, 0x0

    .line 700
    :goto_5
    return v1

    :cond_6
    :try_start_6
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktaiBarWakeUpState()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 701
    :catch_d
    move-exception v0

    .line 702
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 5
    .param p1, "cocktailId"    # I

    .prologue
    .line 398
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_6

    .line 399
    const/4 v1, 0x0

    .line 402
    :goto_5
    return-object v1

    :cond_6
    :try_start_6
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 403
    :catch_d
    move-exception v0

    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailBarVisibility()I
    .registers 4

    .prologue
    .line 821
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_6

    .line 822
    const/4 v1, 0x2

    .line 825
    :goto_5
    return v1

    :cond_6
    :try_start_6
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarVisibility()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 826
    :catch_d
    move-exception v0

    .line 827
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailId(Landroid/content/ComponentName;)I
    .registers 5
    .param p1, "provider"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-eqz v1, :cond_6

    if-nez p1, :cond_8

    .line 259
    :cond_6
    const/4 v1, 0x0

    .line 262
    :goto_7
    return v1

    :cond_8
    :try_start_8
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailId(Landroid/content/ComponentName;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    goto :goto_7

    .line 263
    :catch_f
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailIds(Landroid/content/ComponentName;)[I
    .registers 6
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 269
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-eqz v2, :cond_7

    if-nez p1, :cond_d

    .line 270
    :cond_7
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 271
    .local v0, "cocktailIds":[I
    aput v3, v0, v3

    .line 275
    .end local v0    # "cocktailIds":[I
    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailIds(Landroid/content/ComponentName;)[I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    move-result-object v0

    goto :goto_c

    .line 276
    :catch_14
    move-exception v1

    .line 277
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CocktailBarService dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isAllowTransientBarCocktailBar()Z
    .registers 4

    .prologue
    .line 525
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_6

    .line 526
    const/4 v1, 0x0

    .line 529
    :goto_5
    return v1

    :cond_6
    :try_start_6
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isAllowTransientBarCocktailBar()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 530
    :catch_d
    move-exception v0

    .line 531
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isCocktailBarShifted()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 747
    const/4 v0, 0x0

    return v0
.end method

.method public isImmersiveMode()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 751
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v3, :cond_6

    .line 762
    :cond_5
    :goto_5
    return v2

    .line 755
    :cond_6
    :try_start_6
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getWindowType()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_11

    move-result v1

    .line 756
    .local v1, "windowType":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 757
    const/4 v2, 0x1

    goto :goto_5

    .line 759
    .end local v1    # "windowType":I
    :catch_11
    move-exception v0

    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CocktailBarService dead?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public notifyCocktailViewDataChanged(II)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I

    .prologue
    .line 376
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 384
    :goto_4
    return-void

    .line 380
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailViewDataChanged(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 381
    :catch_b
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyCocktailVisibiltyChanged(II)V
    .registers 8
    .param p1, "cocktailId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 497
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 508
    :goto_4
    return-void

    .line 500
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 502
    .local v2, "identityToken":J
    :try_start_9
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailVisibiltyChanged(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_12
    .catchall {:try_start_9 .. :try_end_e} :catchall_1b

    .line 506
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .line 503
    :catch_12
    move-exception v0

    .line 504
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1b

    .line 506
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1b
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public notifyKeyguardState(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 475
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 483
    :goto_4
    return-void

    .line 479
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyKeyguardState(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 480
    :catch_b
    move-exception v0

    .line 481
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onScreenTurnedOn(Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;)V
    .registers 5
    .param p1, "showListener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;

    .prologue
    .line 710
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-eqz v1, :cond_18

    .line 712
    :try_start_4
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    new-instance v2, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarShowDelegate;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarShowDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->onScreenTurnedOn(Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    .line 721
    :cond_e
    :goto_e
    return-void

    .line 713
    :catch_f
    move-exception v0

    .line 714
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 717
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    if-eqz p1, :cond_e

    .line 718
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;->onShown(Landroid/os/IBinder;)V

    goto :goto_e
.end method

.method public partiallyUpdateCocktail(ILandroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 343
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 351
    :goto_4
    return-void

    .line 347
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->partiallyUpdateCocktail(Landroid/widget/RemoteViews;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 348
    :catch_b
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;)V
    .registers 11
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    .prologue
    .line 920
    sget-object v6, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v6, :cond_5

    .line 951
    :goto_4
    return-void

    .line 923
    :cond_5
    if-nez p1, :cond_10

    .line 924
    const-string v6, "CocktailBarManager"

    const-string/jumbo v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 927
    :cond_10
    iget-object v7, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v7

    .line 928
    const/4 v3, 0x0

    .line 929
    .local v3, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_14
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 930
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 931
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    .line 932
    .local v5, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_5d

    move-result v6

    if-eqz v6, :cond_1a

    .line 933
    move-object v3, v5

    move-object v4, v3

    .line 937
    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .end local v5    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .local v4, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :goto_32
    if-nez v4, :cond_6d

    .line 938
    :try_start_34
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    const/4 v6, 0x0

    invoke-direct {v3, p0, p1, v6}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;Landroid/os/Handler;)V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_6a

    .line 939
    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_3a
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    :goto_3f
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_5d

    .line 943
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v3, :cond_5b

    if-eqz v0, :cond_5b

    .line 945
    :try_start_56
    sget-object v6, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v6, v3, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5b} :catch_60
    .catchall {:try_start_56 .. :try_end_5b} :catchall_5d

    .line 950
    :cond_5b
    :goto_5b
    :try_start_5b
    monitor-exit v7

    goto :goto_4

    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :catchall_5d
    move-exception v6

    :goto_5e
    monitor-exit v7
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_5d

    throw v6

    .line 946
    .restart local v0    # "cm":Landroid/content/ComponentName;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :catch_60
    move-exception v1

    .line 947
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_61
    const-string v6, "CocktailBarManager"

    const-string/jumbo v8, "registerListener : RemoteException : "

    invoke-static {v6, v8, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_5d

    goto :goto_5b

    .line 950
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :catchall_6a
    move-exception v6

    move-object v3, v4

    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    goto :goto_5e

    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :cond_6d
    move-object v3, v4

    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    goto :goto_3f

    :cond_6f
    move-object v4, v3

    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    goto :goto_32
.end method

.method public removeCocktailUIService()V
    .registers 4

    .prologue
    .line 788
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 796
    :goto_4
    return-void

    .line 792
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->removeCocktailUIService()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 793
    :catch_b
    move-exception v0

    .line 794
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToDisableCocktail(I)Z
    .registers 5
    .param p1, "cocktailId"    # I

    .prologue
    .line 420
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_6

    .line 421
    const/4 v1, 0x0

    .line 424
    :goto_5
    return v1

    :cond_6
    :try_start_6
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToDisableCocktail(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 425
    :catch_d
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToDisableCocktailByCategory(I)Z
    .registers 5
    .param p1, "category"    # I

    .prologue
    .line 442
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_6

    .line 443
    const/4 v1, 0x0

    .line 446
    :goto_5
    return v1

    :cond_6
    :try_start_6
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToDisableCocktailByCategory(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 447
    :catch_d
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToDisableCocktailByPrivateMode(Ljava/lang/String;)Z
    .registers 5
    .param p1, "privateMode"    # Ljava/lang/String;

    .prologue
    .line 464
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_6

    .line 465
    const/4 v1, 0x0

    .line 468
    :goto_5
    return v1

    :cond_6
    :try_start_6
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToDisableCocktailByPrivateMode(Ljava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 469
    :catch_d
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToUpdateCocktail(I)Z
    .registers 5
    .param p1, "cocktailId"    # I

    .prologue
    .line 409
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_6

    .line 410
    const/4 v1, 0x0

    .line 413
    :goto_5
    return v1

    :cond_6
    :try_start_6
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToUpdateCocktail(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 414
    :catch_d
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToUpdateCocktailByCategory(I)Z
    .registers 5
    .param p1, "category"    # I

    .prologue
    .line 431
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_6

    .line 432
    const/4 v1, 0x0

    .line 435
    :goto_5
    return v1

    :cond_6
    :try_start_6
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToUpdateCocktailByCategory(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 436
    :catch_d
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToUpdateCocktailByPrivateMode(Ljava/lang/String;)Z
    .registers 5
    .param p1, "privateMode"    # Ljava/lang/String;

    .prologue
    .line 453
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_6

    .line 454
    const/4 v1, 0x0

    .line 457
    :goto_5
    return v1

    :cond_6
    :try_start_6
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToUpdateCocktailByPrivateMode(Ljava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 458
    :catch_d
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendDragEvent(ILandroid/view/DragEvent;)V
    .registers 8
    .param p1, "cocktailId"    # I
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 511
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 522
    :goto_4
    return-void

    .line 514
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 516
    .local v2, "identityToken":J
    :try_start_9
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->sendDragEvent(ILandroid/view/DragEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_12
    .catchall {:try_start_9 .. :try_end_e} :catchall_1b

    .line 520
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .line 517
    :catch_12
    move-exception v0

    .line 518
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1b

    .line 520
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1b
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extraData"    # Landroid/os/Bundle;

    .prologue
    .line 777
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 785
    :goto_4
    return-void

    .line 781
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 782
    :catch_b
    move-exception v0

    .line 783
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCocktailBarStatus(ZZ)V
    .registers 6
    .param p1, "shift"    # Z
    .param p2, "transparent"    # Z

    .prologue
    .line 898
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 906
    :goto_4
    return-void

    .line 902
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailBarStatus(ZZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 903
    :catch_b
    move-exception v0

    .line 904
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDisableTickerView(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 486
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 494
    :goto_4
    return-void

    .line 490
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setDisableTickerView(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 491
    :catch_b
    move-exception v0

    .line 492
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showAndLockCocktailBar()V
    .registers 4

    .prologue
    .line 832
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 840
    :goto_4
    return-void

    .line 836
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->showAndLockCocktailBar()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 837
    :catch_b
    move-exception v0

    .line 838
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showCocktail(I)V
    .registers 5
    .param p1, "cocktailId"    # I

    .prologue
    .line 354
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 362
    :goto_4
    return-void

    .line 358
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->showCocktail(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 359
    :catch_b
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public switchDefaultCocktail()V
    .registers 4

    .prologue
    .line 766
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 774
    :goto_4
    return-void

    .line 770
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->switchDefaultCocktail()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 771
    :catch_b
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 566
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 574
    :goto_4
    return-void

    .line 570
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 571
    :catch_b
    move-exception v0

    .line 572
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unlockCocktailBar(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    .line 843
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 851
    :goto_4
    return-void

    .line 847
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unlockCocktailBar(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 848
    :catch_b
    move-exception v0

    .line 849
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;)V
    .registers 9
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    .prologue
    .line 954
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v4, :cond_5

    .line 981
    :goto_4
    return-void

    .line 957
    :cond_5
    if-nez p1, :cond_10

    .line 958
    const-string v4, "CocktailBarManager"

    const-string/jumbo v5, "unregisterListener : listener is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 961
    :cond_10
    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v5

    .line 962
    const/4 v2, 0x0

    .line 963
    .local v2, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_14
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 964
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 965
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    .line 966
    .local v3, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 967
    move-object v2, v3

    .line 971
    .end local v3    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :cond_31
    if-nez v2, :cond_40

    .line 972
    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterListener : cannot find the listener"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    monitor-exit v5

    goto :goto_4

    .line 980
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :catchall_3d
    move-exception v4

    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_3d

    throw v4

    .line 976
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :cond_40
    :try_start_40
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v4, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_45} :catch_47
    .catchall {:try_start_40 .. :try_end_45} :catchall_3d

    .line 980
    :goto_45
    :try_start_45
    monitor-exit v5

    goto :goto_4

    .line 977
    :catch_47
    move-exception v0

    .line 978
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterListener : RemoteException : "

    invoke-static {v4, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_3d

    goto :goto_45
.end method

.method public updateCocktail(IIIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 12
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "icon"    # I
    .param p5, "contentView"    # Landroid/widget/RemoteViews;
    .param p6, "footerView"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v3, :cond_5

    .line 319
    :goto_4
    return-void

    .line 307
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 309
    .local v1, "configuration":Landroid/content/res/Configuration;
    :try_start_f
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 315
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v3, v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_31} :catch_32

    goto :goto_4

    .line 316
    .end local v0    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catch_32
    move-exception v2

    .line 317
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCocktail(IIIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "icon"    # I
    .param p5, "contentView"    # Landroid/widget/RemoteViews;
    .param p6, "footerView"    # Landroid/widget/RemoteViews;
    .param p7, "contentInfo"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 324
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v3, :cond_5

    .line 340
    :goto_4
    return-void

    .line 327
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 329
    .local v1, "configuration":Landroid/content/res/Configuration;
    :try_start_f
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p7}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 336
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v3, v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_35} :catch_36

    goto :goto_4

    .line 337
    .end local v0    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catch_36
    move-exception v2

    .line 338
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCocktail(IIILandroid/widget/RemoteViews;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "contentInfo"    # Landroid/os/Bundle;

    .prologue
    .line 283
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v3, :cond_5

    .line 299
    :goto_4
    return-void

    .line 286
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 288
    .local v1, "configuration":Landroid/content/res/Configuration;
    :try_start_f
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 295
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v3, v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_35} :catch_36

    goto :goto_4

    .line 296
    .end local v0    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catch_36
    move-exception v2

    .line 297
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCocktailBarPosition(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 909
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 917
    :goto_4
    return-void

    .line 913
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarPosition(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 914
    :catch_b
    move-exception v0

    .line 915
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateCocktailBarStateFromSystem(I)V
    .registers 5
    .param p1, "windowType"    # I

    .prologue
    .line 887
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 895
    :goto_4
    return-void

    .line 891
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarStateFromSystem(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 892
    :catch_b
    move-exception v0

    .line 893
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateCocktailBarVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    .line 876
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 884
    :goto_4
    return-void

    .line 880
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarVisibility(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 881
    :catch_b
    move-exception v0

    .line 882
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateLongpressGesture(Z)V
    .registers 5
    .param p1, "bEnable"    # Z

    .prologue
    .line 611
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 619
    :goto_4
    return-void

    .line 615
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateLongpressGesture(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 616
    :catch_b
    move-exception v0

    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSysfsBarLength(I)V
    .registers 5
    .param p1, "barLength"    # I

    .prologue
    .line 647
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 655
    :goto_4
    return-void

    .line 651
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateSysfsBarLength(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 652
    :catch_b
    move-exception v0

    .line 653
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSysfsDeadZone(I)V
    .registers 5
    .param p1, "deadzone"    # I

    .prologue
    .line 628
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 636
    :goto_4
    return-void

    .line 632
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateSysfsDeadZone(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 633
    :catch_b
    move-exception v0

    .line 634
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSysfsGripDisable(Z)V
    .registers 5
    .param p1, "bDisable"    # Z

    .prologue
    .line 663
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 671
    :goto_4
    return-void

    .line 667
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateSysfsGripDisable(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 668
    :catch_b
    move-exception v0

    .line 669
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateWakeupGesture(IZ)V
    .registers 6
    .param p1, "gestureType"    # I
    .param p2, "bEnable"    # Z

    .prologue
    .line 594
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 602
    :goto_4
    return-void

    .line 598
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateWakeupGesture(IZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 599
    :catch_b
    move-exception v0

    .line 600
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public wakeupCocktailBar(ZI)V
    .registers 6
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I

    .prologue
    .line 680
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_5

    .line 688
    :goto_4
    return-void

    .line 684
    :cond_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->wakeupCocktailBar(ZI)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 685
    :catch_b
    move-exception v0

    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
