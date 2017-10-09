.class public Lcom/android/settings/DeviceHealthActivity$DeviceHealthDataUsageSummary;
.super Lcom/android/settings/DataUsageSummary;
.source "DeviceHealthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceHealthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceHealthDataUsageSummary"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/DataUsageSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v5

    .line 254
    .local v5, "view":Landroid/view/View;
    const v6, 0x102000a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 255
    .local v0, "list":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 256
    .local v4, "res":Landroid/content/res/Resources;
    const v6, 0x7f0f00e3

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 257
    .local v1, "paddingBottom":I
    const v6, 0x7f0f02aa

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 258
    .local v2, "paddingLeft":I
    const v6, 0x7f0f02ab

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 259
    .local v3, "paddingRight":I
    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6, v3, v1}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    .line 260
    return-object v5
.end method
