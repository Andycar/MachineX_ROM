.class public Lcom/samsung/android/cocktailbar/CocktailHost;
.super Ljava/lang/Object;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;,
        Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;,
        Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;
    }
.end annotation


# static fields
.field static final HANDLE_COCKTAIL_CLOSE_CONTEXTUAL:I = 0x5

.field static final HANDLE_COCKTAIL_PARTIALLY_UPDATE:I = 0x2

.field static final HANDLE_COCKTAIL_REMOVE:I = 0x3

.field static final HANDLE_COCKTAIL_SEND_EXTRA_DATA:I = 0xc

.field static final HANDLE_COCKTAIL_SET_MODE:I = 0xb

.field static final HANDLE_COCKTAIL_SHOW:I = 0x4

.field static final HANDLE_COCKTAIL_SWITCH_DEFAULT:I = 0xa

.field static final HANDLE_COCKTAIL_TICKER_DISABLE:I = 0x9

.field static final HANDLE_COCKTAIL_UPDATE:I = 0x1

.field static final HANDLE_COCKTAIL_UPDATE_EXTRA:I = 0x8

.field static final HANDLE_COCKTAIL_UPDATE_TOOL_LAUNCHER:I = 0x7

.field static final HANDLE_COCKTAIL_VIEW_DATA_CHANGED:I = 0x6

.field static final HANDLE_NOTIFY_KEYGUARD_STATE:I = 0x64

.field static final HANDLE_NOTIFY_SCREEN_TURNED_ON:I = 0x66

.field static final HANDLE_NOTIFY_WAKEUP_STATE:I = 0x65

.field static sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

.field static final sServiceLock:Ljava/lang/Object;


# instance fields
.field mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

.field mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailHost;->sServiceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbackListener"    # Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;-><init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbackListener"    # Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    invoke-direct {v0, p0}, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;-><init>(Lcom/samsung/android/cocktailbar/CocktailHost;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    .line 243
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContext:Landroid/content/Context;

    .line 244
    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    .line 245
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;-><init>(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mHandler:Landroid/os/Handler;

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailHost;->bindService()V

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cocktailbar/CocktailHost;ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/widget/RemoteViews;I)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/widget/RemoteViews;
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/cocktailbar/CocktailHost;III)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->notifyWakeUpState(III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->setMode(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->setDisableTickerView(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/cocktailbar/CocktailHost;ILcom/samsung/android/cocktailbar/ICocktailBarShowCallback;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->notifyScreenTurnedOn(ILcom/samsung/android/cocktailbar/ICocktailBarShowCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->removeCocktail(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->showCocktail(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/cocktailbar/CocktailHost;III)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->closeContextualCocktail(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/cocktailbar/CocktailHost;III)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->viewDataChanged(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/cocktailbar/CocktailHost;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost;->updateToolLauncher(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->notifyKeyguardState(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/cocktailbar/CocktailHost;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost;->switchDefaultCocktail(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->sendExtraDataToCocktailBar(ILandroid/os/Bundle;)V

    return-void
.end method

.method private bindService()V
    .registers 6

    .prologue
    .line 250
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailHost;->sServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 251
    :try_start_3
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_13

    .line 252
    const-string v1, "CocktailBarService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 253
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1e

    .line 256
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_13
    :try_start_13
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_21
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    .line 260
    :goto_1c
    :try_start_1c
    monitor-exit v2

    .line 261
    return-void

    .line 260
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v1

    .line 257
    :catch_21
    move-exception v1

    goto :goto_1c
.end method

.method private closeContextualCocktail(III)V
    .registers 5
    .param p1, "cocktailId"    # I
    .param p2, "category"    # I
    .param p3, "userId"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onCloseContextualCocktail(III)V

    .line 300
    return-void
.end method

.method private notifyKeyguardState(II)V
    .registers 5
    .param p1, "enable"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    .line 311
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    if-ne p1, v0, :cond_9

    :goto_5
    invoke-interface {v1, v0, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onNotifyKeyguardState(ZI)V

    .line 312
    return-void

    .line 311
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private notifyScreenTurnedOn(ILcom/samsung/android/cocktailbar/ICocktailBarShowCallback;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "callback"    # Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onScreenTurnedOn(Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;I)V

    .line 320
    return-void
.end method

.method private notifyWakeUpState(III)V
    .registers 6
    .param p1, "bEnable"    # I
    .param p2, "keyCode"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v0, 0x1

    .line 315
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    if-ne p1, v0, :cond_9

    :goto_5
    invoke-interface {v1, v0, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onNotifyWakeUpModeState(ZII)V

    .line 316
    return-void

    .line 315
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    .registers 5
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "userId"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onPartiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V

    .line 288
    return-void
.end method

.method private removeCocktail(II)V
    .registers 4
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onRemoveCocktail(II)V

    .line 292
    return-void
.end method

.method private sendExtraDataToCocktailBar(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "extraData"    # Landroid/os/Bundle;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSendExtraDataToCocktailBar(Landroid/os/Bundle;I)V

    .line 328
    return-void
.end method

.method private setDisableTickerView(II)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "userId"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSetDisableTickerView(II)V

    .line 336
    return-void
.end method

.method private setMode(II)V
    .registers 4
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSetMode(II)V

    .line 332
    return-void
.end method

.method private showCocktail(II)V
    .registers 4
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onShowCocktail(II)V

    .line 296
    return-void
.end method

.method private switchDefaultCocktail(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSwitchDefaultCocktail(I)V

    .line 324
    return-void
.end method

.method private updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .registers 5
    .param p1, "cocktailId"    # I
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p3, "userId"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onUpdateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 284
    return-void
.end method

.method private updateToolLauncher(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onUpdateToolLauncher(I)V

    .line 308
    return-void
.end method

.method private viewDataChanged(III)V
    .registers 5
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onViewDataChanged(III)V

    .line 304
    return-void
.end method


# virtual methods
.method public startListening()V
    .registers 9

    .prologue
    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v1, "cocktails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    :try_start_5
    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mPackageName:Ljava/lang/String;

    if-nez v5, :cond_11

    .line 269
    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mPackageName:Ljava/lang/String;

    .line 271
    :cond_11
    sget-object v5, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v7, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mPackageName:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;Ljava/util/List;)[I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1a} :catch_33

    move-result-object v4

    .line 276
    .local v4, "updatedIds":[I
    array-length v0, v4

    .line 277
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v0, :cond_3d

    .line 278
    aget v6, v4, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/cocktailbar/Cocktail;

    iget-object v7, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-direct {p0, v6, v5, v7}, Lcom/samsung/android/cocktailbar/CocktailHost;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 272
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "updatedIds":[I
    :catch_33
    move-exception v2

    .line 273
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "system server dead?"

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 280
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    .restart local v4    # "updatedIds":[I
    :cond_3d
    return-void
.end method
