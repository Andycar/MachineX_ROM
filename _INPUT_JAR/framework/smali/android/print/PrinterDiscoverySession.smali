.class public final Landroid/print/PrinterDiscoverySession;
.super Ljava/lang/Object;
.source "PrinterDiscoverySession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;,
        Landroid/print/PrinterDiscoverySession$SessionHandler;,
        Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrinterDiscoverySession"

.field private static final MSG_PRINTERS_ADDED:I = 0x1

.field private static final MSG_PRINTERS_REMOVED:I = 0x2


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsPrinterDiscoveryStarted:Z

.field private mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

.field private mObserver:Landroid/print/IPrinterDiscoveryObserver;

.field private final mPrintManager:Landroid/print/IPrintManager;

.field private final mPrinters:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method constructor <init>(Landroid/print/IPrintManager;Landroid/content/Context;I)V
    .registers 8
    .param p1, "printManager"    # Landroid/print/IPrintManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    .line 64
    iput-object p1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    .line 65
    iput p3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    .line 66
    new-instance v1, Landroid/print/PrinterDiscoverySession$SessionHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/print/PrinterDiscoverySession$SessionHandler;-><init>(Landroid/print/PrinterDiscoverySession;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/print/PrinterDiscoverySession;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v1, Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;

    invoke-direct {v1, p0}, Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;-><init>(Landroid/print/PrinterDiscoverySession;)V

    iput-object v1, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    .line 69
    :try_start_20
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/print/IPrintManager;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_29} :catch_2a

    .line 73
    :goto_29
    return-void

    .line 70
    :catch_2a
    move-exception v0

    .line 71
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Error creating printer discovery session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method static synthetic access$000(Landroid/print/PrinterDiscoverySession;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Landroid/print/PrinterDiscoverySession;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/print/PrinterDiscoverySession;->handlePrintersAdded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Landroid/print/PrinterDiscoverySession;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Landroid/print/PrinterDiscoverySession;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/print/PrinterDiscoverySession;->handlePrintersRemoved(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Landroid/print/PrinterDiscoverySession;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/print/PrinterDiscoverySession;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private destroyNoCheck()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->stopPrinterDiscovery()V

    .line 187
    :try_start_4
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/print/IPrintManager;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_15
    .catchall {:try_start_4 .. :try_end_d} :catchall_25

    .line 191
    iput-object v4, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    .line 192
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 194
    :goto_14
    return-void

    .line 188
    :catch_15
    move-exception v0

    .line 189
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_16
    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Error destroying printer discovery session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_25

    .line 191
    iput-object v4, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    .line 192
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_14

    .line 191
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_25
    move-exception v1

    iput-object v4, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    .line 192
    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    throw v1
.end method

.method private handlePrintersAdded(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 234
    :goto_6
    return-void

    .line 202
    :cond_7
    iget-object v7, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 203
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 204
    .local v5, "printerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v5, :cond_28

    .line 205
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    .line 206
    .local v4, "printer":Landroid/print/PrinterInfo;
    iget-object v7, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 208
    .end local v4    # "printer":Landroid/print/PrinterInfo;
    :cond_28
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->notifyOnPrintersChanged()V

    goto :goto_6

    .line 213
    .end local v1    # "i":I
    .end local v5    # "printerCount":I
    :cond_2c
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 215
    .local v0, "addedPrintersMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/print/PrinterId;Landroid/print/PrinterInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 216
    .restart local v5    # "printerCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_36
    if-ge v1, v5, :cond_48

    .line 217
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    .line 218
    .restart local v4    # "printer":Landroid/print/PrinterInfo;
    invoke-virtual {v4}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v7

    invoke-virtual {v0, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 222
    .end local v4    # "printer":Landroid/print/PrinterInfo;
    :cond_48
    iget-object v7, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_52
    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    .line 223
    .local v3, "oldPrinterId":Landroid/print/PrinterId;
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/print/PrinterInfo;

    .line 224
    .local v6, "updatedPrinter":Landroid/print/PrinterInfo;
    if-eqz v6, :cond_52

    .line 225
    iget-object v7, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v3, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 230
    .end local v3    # "oldPrinterId":Landroid/print/PrinterId;
    .end local v6    # "updatedPrinter":Landroid/print/PrinterInfo;
    :cond_6c
    iget-object v7, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 233
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->notifyOnPrintersChanged()V

    goto :goto_6
.end method

.method private handlePrintersRemoved(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 251
    :cond_6
    :goto_6
    return-void

    .line 240
    :cond_7
    const/4 v1, 0x0

    .line 241
    .local v1, "printersChanged":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 242
    .local v3, "removedPrinterIdCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v3, :cond_21

    .line 243
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 244
    .local v2, "removedPrinterId":Landroid/print/PrinterId;
    iget-object v4, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 245
    const/4 v1, 0x1

    .line 242
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 248
    .end local v2    # "removedPrinterId":Landroid/print/PrinterId;
    :cond_21
    if-eqz v1, :cond_6

    .line 249
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->notifyOnPrintersChanged()V

    goto :goto_6
.end method

.method private isDestroyedNoCheck()Z
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private notifyOnPrintersChanged()V
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    if-eqz v0, :cond_9

    .line 255
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    invoke-interface {v0}, Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;->onPrintersChanged()V

    .line 257
    :cond_9
    return-void
.end method

.method private static throwIfNotCalledOnMainThread()V
    .registers 2

    .prologue
    .line 260
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_13

    .line 261
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "must be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_13
    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 3

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 143
    const-string v0, "PrinterDiscoverySession"

    const-string v1, "Ignoring destroy - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_d
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->destroyNoCheck()V

    .line 146
    return-void
.end method

.method protected final finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyedNoCheck()Z

    move-result v0

    if-nez v0, :cond_10

    .line 174
    const-string v0, "PrinterDiscoverySession"

    const-string v1, "Destroying leaked printer discovery session"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->destroyNoCheck()V

    .line 177
    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 178
    return-void
.end method

.method public final getPrinters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 150
    const-string v0, "PrinterDiscoverySession"

    const-string v1, "Ignoring get printers - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 153
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_11
.end method

.method public final isDestroyed()Z
    .registers 2

    .prologue
    .line 157
    invoke-static {}, Landroid/print/PrinterDiscoverySession;->throwIfNotCalledOnMainThread()V

    .line 158
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyedNoCheck()Z

    move-result v0

    return v0
.end method

.method public final isPrinterDiscoveryStarted()Z
    .registers 2

    .prologue
    .line 162
    invoke-static {}, Landroid/print/PrinterDiscoverySession;->throwIfNotCalledOnMainThread()V

    .line 163
    iget-boolean v0, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    return v0
.end method

.method public final setOnPrintersChangeListener(Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    .prologue
    .line 167
    invoke-static {}, Landroid/print/PrinterDiscoverySession;->throwIfNotCalledOnMainThread()V

    .line 168
    iput-object p1, p0, Landroid/print/PrinterDiscoverySession;->mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    .line 169
    return-void
.end method

.method public final startPrinterDiscovery(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 77
    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Ignoring start printers discovery - session destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_d
    :goto_d
    return-void

    .line 80
    :cond_e
    iget-boolean v1, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    if-nez v1, :cond_d

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    .line 83
    :try_start_15
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v1, v2, p1, v3}, Landroid/print/IPrintManager;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_d

    .line 84
    :catch_1f
    move-exception v0

    .line 85
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Error starting printer discovery"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public final startPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 5
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 107
    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Ignoring start printer state tracking - session destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_d
    return-void

    .line 111
    :cond_e
    :try_start_e
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v1, p1, v2}, Landroid/print/IPrintManager;->startPrinterStateTracking(Landroid/print/PrinterId;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_d

    .line 112
    :catch_16
    move-exception v0

    .line 113
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Error starting printer state tracking"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public final stopPrinterDiscovery()V
    .registers 5

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 92
    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Ignoring stop printers discovery - session destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_d
    :goto_d
    return-void

    .line 95
    :cond_e
    iget-boolean v1, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    if-eqz v1, :cond_d

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    .line 98
    :try_start_15
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/print/IPrintManager;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_d

    .line 99
    :catch_1f
    move-exception v0

    .line 100
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Error stopping printer discovery"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public final stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 5
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 119
    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Ignoring stop printer state tracking - session destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_d
    return-void

    .line 123
    :cond_e
    :try_start_e
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v1, p1, v2}, Landroid/print/IPrintManager;->stopPrinterStateTracking(Landroid/print/PrinterId;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_d

    .line 124
    :catch_16
    move-exception v0

    .line 125
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Error stopping printer state tracking"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public final validatePrinters(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 131
    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Ignoring validate printers - session destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_d
    return-void

    .line 135
    :cond_e
    :try_start_e
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v1, p1, v2}, Landroid/print/IPrintManager;->validatePrinters(Ljava/util/List;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_d

    .line 136
    :catch_16
    move-exception v0

    .line 137
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Error validating printers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method
