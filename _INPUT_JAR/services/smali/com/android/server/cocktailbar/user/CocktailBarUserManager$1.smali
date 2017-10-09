.class Lcom/android/server/cocktailbar/user/CocktailBarUserManager$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "CocktailBarUserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->registerUserSwitchObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/user/CocktailBarUserManager;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/user/CocktailBarUserManager;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager$1;->this$0:Lcom/android/server/cocktailbar/user/CocktailBarUserManager;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .registers 2
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 10
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    const/16 v6, 0x64

    .line 46
    # getter for: Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchUser user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v3, 0x0

    .line 49
    .local v3, "currentUserType":I
    const/4 v4, 0x0

    .line 50
    .local v4, "newUserType":I
    const/4 v5, 0x0

    .line 51
    .local v5, "modeId":I
    iget-object v0, p0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager$1;->this$0:Lcom/android/server/cocktailbar/user/CocktailBarUserManager;

    # getter for: Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->access$100(Lcom/android/server/cocktailbar/user/CocktailBarUserManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->isExistKioskContainers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 52
    const/4 v3, 0x0

    .line 53
    const/16 v4, 0x100

    .line 54
    const/4 v5, 0x3

    .line 68
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager$1;->this$0:Lcom/android/server/cocktailbar/user/CocktailBarUserManager;

    # getter for: Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;
    invoke-static {v0}, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->access$300(Lcom/android/server/cocktailbar/user/CocktailBarUserManager;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager$1;->this$0:Lcom/android/server/cocktailbar/user/CocktailBarUserManager;

    # getter for: Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->access$200(Lcom/android/server/cocktailbar/user/CocktailBarUserManager;)I

    move-result v1

    move v2, p1

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSwitchUser(IIIIILandroid/os/IRemoteCallback;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager$1;->this$0:Lcom/android/server/cocktailbar/user/CocktailBarUserManager;

    # setter for: Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->mCurrentUserId:I
    invoke-static {v0, p1}, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->access$202(Lcom/android/server/cocktailbar/user/CocktailBarUserManager;I)I

    .line 71
    return-void

    .line 55
    :cond_47
    if-lt p1, v6, :cond_59

    .line 56
    iget-object v0, p0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager$1;->this$0:Lcom/android/server/cocktailbar/user/CocktailBarUserManager;

    # getter for: Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->access$200(Lcom/android/server/cocktailbar/user/CocktailBarUserManager;)I

    move-result v0

    if-ge v0, v6, :cond_56

    .line 57
    const/4 v3, 0x1

    .line 61
    :goto_52
    const/16 v4, 0x100

    .line 62
    const/4 v5, 0x2

    goto :goto_30

    .line 59
    :cond_56
    const/16 v3, 0x100

    goto :goto_52

    .line 63
    :cond_59
    iget-object v0, p0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager$1;->this$0:Lcom/android/server/cocktailbar/user/CocktailBarUserManager;

    # getter for: Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->access$200(Lcom/android/server/cocktailbar/user/CocktailBarUserManager;)I

    move-result v0

    if-lt v0, v6, :cond_30

    if-ge p1, v6, :cond_30

    .line 64
    const/16 v3, 0x100

    .line 65
    const/4 v4, 0x1

    .line 66
    const/4 v5, 0x1

    goto :goto_30
.end method
