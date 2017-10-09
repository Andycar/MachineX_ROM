.class Lcom/android/settings/GridSettings$ViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GridSettings$ViewPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/GridSettings$ViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings$ViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter$1;->this$1:Lcom/android/settings/GridSettings$ViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1206
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter$1;->this$1:Lcom/android/settings/GridSettings$ViewPagerAdapter;

    iget-object v2, v2, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object v3, v0

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v2 .. v7}, Lcom/android/settings/GridSettings;->access$1200(Lcom/android/settings/GridSettings;Landroid/widget/ListView;Landroid/view/View;IJ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    :goto_0
    return-void

    .line 1207
    :catch_0
    move-exception v8

    .line 1208
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v8}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method
