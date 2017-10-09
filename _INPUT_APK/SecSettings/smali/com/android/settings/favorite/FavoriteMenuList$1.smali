.class Lcom/android/settings/favorite/FavoriteMenuList$1;
.super Ljava/lang/Object;
.source "FavoriteMenuList.java"

# interfaces
.implements Lcom/android/settings/favorite/FavoriteActionModeCallback$OnDoneListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/favorite/FavoriteMenuList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/favorite/FavoriteMenuList;


# direct methods
.method constructor <init>(Lcom/android/settings/favorite/FavoriteMenuList;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/favorite/FavoriteMenuList$1;->this$0:Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public save()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$1;->this$0:Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-virtual {v0}, Lcom/android/settings/favorite/FavoriteMenuList;->saveState()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$1;->this$0:Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-virtual {v0}, Lcom/android/settings/favorite/FavoriteMenuList;->finish()V

    .line 123
    return-void
.end method
