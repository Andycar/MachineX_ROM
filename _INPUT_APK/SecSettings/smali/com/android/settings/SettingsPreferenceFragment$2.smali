.class Lcom/android/settings/SettingsPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsPreferenceFragment;

.field final synthetic val$highlight:Landroid/graphics/drawable/Drawable;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$2;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/SettingsPreferenceFragment$2;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/settings/SettingsPreferenceFragment$2;->val$position:I

    iput-object p4, p0, Lcom/android/settings/SettingsPreferenceFragment$2;->val$highlight:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$2;->val$listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/SettingsPreferenceFragment$2;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$2;->val$listView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/SettingsPreferenceFragment$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsPreferenceFragment$2$1;-><init>(Lcom/android/settings/SettingsPreferenceFragment$2;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    return-void
.end method
