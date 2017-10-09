.class public Lcom/android/settings/Settings$SettingsEmergencyActivity;
.super Lcom/android/settings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsEmergencyActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6446
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6451
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-virtual {p0}, Lcom/android/settings/Settings$SettingsEmergencyActivity;->onIsMultiPane()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6453
    const v1, 0x7f0700e4

    invoke-virtual {p0, v1, p1}, Lcom/android/settings/Settings$SettingsEmergencyActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 6454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 6455
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iget-wide v2, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f100677

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iget-wide v2, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f10067f

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 6457
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6458
    add-int/lit8 v0, v0, -0x1

    .line 6454
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6461
    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings/Settings;->access$600(Lcom/android/settings/Settings;Ljava/util/List;)V

    .line 6465
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 6463
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/Settings;->onBuildHeaders(Ljava/util/List;)V

    goto :goto_1
.end method
