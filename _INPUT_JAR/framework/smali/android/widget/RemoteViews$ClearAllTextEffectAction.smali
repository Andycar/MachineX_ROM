.class Landroid/widget/RemoteViews$ClearAllTextEffectAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearAllTextEffectAction"
.end annotation


# static fields
.field public static final TAG:I = 0x15


# instance fields
.field final methodName:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;I)V
    .registers 4
    .param p2, "viewId"    # I

    .prologue
    .line 1626
    iput-object p1, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1650
    const-string v0, "clearAllTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->methodName:Ljava/lang/String;

    .line 1627
    iput p2, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->viewId:I

    .line 1628
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 4
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1630
    iput-object p1, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1650
    const-string v0, "clearAllTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->methodName:Ljava/lang/String;

    .line 1631
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->viewId:I

    .line 1632
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1641
    iget v1, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1642
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_b

    .line 1644
    :goto_a
    return-void

    .line 1643
    :cond_b
    invoke-virtual {v0}, Landroid/widget/TextView;->clearAllTextEffect()V

    goto :goto_a
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1647
    const-string v0, "ClearAllTextEffectAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1635
    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1636
    iget v0, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1637
    return-void
.end method
