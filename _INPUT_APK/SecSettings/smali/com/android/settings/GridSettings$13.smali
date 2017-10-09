.class Lcom/android/settings/GridSettings$13;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GridSettings;->onResume()V
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
    .line 1430
    iput-object p1, p0, Lcom/android/settings/GridSettings$13;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/android/settings/GridSettings$13;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v0}, Lcom/android/settings/GridSettings;->invalidateHeaders()V

    .line 1434
    return-void
.end method
