.class Lcom/android/settings/favorite/FavoriteMenuList$2;
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
    .line 207
    iput-object p1, p0, Lcom/android/settings/favorite/FavoriteMenuList$2;->this$0:Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$2;->this$0:Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-virtual {v0}, Lcom/android/settings/favorite/FavoriteMenuList;->finish()V

    .line 211
    return-void
.end method
