.class Landroid/app/Fragment$FeatureContextMenuListener;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureContextMenuListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/app/Fragment;)V
    .registers 2

    .prologue
    .line 1619
    iput-object p1, p0, Landroid/app/Fragment$FeatureContextMenuListener;->this$0:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Fragment;Landroid/app/Fragment$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/app/Fragment;
    .param p2, "x1"    # Landroid/app/Fragment$1;

    .prologue
    .line 1619
    invoke-direct {p0, p1}, Landroid/app/Fragment$FeatureContextMenuListener;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1628
    iget-object v0, p0, Landroid/app/Fragment$FeatureContextMenuListener;->this$0:Landroid/app/Fragment;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1629
    iget-object v0, p0, Landroid/app/Fragment$FeatureContextMenuListener;->this$0:Landroid/app/Fragment;

    # getter for: Landroid/app/Fragment;->mInjectionManager:Landroid/app/im/InjectionManager;
    invoke-static {v0}, Landroid/app/Fragment;->access$100(Landroid/app/Fragment;)Landroid/app/im/InjectionManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1630
    iget-object v0, p0, Landroid/app/Fragment$FeatureContextMenuListener;->this$0:Landroid/app/Fragment;

    # getter for: Landroid/app/Fragment;->mInjectionManager:Landroid/app/im/InjectionManager;
    invoke-static {v0}, Landroid/app/Fragment;->access$100(Landroid/app/Fragment;)Landroid/app/im/InjectionManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Fragment$FeatureContextMenuListener;->this$0:Landroid/app/Fragment;

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/im/InjectionManager;->dispatchCreateContextMenu(Ljava/lang/Object;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Z)V

    .line 1632
    :cond_1c
    return-void
.end method
