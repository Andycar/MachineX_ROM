.class public interface abstract Landroid/app/im/feature/IOptionsMenu;
.super Ljava/lang/Object;
.source "IOptionsMenu.java"

# interfaces
.implements Landroid/app/im/feature/IInjection;


# static fields
.field public static final ON_CREATE:I = 0x1

.field public static final ON_PREPARE:I = 0x2

.field public static final ON_SELECTED:I = 0x3


# virtual methods
.method public abstract onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method
