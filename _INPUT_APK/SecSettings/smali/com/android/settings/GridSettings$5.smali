.class Lcom/android/settings/GridSettings$5;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GridSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GridSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/settings/GridSettings$5;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 790
    if-nez p1, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/settings/GridSettings$5;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v0, v1}, Lcom/android/settings/GridSettings;->access$702(Lcom/android/settings/GridSettings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;

    .line 792
    iget-object v0, p0, Lcom/android/settings/GridSettings$5;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v0, v1}, Lcom/android/settings/GridSettings;->access$802(Lcom/android/settings/GridSettings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;

    .line 793
    iget-object v0, p0, Lcom/android/settings/GridSettings$5;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v0}, Lcom/android/settings/GridSettings;->invalidateHeaders()V

    .line 795
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 786
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/settings/GridSettings$5;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v0}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 782
    return-void
.end method
