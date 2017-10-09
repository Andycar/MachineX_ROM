.class Lcom/android/settings/favorite/FavoriteMenuList$3;
.super Ljava/lang/Object;
.source "FavoriteMenuList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/favorite/FavoriteMenuList;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    .line 215
    iput-object p1, p0, Lcom/android/settings/favorite/FavoriteMenuList$3;->this$0:Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$3;->this$0:Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-virtual {v0}, Lcom/android/settings/favorite/FavoriteMenuList;->saveState()V

    .line 219
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$3;->this$0:Lcom/android/settings/favorite/FavoriteMenuList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/favorite/FavoriteMenuList;->setResult(I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$3;->this$0:Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-virtual {v0}, Lcom/android/settings/favorite/FavoriteMenuList;->finish()V

    .line 221
    return-void
.end method
