.class Landroid/webkit/WebViewFactory$RelroFileCreator;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelroFileCreator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 336
    const/4 v2, 0x0

    .line 337
    .local v2, "result":Z
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v1

    .line 339
    .local v1, "is64Bit":Z
    :try_start_a
    array-length v3, p0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_18

    const/4 v3, 0x0

    aget-object v3, p0, v3

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    aget-object v3, p0, v3

    if-nez v3, :cond_51

    .line 340
    :cond_18
    const-string v3, "WebViewFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid RelroFileCreator args: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_e1

    .line 357
    :try_start_34
    # invokes: Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;
    invoke-static {}, Landroid/webkit/WebViewFactory;->access$000()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted(ZZ)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_48

    .line 362
    :goto_3b
    if-nez v2, :cond_44

    const-string v3, "WebViewFactory"

    const-string v4, "failed to create relro file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_44
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 367
    :goto_47
    return-void

    .line 358
    :catch_48
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WebViewFactory"

    const-string v4, "error notifying update service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_51
    :try_start_51
    const-string v3, "WebViewFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RelroFileCreator (64bit = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 32-bit lib: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 64-bit lib: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    # getter for: Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z
    invoke-static {}, Landroid/webkit/WebViewFactory;->access$100()Z

    move-result v3

    if-nez v3, :cond_b3

    .line 346
    const-string v3, "WebViewFactory"

    const-string v4, "can\'t create relro file; address space not reserved"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_51 .. :try_end_96} :catchall_e1

    .line 357
    :try_start_96
    # invokes: Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;
    invoke-static {}, Landroid/webkit/WebViewFactory;->access$000()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted(ZZ)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_9d} :catch_aa

    .line 362
    :goto_9d
    if-nez v2, :cond_a6

    const-string v3, "WebViewFactory"

    const-string v4, "failed to create relro file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_a6
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto :goto_47

    .line 358
    :catch_aa
    move-exception v0

    .line 359
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "WebViewFactory"

    const-string v4, "error notifying update service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9d

    .line 349
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_b3
    const/4 v3, 0x0

    :try_start_b4
    aget-object v3, p0, v3

    const/4 v4, 0x1

    aget-object v4, p0, v4

    const-string v5, "/data/misc/shared_relro/libwebviewchromium32.relro"

    const-string v6, "/data/misc/shared_relro/libwebviewchromium64.relro"

    # invokes: Landroid/webkit/WebViewFactory;->nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v4, v5, v6}, Landroid/webkit/WebViewFactory;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_c0
    .catchall {:try_start_b4 .. :try_end_c0} :catchall_e1

    move-result v2

    .line 353
    if-eqz v2, :cond_c3

    .line 357
    :cond_c3
    :try_start_c3
    # invokes: Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;
    invoke-static {}, Landroid/webkit/WebViewFactory;->access$000()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted(ZZ)V
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_ca} :catch_d8

    .line 362
    :goto_ca
    if-nez v2, :cond_d3

    const-string v3, "WebViewFactory"

    const-string v4, "failed to create relro file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_d3
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_47

    .line 358
    :catch_d8
    move-exception v0

    .line 359
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "WebViewFactory"

    const-string v4, "error notifying update service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ca

    .line 356
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_e1
    move-exception v3

    .line 357
    :try_start_e2
    # invokes: Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;
    invoke-static {}, Landroid/webkit/WebViewFactory;->access$000()Landroid/webkit/IWebViewUpdateService;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted(ZZ)V
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_e9} :catch_f6

    .line 362
    :goto_e9
    if-nez v2, :cond_f2

    const-string v4, "WebViewFactory"

    const-string v5, "failed to create relro file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_f2
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    throw v3

    .line 358
    :catch_f6
    move-exception v0

    .line 359
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "WebViewFactory"

    const-string v5, "error notifying update service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e9
.end method
