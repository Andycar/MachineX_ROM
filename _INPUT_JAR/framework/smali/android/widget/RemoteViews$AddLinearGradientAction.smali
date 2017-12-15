.class Landroid/widget/RemoteViews$AddLinearGradientAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddLinearGradientAction"
.end annotation


# static fields
.field public static final TAG:I = 0x19


# instance fields
.field alphas:[F

.field angle:F

.field blendingOpacity:F

.field colors:[I

.field final methodName:Ljava/lang/String;

.field positions:[F

.field scale:F

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IFF[I[F[FF)V
    .registers 10
    .param p2, "viewId"    # I
    .param p3, "angle"    # F
    .param p4, "scale"    # F
    .param p5, "colors"    # [I
    .param p6, "alphas"    # [F
    .param p7, "positions"    # [F
    .param p8, "blendingOpacity"    # F

    .prologue
    .line 1809
    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1858
    const-string v0, "addLinearGradientTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->methodName:Ljava/lang/String;

    .line 1810
    iput p2, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->viewId:I

    .line 1811
    iput p3, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    .line 1812
    iput p4, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    .line 1813
    iput-object p5, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    .line 1814
    iput-object p6, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    .line 1815
    iput-object p7, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    .line 1816
    iput p8, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    .line 1817
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 4
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1819
    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1858
    const-string v0, "addLinearGradientTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->methodName:Ljava/lang/String;

    .line 1820
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->viewId:I

    .line 1821
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    .line 1822
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    .line 1823
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    .line 1824
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    .line 1825
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    .line 1826
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    .line 1827
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 11
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1842
    iget v1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1843
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_b

    .line 1845
    :goto_a
    return-void

    .line 1844
    :cond_b
    iget v1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    iget v2, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    iget-object v3, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    iget-object v4, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    iget-object v5, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    iget v6, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->addLinearGradientTextEffect(FF[I[F[FF)I

    goto :goto_a
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1848
    const-string v0, "AddLinearGradientAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1830
    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1831
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1832
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1833
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1834
    iget-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1835
    iget-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 1836
    iget-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 1837
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1838
    return-void
.end method
