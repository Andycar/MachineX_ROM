.class Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
.super Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback$Stub;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CocktailBarStateListenerDelegate"
.end annotation


# static fields
.field private static final MSG_LISTEN_COCKTAIL_BAR_STATE_CHANGE:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

.field final synthetic this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;Landroid/os/Handler;)V
    .registers 6
    .param p2, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 991
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .line 992
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback$Stub;-><init>()V

    .line 993
    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    .line 994
    if-nez p3, :cond_17

    iget-object v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 996
    .local v0, "looper":Landroid/os/Looper;
    :goto_f
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cocktailbar/CocktailBarManager;)V

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 1022
    return-void

    .line 994
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_17
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_f
.end method

.method static synthetic access$000(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    .prologue
    .line 983
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    .registers 2

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    return-object v0
.end method

.method public onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .registers 4
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1033
    return-void
.end method
