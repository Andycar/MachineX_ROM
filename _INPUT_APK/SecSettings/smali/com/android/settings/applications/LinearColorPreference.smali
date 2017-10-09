.class public Lcom/android/settings/applications/LinearColorPreference;
.super Landroid/preference/Preference;
.source "LinearColorPreference.java"


# instance fields
.field mColoredRegions:I

.field mGreenColor:I

.field mGreenRatio:F

.field mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

.field mRedColor:I

.field mRedRatio:F

.field mYellowColor:I

.field mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 28
    const v0, -0x55afd0

    iput v0, p0, Lcom/android/settings/applications/LinearColorPreference;->mRedColor:I

    .line 29
    const v0, -0x5555d0

    iput v0, p0, Lcom/android/settings/applications/LinearColorPreference;->mYellowColor:I

    .line 30
    const v0, -0xcf55b0

    iput v0, p0, Lcom/android/settings/applications/LinearColorPreference;->mGreenColor:I

    .line 31
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/applications/LinearColorPreference;->mColoredRegions:I

    .line 36
    const v0, 0x7f040198

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LinearColorPreference;->setLayoutResource(I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 67
    const v1, 0x7f1003ac

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LinearColorBar;

    .line 69
    .local v0, "colors":Lcom/android/settings/applications/LinearColorBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->setShowIndicator(Z)V

    .line 70
    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->mRedColor:I

    iget v2, p0, Lcom/android/settings/applications/LinearColorPreference;->mYellowColor:I

    iget v3, p0, Lcom/android/settings/applications/LinearColorPreference;->mGreenColor:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->setColors(III)V

    .line 71
    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->mRedRatio:F

    iget v2, p0, Lcom/android/settings/applications/LinearColorPreference;->mYellowRatio:F

    iget v3, p0, Lcom/android/settings/applications/LinearColorPreference;->mGreenRatio:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 72
    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->mColoredRegions:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->setColoredRegions(I)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorPreference;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->setOnRegionTappedListener(Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;)V

    .line 74
    return-void
.end method

.method public setColoredRegions(I)V
    .locals 0
    .param p1, "regions"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/android/settings/applications/LinearColorPreference;->mColoredRegions:I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorPreference;->notifyChanged()V

    .line 61
    return-void
.end method

.method public setColors(III)V
    .locals 0
    .param p1, "red"    # I
    .param p2, "yellow"    # I
    .param p3, "green"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/settings/applications/LinearColorPreference;->mRedColor:I

    .line 48
    iput p2, p0, Lcom/android/settings/applications/LinearColorPreference;->mYellowColor:I

    .line 49
    iput p3, p0, Lcom/android/settings/applications/LinearColorPreference;->mGreenColor:I

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorPreference;->notifyChanged()V

    .line 51
    return-void
.end method

.method public setRatios(FFF)V
    .locals 0
    .param p1, "red"    # F
    .param p2, "yellow"    # F
    .param p3, "green"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/android/settings/applications/LinearColorPreference;->mRedRatio:F

    .line 41
    iput p2, p0, Lcom/android/settings/applications/LinearColorPreference;->mYellowRatio:F

    .line 42
    iput p3, p0, Lcom/android/settings/applications/LinearColorPreference;->mGreenRatio:F

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorPreference;->notifyChanged()V

    .line 44
    return-void
.end method
