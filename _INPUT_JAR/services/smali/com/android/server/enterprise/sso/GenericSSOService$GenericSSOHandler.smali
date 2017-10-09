.class final Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;
.super Landroid/os/Handler;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenericSSOHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/GenericSSOService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    .line 263
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 264
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 267
    if-eqz p1, :cond_e

    .line 268
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 269
    .local v5, "userId":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 270
    .local v2, "configData":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 271
    .local v1, "callback":Landroid/app/enterprise/sso/IGenericSSOCallback;
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_54

    .line 306
    .end local v1    # "callback":Landroid/app/enterprise/sso/IGenericSSOCallback;
    .end local v2    # "configData":Landroid/os/Bundle;
    .end local v5    # "userId":I
    :cond_e
    :goto_e
    return-void

    .line 274
    .restart local v1    # "callback":Landroid/app/enterprise/sso/IGenericSSOCallback;
    .restart local v2    # "configData":Landroid/os/Bundle;
    .restart local v5    # "userId":I
    :pswitch_f
    :try_start_f
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, Landroid/app/enterprise/sso/IGenericSSOCallback;

    move-object v1, v0

    .line 275
    iget-object v7, p0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenFromConfigData(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    invoke-static {v7, v5, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$000(Lcom/android/server/enterprise/sso/GenericSSOService;ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v4

    .line 277
    .local v4, "tokenInfo":Landroid/app/enterprise/sso/TokenInfo;
    if-eqz v1, :cond_e

    .line 278
    if-eqz v4, :cond_2c

    .line 279
    invoke-interface {v1, v4}, Landroid/app/enterprise/sso/IGenericSSOCallback;->tokenInfoSuccess(Landroid/app/enterprise/sso/TokenInfo;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_22} :catch_23

    goto :goto_e

    .line 283
    .end local v4    # "tokenInfo":Landroid/app/enterprise/sso/TokenInfo;
    :catch_23
    move-exception v3

    .line 284
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "GenericSSOService"

    const-string v8, "In handleMessage: RemoteException"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 281
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v4    # "tokenInfo":Landroid/app/enterprise/sso/TokenInfo;
    :cond_2c
    const/4 v7, -0x1

    :try_start_2d
    invoke-interface {v1, v7}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_23

    goto :goto_e

    .line 289
    .end local v4    # "tokenInfo":Landroid/app/enterprise/sso/TokenInfo;
    :pswitch_31
    :try_start_31
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, Landroid/app/enterprise/sso/IGenericSSOCallback;

    move-object v1, v0

    .line 290
    iget-object v7, p0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v7, v5, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->acquireUserInfo(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/UserInfo;

    move-result-object v6

    .line 292
    .local v6, "userInfo":Landroid/app/enterprise/sso/UserInfo;
    if-eqz v1, :cond_e

    .line 293
    if-eqz v6, :cond_4e

    .line 294
    invoke-interface {v1, v6}, Landroid/app/enterprise/sso/IGenericSSOCallback;->userInfoSuccess(Landroid/app/enterprise/sso/UserInfo;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_44} :catch_45

    goto :goto_e

    .line 298
    .end local v6    # "userInfo":Landroid/app/enterprise/sso/UserInfo;
    :catch_45
    move-exception v3

    .line 299
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v7, "GenericSSOService"

    const-string v8, "In handleMessage: RemoteException"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 296
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v6    # "userInfo":Landroid/app/enterprise/sso/UserInfo;
    :cond_4e
    const/4 v7, -0x1

    :try_start_4f
    invoke-interface {v1, v7}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_52} :catch_45

    goto :goto_e

    .line 271
    nop

    :pswitch_data_54
    .packed-switch 0x2
        :pswitch_f
        :pswitch_31
    .end packed-switch
.end method
