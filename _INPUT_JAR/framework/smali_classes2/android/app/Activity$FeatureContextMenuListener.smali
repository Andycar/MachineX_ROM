.class Landroid/app/Activity$FeatureContextMenuListener;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureContextMenuListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 3340
    iput-object p1, p0, Landroid/app/Activity$FeatureContextMenuListener;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroid/app/Activity$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/app/Activity;
    .param p2, "x1"    # Landroid/app/Activity$1;

    .prologue
    .line 3340
    invoke-direct {p0, p1}, Landroid/app/Activity$FeatureContextMenuListener;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 3350
    const-string v0, "Activity"

    const-string v1, "onCreateContextMenu dispatchCreateContextMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    iget-object v0, p0, Landroid/app/Activity$FeatureContextMenuListener;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 3352
    iget-object v0, p0, Landroid/app/Activity$FeatureContextMenuListener;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;
    invoke-static {v0}, Landroid/app/Activity;->access$300(Landroid/app/Activity;)Landroid/app/im/InjectionManager;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 3353
    iget-object v0, p0, Landroid/app/Activity$FeatureContextMenuListener;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;
    invoke-static {v0}, Landroid/app/Activity;->access$300(Landroid/app/Activity;)Landroid/app/im/InjectionManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity$FeatureContextMenuListener;->this$0:Landroid/app/Activity;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/im/InjectionManager;->dispatchCreateContextMenu(Ljava/lang/Object;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Z)V

    .line 3355
    :cond_23
    return-void
.end method
