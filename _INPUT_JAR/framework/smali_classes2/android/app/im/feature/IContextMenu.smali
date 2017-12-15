.class public interface abstract Landroid/app/im/feature/IContextMenu;
.super Ljava/lang/Object;
.source "IContextMenu.java"

# interfaces
.implements Landroid/app/im/feature/IInjection;


# static fields
.field public static final ON_CREATE:I = 0x1

.field public static final ON_SELECTED:I = 0x2


# virtual methods
.method public abstract onContextItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end method
