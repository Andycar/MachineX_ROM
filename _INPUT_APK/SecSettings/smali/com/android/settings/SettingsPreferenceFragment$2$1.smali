.class Lcom/android/settings/SettingsPreferenceFragment$2$1;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsPreferenceFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsPreferenceFragment$2;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsPreferenceFragment$2;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$2$1;->this$1:Lcom/android/settings/SettingsPreferenceFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 370
    iget-object v3, p0, Lcom/android/settings/SettingsPreferenceFragment$2$1;->this$1:Lcom/android/settings/SettingsPreferenceFragment$2;

    iget-object v3, v3, Lcom/android/settings/SettingsPreferenceFragment$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 371
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 372
    .local v0, "centerX":I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 373
    .local v1, "centerY":I
    iget-object v3, p0, Lcom/android/settings/SettingsPreferenceFragment$2$1;->this$1:Lcom/android/settings/SettingsPreferenceFragment$2;

    iget-object v3, v3, Lcom/android/settings/SettingsPreferenceFragment$2;->val$highlight:Landroid/graphics/drawable/Drawable;

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 374
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 375
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 376
    return-void
.end method
